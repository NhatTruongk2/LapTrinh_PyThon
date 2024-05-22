from fastapi import FastAPI, HTTPException
from fastapi.responses import JSONResponse
import requests

app = FastAPI()

# Thay thế bằng API key của bạn
API_KEY = "4a3b125d91394ac29415607a44de0123"

# ID của giải Ngoại hạng Anh
premier_league_id = 2021

# URL cơ bản của API của Football Data
BASE_URL = "https://api.football-data.org/v2"

@app.get("/", response_class=JSONResponse)
async def get_top_scorers():
    url = f"{BASE_URL}/competitions/{premier_league_id}/scorers"
    headers = {"X-Auth-Token": API_KEY}
    response = requests.get(url, headers=headers)
    
    if response.status_code == 200:
        scorers_data = response.json()
        scorers = scorers_data.get("scorers", [])
        
        top_scorers = []
        for scorer in scorers:
            player_info = {
                "PlayerName": scorer.get("player", {}).get("name"),
                "NumberOfGoals": scorer.get("numberOfGoals"),
                "Position": scorer.get("player", {}).get("position"),
                "Nationality": scorer.get("player", {}).get("nationality"),
                "DateOfBirth": scorer.get("player", {}).get("dateOfBirth"),
                "TeamName": scorer.get("team", {}).get("name")
            }
            top_scorers.append(player_info)
        
        return top_scorers
    else:
        raise HTTPException(status_code=500, detail="Không thể lấy thông tin về các cầu thủ ghi bàn.")

