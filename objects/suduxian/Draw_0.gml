y-= (scale * os)
draw_sprite_ext(battle_suduxian, 0, x, y, (scale / 1.5), scale, 0, c_white, ((scale / 2) * alpha))
if (y < -20) 
    instance_destroy()
