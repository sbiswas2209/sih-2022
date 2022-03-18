from datetime import datetime
from time import time
from numpy import double
from pydantic import BaseModel


class BookTicketRequest(BaseModel):
    destination_id: int
    source_id: int
    customer_id: str

class Ticket(BaseModel):
    cost: double
    customer_id: str
    destination: str
    source: str
    timestamp: str
    def __init__(__pydantic_self__, **data) -> None:
        __pydantic_self__.timestamp=str(datetime.timestamp())
        super().__init__(**data)