from fastapi import APIRouter, Response
from shared.jwt import generate
from src.auth.controller import create_user
from fastapi import status;

from src.auth.model import User
router = APIRouter()


@router.get("/auth")
def root():
    return {"message": "Auth Routes"}


@router.post("/signUp", status_code=status.HTTP_201_CREATED)
async def signUp(user: User, response: Response):
    result = await create_user(user)
    if result["success"] == False:
        response.status_code=result["code"]
        return result;
    result["token"]=generate(result["data"])
    return result;
