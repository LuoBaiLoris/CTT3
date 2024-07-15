function spriteCreate(_sprite_index, _x, _y, _depth, mask = false, _angle = 0, _image_alpha = 1,  _image_xscale = 1, _image_yscale = 1, _image_blend = c_white, _image_index = 0,_image_speed = 0)
{
	var obj = instance_create_depth(_x, _y, _depth, oSprite);
	obj.mask = mask;
	obj.sprite_index = _sprite_index;
	obj.image_angle = _angle;
	obj.angle = _angle;
	obj.image_xscale = _image_xscale;
	obj.image_alpha = _image_alpha;
	obj.image_yscale = _image_yscale;
	obj.image_blend = _image_blend;
	obj.image_index = _image_index;
	obj.image_speed = _image_speed;
	return obj;
}