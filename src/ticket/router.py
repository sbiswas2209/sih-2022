from fastapi import APIRouter, status;
from src.ticket.model import BookTicketRequest;
router = APIRouter();
@router.post("/book", status_code=status.HTTP_201_CREATED)
async def bookTicket(body: BookTicketRequest, response):
    return {
        "success": True
    }