package 
{
    import net.flashpunk.FP
	import net.flashpunk.Entity;
    import net.flashpunk.graphics.Image;
	import net.flashpunk.World
	import flash.geom.Point
		
	public class Enemy4 extends Entity
	
	{	
		private var _image:Image;
		private var killed:Boolean = false;
		private var shootDelay:Number;
		override public function Enemy4()
		{
			_image = new Image (Assets.GRAPHIC_SHIP_ENEMY4);
			graphic = _image;
			type = "Enemy";			
			setHitbox( 80, 150, -20, -30);
			shootDelay = 0.9;
		}
		
		private var speedX:Number = 280;
		private var _health:int = 100;
	
        private function takeDamageBlue():void
		{
			_health -= 34;
			 
			if (_health <= 0)
			{
				//addExplosion(); 
				destroy();	
			}
		}
		
		 private function takeDamageGrey():void
		{
			_health -= 20;
			 
			if (_health <= 0)
			{
				//addExplosion(); 
				destroy();
			}
		}
		
		 private function takeDamageGreen():void
		{
			_health -= 50;
			 
			if (_health <= 0)
			{
				//addExplosion(); 
				destroy();
			}
		}
		
       override public function update():void 
        {
			//this is the code for the the three projectiles the ships shoot
			if ( x > 940) speedX *= -1;
			if ( x <= 20) speedX *= -1;			
	        x += speedX * FP.elapsed;
			
			
		    
			var _bullet:Bullet = (collide("Bullet", x, y)) as Bullet;
		    if (_bullet) 		
		    {
				_bullet.destroy();
				takeDamageBlue();
		    }
			
			
		    
			var _laser:Laser = (collide("Bullet", x, y)) as Laser;
		    if (_laser) 		
		    {
				_laser.destroy();
				takeDamageGrey();
		    }
		    
			var _missile:Missile = (collide("Bullet", x, y)) as Missile;
		    if (_missile) 
		    {
				_missile.destroy();
				takeDamageGreen();
		    }
			
			if (shootDelay > 0) shootDelay -= FP.elapsed;
			else
			{
				var newBullet:Enemybullet = FP.world.create(Enemybullet) as Enemybullet;
				newBullet.x = x+52;
				newBullet.y = y + 100;
				newBullet.setMovement(-230);
				FP.world.add(newBullet);
				shootDelay = 0.9;
			}
	     	FP.console.enable();	
		}
         
          
      public function destroy():void
			{
				FP.world.recycle(this);
			}
    
	}
}