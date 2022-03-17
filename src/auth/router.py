from fastapi import APIRouter
from src.auth.controller import create_user

from src.auth.model import User
router = APIRouter()


@router.get("/auth")
def root():
    return {"message": "Auth Routes"}


@router.post("/signUp")
async def signUp(user: User):
    await create_user(user)
    return {
        "message": "User Created"
    }
