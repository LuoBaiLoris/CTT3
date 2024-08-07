
event_inherited();
if (keyboard_check(vk_up) && keyboard_check(vk_right))
    dir = 45
else if (keyboard_check(vk_up) && keyboard_check(vk_left))
    dir = 135
else if (keyboard_check(vk_down) && keyboard_check(vk_left))
    dir = 225
else if (keyboard_check(vk_down) && keyboard_check(vk_right))
    dir = -45
else if keyboard_check(vk_down)
    dir = -90
else if keyboard_check(vk_up)
    dir = 90
else if keyboard_check(vk_left)
    dir = 180
else if keyboard_check(vk_right)
    dir = 0
if (Battle_GetState() == (3 << 0) && moveable && mode != 1 && dir != -1)
{
    var SPD = Player_GetSpdTotal()
    var SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
    repeat (SPD * 15)
    {
        if ((!(position_meeting(x, (y - (sprite_height / 2)), block))) && (!(position_meeting(x, (y + (sprite_height / 2)), block))) && (!(position_meeting((x - (sprite_width / 2)), y, block))) && (!(position_meeting((x + (sprite_width / 2)), y, block))))
        {
            x += lengthdir_x(0.1, dir)
            y += lengthdir_y(0.1, dir)
        }
    }
}
if (mode == 1)
{
    SPD = Player_GetSpdTotal()
    SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
    repeat (SPD * 15)
    {
        if Input_Check((0 << 0))
        {
            if (!(position_meeting(x, (y - (sprite_height / 2)), block)))
                y -= 0.1
        }
        if Input_Check((1 << 0))
        {
            if (!(position_meeting(x, (y + (sprite_height / 2)), block)))
                y += 0.1
        }
    }
}
