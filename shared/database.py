import os
import config;
import pymongo;
import motor.motor_asyncio
client = pymongo.MongoClient(config.mongo_uri)
db = client.travel