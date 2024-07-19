var waterColision = instance_place(x, y, oWater)
var rmName = room_get_name(room)

if rmName == "rm_jogo" {
	if (clicado) {
		phy_position_x = mouse_x;
		phy_position_y = mouse_y;
	}
}

if rmName == "rm_fim_de_jogo"{
	if waterColision {
		phy_position_y -= 1;
	}
}

if rmName != "rm_jogo" and rmName != "rm_fim_de_jogo" instance_destroy()