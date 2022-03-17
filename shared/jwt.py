import jwt;
import config;
def generate(id:str, role: str):
    return jwt.encode({"_id": id, "role": role}, config.jwt_secret, algorithm="HS256")