import os


from dotenv import load_dotenv;
load_dotenv()
mongo_uri = os.environ.get("MONGODB_URL")
jwt_secret = os.environ.get("JWT_SECRET")
salt_rounds = int(os.environ.get("SALT_ROUNDS"))
username = os.environ.get("NEO4J_USERNAME")
password = os.environ.get("NEO4J_PASSWORD")
neo4j_uri = os.environ.get("NEO4J_URI")