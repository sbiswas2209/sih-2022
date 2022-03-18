from base64 import encode
from pprint import pprint
from src.auth.model import User
from shared.database import db
from fastapi.encoders import jsonable_encoder
from fastapi import status


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


async def login_user(email: str, password: str):
    data = db["users"].find_one({"email": email})
    if data == None:
        return {
            "success": False,
            "message": "User not found",
            "code": status.HTTP_404_NOT_FOUND
        }
    if data["password"] == password:
        return {
            "success": True,
            "message": "User Logged In",
            "data": {
                "role": data["role"],
                "_id": str(data["_id"])
            },
            "code": status.HTTP_200_OK
        }
    else:
        return {
            "success": False,
            "message": "Password Mismatch",
            "code": status.HTTP_401_UNAUTHORIZED
        }
