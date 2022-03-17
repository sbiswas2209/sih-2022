import json
from src.auth.model import User;
from shared.database import database;
async def create_user(user: User):
    new_user = await database["users"].insert_one(json.dumps(user))
    return str(new_user._id)
