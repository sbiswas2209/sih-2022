from fastapi import *;
from src.auth.router import router as authRouter;
from src.path.router import router as pathRouter;
from src.path.router import router as ticketRouter;

router = APIRouter();

@router.get("/")
def root():
    return {"message": "API Routes"}

router.include_router(authRouter, prefix="/auth")
router.include_router(pathRouter, prefix="/path")
router.include_router(ticketRouter, prefix="/ticket")