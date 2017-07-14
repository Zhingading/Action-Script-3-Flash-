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
	
    public class Greyship extends Entity 
    {
		[Embed(source = "../Sounds/Mega Man 2 Medley - Super Smash Bros. 3DS.mp3")]
		private const MUSIC:Class;
		public var track:Sfx = new Sfx(MUSIC);
		
        private var _v:Point; 
		private var bulletDelay:Number = 0.5;	
		
		public function Greyship (p:Point)
		{
			x = p.x;
			y = p.y;
			_v = new Point;
			graphic = new Image(Assets.GRAPHIC_SHIP_GREY);
			setHitbox(100,100,-10,-10)
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
			
			_v.x = 175 * FP.elapsed * movement.x; 
			_v.y = 175 * FP.elapsed * movement.y;
			
			if(bulletDelay > 0)  bulletDelay -= FP.elapsed;
            else if (Input.check("fire")) 
		    {
	                bulletDelay = 0.2  ;
		            var _laser:Laser = FP.world.create(Laser) as Laser;
	                _laser.x = x+52;
	                _laser.y = y;
	                _laser.setMovement (350);
	                FP.world.add(_laser);
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