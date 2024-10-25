var waterColision = instance_place(x, y, oWater)
var rmName = room_get_name(room)

if rmName == "rmModulo1" {
	if (clicado) {
		phy_position_x = mouse_x;
		phy_position_y = mouse_y;
	}
}

if rmName == "rmFimDeJogoModulo1"{
	if waterColision {
		phy_position_y -= 1;
	}
}

if rmName != "rmModulo1" and rmName != "rmFimDeJogoModulo1" instance_destroy();