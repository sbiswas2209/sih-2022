from fastapi import *;
from src.index import router as api_router;
app = FastAPI();
@app.get("/")
def root():
    return {"message": "SIH 2022"}

app.include_router(router=api_router, prefix="/api")