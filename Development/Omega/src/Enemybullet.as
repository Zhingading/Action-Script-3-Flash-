package  
{
	import net.flashpunk.FP
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image
 
	public class Enemybullet extends Bullet 
	{
		private var _sprites:Image;
		private var bulletDelay:Number = 3;	
		public function Enemybullet() 
		{
			graphic = new Image(Assets.ENEMY_BULLET);
			type = "EnemyBullet";
			setHitbox(15, 15, -14, -23);
		}
	}
}