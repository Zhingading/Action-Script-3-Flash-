package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP 

	
	/**
	 * ...
	 * @author Zhilong Zhao
	 */
	public class Enemy extends Entity 
	{
		[Embed(source="../Images/khazix.png")] public const ENEMY_GRAPHIC:Class;
		public function Enemy() 
		{
			graphic = new Image(ENEMY_GRAPHIC)
			x = FP.rand(FP.screen.width)
			y = FP.rand(FP.screen.height)
			type = "enemy";
			setHitbox (210, 280, -50, -20 )
		}
		
	}

}