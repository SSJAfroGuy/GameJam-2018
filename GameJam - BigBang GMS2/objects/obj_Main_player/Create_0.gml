// @Desctriptiion - This is the main player object
Shoot = false; //Determines if the player had shot a bullet - sets a timer for 15 frames.
XAxis = 0; //Hotizontal movment
YAxis = 0; //Verticle movement
Speed = 20; //Speed of movment
State = State_IDLE; //Variable that keeps a track of what state the object is in
Player_HP = 100; //Gives the player 100HP - 100 attacks can hit you before gameover (unless some bullets do more)
Player_Attack = 1; //Sets the damage of the players bullet 
killed = false;

//Creates a 2D array
Direction = DOWN;
Action = IDLE;

View[RIGHT, IDLE] = Main_Player_Speed
View[RIGHT, MOVE] = Main_Player_Attack//Change to be animated

View[UP, IDLE] = Main_Player_Speed
View[UP, MOVE] = Main_Player_Attack//Change to be animated

View[LEFT, IDLE] = Main_Player_Speed
View[LEFT, MOVE] = Main_Player_Attack //Change to be animated

View[DOWN, IDLE] = Main_Player_Speed
View[DOWN, MOVE] = Main_Player_Attack //Change to be animated