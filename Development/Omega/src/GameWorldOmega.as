package  
{
	import adobe.utils.CustomActions;
	import flash.display.BitmapData;
	import net.flashpunk.Entity; 
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	import flash.geom.Point 

	
	
	/**
	 * ...
	 * @author Zhilong Zhao
	 */
	public class GameWorldOmega extends World 
	{
		{	
		FP.console.enable();
		}
	
		override public function begin():void 
		
		{
			
		    add (new Level);	
						
			//these are all my Spaceship entities
			
			//add (new Blueship(new Point(FP.screen.width / 2 - 12, FP.screen.height / 2 - 12)));
			
		    add(new Greenship(new Point(FP.screen.width / 2 - 12, FP.screen.height / 2 - 12)));
			
		    //add(new Greyship(new Point(FP.screen.width / 2 - 12, FP.screen.height / 2 - 12)));	
			
			//LEVEL 1
			
			/*var _enemy4:Enemy4 = new Enemy4;
			_enemy4.x = FP.width - 480;
			_enemy4.y = FP.height - 700
			add(_enemy4);
			super.begin();
			
			var _enemy4:Enemy4 = new Enemy4;
			_enemy4.x = FP.width - 900;
			_enemy4.y = FP.height - 700
			add(_enemy4);
			super.begin();
			
			var _enemy4:Enemy4 = new Enemy4;
			_enemy4.x = FP.width - 480;
			_enemy4.y = FP.height - 900
			add(_enemy4);
			super.begin();
			
			var _enemy4:Enemy4 = new Enemy4;
			_enemy4.x = FP.width - 900;
			_enemy4.y = FP.height - 900
			add(_enemy4);
			super.begin();*/
	
			//LEVEL 2
			
			 /*var _enemy3:Enemy3 = new Enemy3;
			_enemy3.x = FP.width - 1000;
			_enemy4.y = FP.height - 900;
			add(_enemy3);
			
			super.begin(); var _enemy3:Enemy3 = new Enemy3;
			_enemy3.x = FP.width - 200;
			_enemy4.y = FP.height - 900
			add(_enemy3);
			super.begin();
			
			var _enemy4:Enemy4 = new Enemy4;
			_enemy4.x = FP.width - 660;
			_enemy4.y = FP.height - 700
			add(_enemy4);
			super.begin();
			
			var _enemy4:Enemy4 = new Enemy4;
			_enemy4.x = FP.width - 360;
			_enemy4.y = FP.height - 700
			add(_enemy4);
			super.begin();*/
			
			//LEVEL 3
			
			var _enemy2:Enemy2 = new Enemy2;
			_enemy2.x = FP.width - 480;
			_enemy2.y = FP.height -975
			add(_enemy2);
			super.begin();
			
			var _enemy3:Enemy3 = new Enemy3;
			_enemy3.x = FP.width - 300;
			_enemy3.y = FP.height - 750
			add(_enemy3);
			super.begin();
			
			var _enemy3:Enemy3 = new Enemy3;
			_enemy3.x = FP.width - 600;
			_enemy3.y = FP.height - 750
			add(_enemy3);
			super.begin();
			
			
			var _enemy4:Enemy4 = new Enemy4;
			_enemy4.x = FP.width - 175;
			_enemy4.y = FP.height - 575
			add(_enemy4);
			super.begin();
			
			
			var _enemy4:Enemy4 = new Enemy4;
			_enemy4.x = FP.width - 900;
			_enemy4.y = FP.height - 575
			add(_enemy4);
			super.begin();	
			
			//BOSS FIGHT
			
			/*var _enemy2:Enemy2 = new Enemy2;
			_enemy2.x = FP.width - 760;
			_enemy2.y = FP.height - 600
			add(_enemy2);
			super.begin();
			
			var _enemy2:Enemy2 = new Enemy2;
			_enemy2.x = FP.width - 200;
			_enemy2.y = FP.height -600
			add(_enemy2);
			super.begin();
			
			var _enemy:Enemy1 = new Enemy1;
			_enemy.x = FP.width - 560;
			_enemy.y = FP.height - 950
			add(_enemy);
			super.begin();*/
			
			
			
		}
	} 
	      
}
