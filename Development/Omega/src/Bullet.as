package  
{	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
 
	public class Bullet extends Entity 
	{
 
		private var moveY:Number = 0;
 
		public function Bullet()
		{
			graphic= new Image (Assets.GRAPHIC_BULLET);
			type = "Bullet";
			setHitbox(8, 8, -3, -3);
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
