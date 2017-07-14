package  
{	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
 
	public class Missile extends Entity 
	{
 
		private var moveY:Number = 0;
 
		public function Missile() 
		{
			graphic= new Image (Assets.GRAPHIC_MISSILE);
			type = "Bullet";
			setHitbox(6, 6, -10, -3);
		}
		
		public function setMovement(_y:Number = 0):void
		{
			moveY = _y;
		}
 
		override public function update():void
		{
			y -= moveY * FP.elapsed;
			if (x > FP.camera.x + FP.width + 50 || x < FP.camera.x - 0 || y < - 50 || y > FP.height + 50)
			{
				destroy();
			}
		}
 
		public function destroy():void
		{
			FP.world.recycle(this);
		}
	}
}
