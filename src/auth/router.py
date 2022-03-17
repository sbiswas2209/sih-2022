from fastapi import APIRouter, Response
from shared.jwt import generate
from src.auth.controller import create_user, login_user
from fastapi import status;

from src.auth.model import User, UserLogin
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
    result["token"]=generate(result["data"], user.role)
    return result;

@router.post("/login", status_code=status.HTTP_200_OK)
async def signUp(user: UserLogin, response: Response):
    result = await login_user(user.email, user.password)
    if result["success"] == False:
        response.status_code=result["code"]
        return result;
    result["token"]=generate(result["data"]["_id"], result["data"]["role"])
    return result;