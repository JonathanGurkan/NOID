#macro FRAME_RATE 60 
#macro ROOM_START r_tutorial_2

#macro RESOLUTION_W 1280
#macro RESOLUTION_H 720
#macro TRANSITION_SPEED 0.04
#macro OUT 0
#macro IN 1

enum PLAYERSTATE{
    FREE,
    ATTACK,
    ATTACK_COMBO,
    ATTACK_BOW,
    ATTACK_STRONG,
    DASH
}

enum ENEMYSTATE{
    IDLE,
    ALERT,
    DEATH,
    MOVE,
    ATTACK,
    EVADE,
    FALL
}