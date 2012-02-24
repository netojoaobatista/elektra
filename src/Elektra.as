package {
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import com.imasters.forum.elektra.Grid;
	import com.imasters.forum.elektra.Message;

	public class Elektra extends Sprite {
		public function Elektra() {
			super();

			stage.scaleMode = StageScaleMode.NO_SCALE;
                        stage.align = StageAlign.TOP_LEFT;

			var grid :Grid = new Grid( 5 , 4 );
			grid.addEventListener( Event.COMPLETE , function() :void {
				removeChild( grid );
				addChild( new Message( "OOP é legal!" ) );
			} );

			addChild( grid );
		}
	}
}
