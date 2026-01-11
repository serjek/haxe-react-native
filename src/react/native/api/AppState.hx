package react.native.api;

@:jsRequire('react-native', 'AppState')
extern class AppState {
	static var currentState:AppStateValue;
	static function addEventListener(event:AppStateEventName, listener:AppStateValue->Void):EventSubscription;
	static function removeEventListener(event:AppStateEventName, listener:AppStateValue->Void):Void;
}

typedef EventSubscription = {
	function remove():Void;
}

@:enum
abstract AppStateValue(String) {
	var Active = 'active';
	var Background = 'background';
	var Inactive  = 'inactive';
}
@:enum
abstract AppStateEventName(String) {
	var Change = 'change';
}
