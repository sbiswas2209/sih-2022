from fastapi import APIRouter;
from fastapi import status
import jsonpickle
from numpy import var
from src.path.controller import getRoute;
router = APIRouter();
@router.get("/getRoute", status_code=status.HTTP_200_OK)
async def getRouteRoute(source: str, destination: str):
    result = await getRoute(source, destination)
    print(result)
    return {
        "success": True,
        "data": result
    }