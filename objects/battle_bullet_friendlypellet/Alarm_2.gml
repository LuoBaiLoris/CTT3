alarm[1]=wait_time
Anim_Create(id,"x",(tween ? ANIM_TWEEN.BACK : ANIM_TWEEN.LINEAR),ANIM_EASE.OUT,x,targetx-x,move_time)
Anim_Create(id,"y",(tween ? ANIM_TWEEN.BACK : ANIM_TWEEN.LINEAR),ANIM_EASE.OUT,y,targety-y,move_time)