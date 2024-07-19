function Dialogue() constructor {
	_dialogs = [];
	
	add = function(_sprite, _audio,  _message) {
		array_push(_dialogs, {
			sprite: _sprite,
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