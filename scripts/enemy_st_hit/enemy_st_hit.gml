function enemy_st_hit (){
var _damage = argument0;
  
    hp -= _damage;
    flash = 3;
    
    if(hp > 0){
        state = ENEMYSTATE.HIT
        hit_now = true;
    }
    else{
        state = ENEMYSTATE.DEAD
    }
}