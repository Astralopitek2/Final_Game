 enum RES {
	WIDTH = 480.0,
	HEIGHT = 300.0,
	SCALE = 3
}

//Create Camera
camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, oCameraController, -1, -1, RES.WIDTH/2, RES.HEIGHT/2);

view_enabled = true;
view_visible[0] = true;
view_set_camera(0, camera);



