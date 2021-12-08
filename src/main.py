from typing import Optional

from fastapi import FastAPI

# Initializing fastapi
app = FastAPI()


@app.get("/")
def hello_world():
    return {"Hello": "World"}
