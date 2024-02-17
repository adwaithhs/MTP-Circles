extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var a = sqrt(3)/4
	var b = PI/6
	var llip = b-a
	var c = llip/a
	print(c)
	print(3*c)
	var k = b-a
	var s = c
	var d = k / (a-2*k) *(1-s)
	print(d)
	var n = llip/(a/2)
	print(n)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
