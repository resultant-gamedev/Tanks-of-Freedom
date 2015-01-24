
extends Sprite
export var position_on_map = Vector2(0,0)
var current_map

var group = 'terrain'
var type

func get_pos_map():
	return position_on_map
	
func set_pos_map(new_position):
	self.set_pos(current_map.map_to_world(new_position))
	position_on_map = new_position

func _ready():
	add_to_group("terrain")
	current_map = get_node("/root/game/pixel_scale/map")
	pass


