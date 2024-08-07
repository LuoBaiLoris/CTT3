function Battle_MakeGB_ub_yellow(x, y, x_target, y_target, angle_start, angle_target, pause=25, time_move=25) {
    var xx = x;
    var yy = y;
    var idealx = x_target;
    var idealy = y_target;
    var angle = angle_start;
    var idealrot = angle_target;


    var bb = instance_create_depth(xx, yy, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, obj_ub_gb_yellow);
    
    bb.x_target = idealx;
    bb.y_target = idealy;
    bb.angle_start = angle;
    bb.angle_target = idealrot;
    bb.time_release_delay = pause;
    bb.time_move = time_move;

    return bb;
}
