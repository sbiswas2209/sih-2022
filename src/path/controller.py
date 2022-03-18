from neo4j import GraphDatabase
import neo4j
from config import neo4j_uri, username, password;


async def getRoute(source: str, destination: str):
    driver = GraphDatabase.driver(neo4j_uri, auth=(username, password))

    def getRouteData(tx, source, destination):
        path=[]
        print(source)
        print(destination)
        res = tx.run(
            "MATCH path = (:Destination {name:$source})-[Link*]->(:Destination {name: $destination}) RETURN path",
            source=source,
            destination=destination
        )
        for record in res:
            path.append(record)
        return path

    with driver.session() as session:
        result = session.read_transaction(getRouteData, source, destination)

    driver.close()
    return result