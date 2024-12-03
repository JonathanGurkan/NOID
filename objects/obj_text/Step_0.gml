lerp_progress += (1 - lerp_progress) / 50;
text_progress += global.text_speed;

x1 = lerp(x1, x1_target, lerp_progress);
x2 = lerp(x2, x2_target, lerp_progress);

if (keyboard_check_pressed(ord("E")))
{
    var _messageLength = string_length(message);
    if (text_progress >= _messageLength)
    {
        instance_destroy();
        if (instance_exists(obj_text_queue)){
            
            with(obj_text_queue) ticket--;
            
        }
    }
    else
    {
        if (text_progress > 2)
        {
            text_progress = _messageLength;
        }
    }
}