extends Spatial

func _ready():
	var tex = load("res://cube.png")
	var mat = FixedMaterial.new()
	mat.set_texture(FixedMaterial.PARAM_DIFFUSE, tex)

	var mesh = load("res://cube.msh")
	mesh.surface_set_material( 0, mat )

	var mesh_instance = MeshInstance.new()
	mesh_instance.set_mesh(mesh)
	
	add_child(mesh_instance)
