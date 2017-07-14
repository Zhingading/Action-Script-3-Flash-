package 
{
	import flash.display.BitmapData;
	import flash.geom.Point;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input 
	import net.flashpunk.utils.Key 
	import net.flashpunk.FP 
	
	
	
	/**
	 * ...
	 * @author Zhilong Zhao
	 */
	public class PlayerOmega extends Entity 
	{
	    private var _v:Point; 
		public function PlayerOmega(p:Point)
		{
			x = p.x;
			y = p.y;
			_v = new Point;
			graphic = new Image(new BitmapData(24, 24, false, 0xff0000)); 
			setHitbox (24, 24, 0, 0);
			type = "player";
		}
		
		override public function update ():void
		{
		    updateMovement ();              
			updateCollision();
			super.update();
		}
		
		// this page was what I used to learn how to make entities move using the arrow keys but I used a square instead of an image
		
		private function updateMovement():void
		{
			var movement :Point = new Point;
			if (Input.check(Key.UP)) movement.y--;
			if (Input.check(Key.DOWN)) movement.y++;
			if (Input.check(Key.LEFT)) movement.x--;
			if (Input.check(Key.RIGHT)) movement.x++;
			
			_v.x = 300 * FP.elapsed * movement.x; 
			_v.y = 300 * FP.elapsed * movement.y;
		}

	
		private function updateCollision():void 
		{
			x += _v.x;
			y += _v.y; 
			
			if (collide("level", x, y))
			
			{
				trace ("Collision!");
			} 
		}
		
	}
	

}