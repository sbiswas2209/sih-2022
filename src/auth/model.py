from typing import Literal
from pydantic import BaseModel


class User(BaseModel):
    name: str
    phone: str
    email: str
    aadhar_number: str
    role: Literal["admin", "user", "collector"]
    password: str

class UserLogin(BaseModel):
    email: str
    password: str