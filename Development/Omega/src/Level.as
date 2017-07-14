package 
{
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.Entity; 
	import net.flashpunk.FP 
 
	
	/**
	 * ...
	 * @author Zhilong Zhao
	 */
	public class Level extends Entity 
	{
		private var _tiles:Tilemap;
		public function Level() 
		
	
		
		{
		    _tiles = new Tilemap(Assets.SPRITE_TILESET, 1120, 960, 32, 32);
		    graphic = _tiles; 
		    layer = 1;	

		    //this sets the region my tiles appear in.
			_tiles.setRectOutline(0, 0, 1120 / 32, 960 / 32, 1);
			
		}
		
	}


}