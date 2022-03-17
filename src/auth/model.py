from pydantic import BaseModel


class User(BaseModel):
    name: str
    phone: str
    email: str
    aadhar_number: str