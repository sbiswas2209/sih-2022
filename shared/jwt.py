import jwt;
import config;
def generate(id:str):
    return jwt.encode({"_id": id}, config.jwt_secret, algorithm="HS256")