package com.imasters.forum.elektra {
	import flash.display.Sprite;

	public class Grid extends Sprite {
		private var gridController :GridController;

		public function Grid( rows :uint , cols :uint ) {
			super();

			for ( var i :uint = 0 , k :uint = 1 ; i < rows ; ++i ) {
				for ( var j :uint = 0 ; j < cols ; ++j ) {
					var gridItem :GridItem = new GridItem( 70 , 70 , 2 );
					
					gridItem.x = x + ( j * gridItem.width ) - ( 2 * j );
					gridItem.y = y + ( i * gridItem.height ) - ( 2 * i );

					addChild( gridItem );
				}
			}

			gridController = new GridController( this );
		}
	}
}
