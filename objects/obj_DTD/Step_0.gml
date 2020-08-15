
if (distance_to_object(obj_player) < (16*1))
{
    instance_create_depth(obj_player.x,obj_player.y,-400,obj_fadein);
    room_goto(dest);
    with(obj_player){
    x = 0+other.destx;
    y = 0+other.desty;
	
    
    
    }
};


