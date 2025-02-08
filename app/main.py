from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello Welcome to DepOps v.2 prefct work great"}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
