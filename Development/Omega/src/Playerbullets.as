package  
{
	import net.flashpunk.Entity
	public class Playerbullets extends Bullet
	{
		private var _sprites:Entity;
		
		public function Playerbullets() 
		{
			_sprites = new Entity(Assets.GRAPHIC_BULLET, 10, 10);
			graphic = _sprites;
			type = "Bullet";
			setHitbox(6, 6, 1, 3);
		}
	}
}