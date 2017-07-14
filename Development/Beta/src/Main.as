package
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP; 
	
	
	
	public class Main extends Engine
	{
		
		public function Main()
		{	
			   super (1400, 1080) ;
			   FP.console.enable(); 
		}
		
		override public function init():void 
		{
		       trace("flashpunk has started successfully!")
			   FP.world = new Gameworld
			   super.init();
		}
	}
	
}