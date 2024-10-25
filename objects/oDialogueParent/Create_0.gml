function Dialogue() constructor {
	_dialogs = [];
	
	add = function(_audio,  _message) {
		array_push(_dialogs, {
			message: _message,
			audio: _audio
		});
	}
	
	pop = function() {
		var _t = array_first(_dialogs);
		array_delete(_dialogs, 0, 1);
		return _t;
	}
	
	count = function() {
		return array_length(_dialogs);
	}
}

dialog = new Dialogue();
showing_dialog = false;
current_dialog = {};
index = 0;
mostrar_dialogo = false;