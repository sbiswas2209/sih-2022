from fastapi import *;
from src.auth.router import router as authRouter;

router = APIRouter();

@router.get("/")
def root():
    return {"message": "API Routes"}

router.include_router(authRouter, prefix="/auth")