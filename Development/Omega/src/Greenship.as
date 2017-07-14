package 
{
  	import flash.display.BitmapData;
	import flash.geom.Point;
	import net.flashpunk.Entity;
    import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input 
	import net.flashpunk.utils.Key 
	import net.flashpunk.FP 
	import net.flashpunk.Sfx
	
    public class Greenship extends Entity 
    {
		[Embed(source = "../Sounds/Mega Man 2 Medley - Super Smash Bros. 3DS.mp3")]
		private const MUSIC:Class;
		public var track:Sfx = new Sfx(MUSIC);
	
        private var _v:Point; 
		private var bulletDelay:Number = 0.5
		
		public function Greenship (p:Point)
		{
			x = p.x;
			y = p.y;
			_v = new Point;
			graphic = new Image(Assets.GRAPHIC_SHIP_GREEN);
			setHitbox(50,90,-35,-15);
			type = "player";
			Input.define("fire", Key.SPACE);
		}
		
		override public function update ():void 	
		{
		    updateMovement ();
            updateCollision();
			if (collide("Enemy", x, y)) 
			{
                x = 480;
                y = 700
            }
			super.update();
		}
		private var moveSpeed:Number = 200;
		private function updateMovement():void
		{
			var movement :Point = new Point;
			if (Input.check(Key.UP)) movement.y--;
			if (Input.check(Key.DOWN)) movement.y++;
			if (Input.check(Key.LEFT)) movement.x--;
			if (Input.check(Key.RIGHT)) movement.x++;
			
			_v.x = 300 * FP.elapsed * movement.x; 
			_v.y = 400 * FP.elapsed * movement.y;
			
			if(bulletDelay > 0)  bulletDelay -= FP.elapsed;
            else if (Input.check("fire")) 
		    {
	                bulletDelay = 1  ;
		            var _missile:Missile = FP.world.create(Missile) as Missile;
	                _missile.x = x+45;
	                _missile.y = y-5;
	                _missile.setMovement (300);
	                FP.world.add(_missile);
 		    }	
		}
         
		private function updateCollision():void 
		{
			x += _v.x;
			y += _v.y; 
			
			if (collide("EnemyBullet", x, y))
			
			{
				x = 480;
                y = 700
			} 
			
			 if (Input.pressed(Key.TAB))
			{
			    track.play();
			}
		}
    } 
}