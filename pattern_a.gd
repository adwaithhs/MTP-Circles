@tool

extends Node2D

@export
var r = 3

const R = 100

@export
var color = Color.WHITE

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func my_draw_circle(pos: Vector2):
	var ps = []
	var n = 100
	for i in n+1:
		ps.append(pos + R*Vector2.UP.rotated(2*PI*i/n))
	draw_polyline(ps, color, 4)


func _draw():
	var u1 = R*sqrt(3)*Vector2.RIGHT.rotated(PI/3)
	var u2 = R*sqrt(3)*Vector2.LEFT
	var u3 = R*sqrt(3)*Vector2.RIGHT.rotated(-PI/3)
	var v = (r-1)*u1
	for i in range(r, 2*r-1):
		var v2 = v
		for j in i:
			my_draw_circle(v2)
			v2 += u2
		v += u3
	for i in range(2*r-1, r-1, -1):
		var v2 = v
		for j in i:
			my_draw_circle(v2)
			v2 += u2
		v -= u1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
