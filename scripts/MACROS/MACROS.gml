#macro FRAME_RATE 60 
#macro ROOM_START r_main_menu

#macro RESOLUTION_W 1280
#macro RESOLUTION_H 720
#macro TRANSITION_SPEED 0.04
#macro OUT 0
#macro IN 1

enum PLAYERSTATE{
    FREE,
    ATTACK_1,
    ATTACK_2,
    ATTACK_3,
    PARRY,
    DASH,
	HURT
}

enum ENEMYSTATE{
    IDLE,
    ALERT,
    DEATH,
    MOVE,
    ATTACK,
    EVADE,
    FALL,
    SHOOT,
    DODGE,
	DASH,
    SEARCH
}