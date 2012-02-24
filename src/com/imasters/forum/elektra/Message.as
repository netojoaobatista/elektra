package com.imasters.forum.elektra {
	import flash.display.Sprite;
	import flash.text.TextField;

	public class Message extends Sprite {
		public function Message( message :String ) {
			var textField :TextField = new TextField();
			textField.text = message;

			addChild( textField );
		}
	}
}
