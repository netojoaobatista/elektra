package com.imasters.forum.elektra {
	import flash.display.Sprite;
	import com.greensock.TweenMax;

	public class GridItem extends Sprite {
		public function GridItem( width :uint , height :uint , lineWidth :uint = 2 ) {
			super();

			graphics.lineStyle( lineWidth , 0x660099 );
			graphics.beginFill( 0xE1C4C4 );
			graphics.drawRect( 0 , 0 , width - lineWidth , height - lineWidth );
			graphics.endFill();
		}

		public function hide() :void {
			TweenMax.to( this , .5 , {autoAlpha: 0} );
		}
	}
}
