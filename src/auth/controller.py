import json
from pprint import pprint
from src.auth.model import User;
from shared.database import db;
from fastapi.encoders import jsonable_encoder;
from fastapi import status;
async def create_user(user: User):
    data = db["users"].find({"aadhar_number": user.aadhar_number})
    pprint(data)
    if data.count() != 0:
        return {
            "success": False,
            "message": "User already exists",
            "code": status.HTTP_409_CONFLICT
        }
    new_user = db["users"].insert_one(jsonable_encoder(user))
    return {
        "success": True,
        "message": "User created",
        "data": str(new_user.inserted_id),
        "code": status.HTTP_201_CREATED
    }
