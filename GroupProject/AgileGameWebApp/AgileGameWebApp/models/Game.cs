using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AgileGameWebApp.models
{
    public class Game
    {
        public int gameID { get; set; }
        public String gameName { get; set; }
        public String gameType { get; set; }
        public double gameRating { get; set; }
        public String gameDesc { get; set; }

        public Game(int gameID, String gameName, String gameType, float gameRating)
        {
            this.gameID = gameID;
            this.gameName = gameName;
            this.gameType = gameType;
            this.gameRating = gameRating;
        }

        public Game(String gameName)
        {
            this.gameName = gameName;
        }

        public Game()
        {

        }
    }
}