package com.imasters.forum.elektra {
	import flash.display.DisplayObject;
	import flash.events.MouseEvent;
	import flash.events.Event;

	public class GridController {
		private var numChildren :int;
		private var grid :Grid;

		public function GridController( grid :Grid ) {
			numChildren = grid.numChildren;
			this.grid = grid;

			for ( var i :int = 0 ; i < numChildren ; ++i ) {
				var item :DisplayObject = grid.getChildAt( i );

				if ( item is GridItem ) {
					item.addEventListener( MouseEvent.MOUSE_OVER , handleMouseOverEvent );
				}
			}
		}

		public function handleMouseOverEvent( e :MouseEvent ) :void {
			var gridItem :GridItem = e.target as GridItem;
			
			gridItem.hide();
			gridItem.removeEventListener( MouseEvent.MOUSE_OVER , handleMouseOverEvent );
			
			if ( --numChildren == 0 ) {
				grid.dispatchEvent( new Event( Event.COMPLETE ) );
			}
		}
	}
}
