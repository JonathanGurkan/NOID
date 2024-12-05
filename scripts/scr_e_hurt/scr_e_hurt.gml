function scr_e_hurt(){
var _damage = argument0;
  
    hp -= _damage;
    flash = 3;
    
    if(hp > 0){
        state = ENEMYSTATE.HURT
        hit_now = true;
    }
    else{
        state = ENEMYSTATE.DIE
    }
}