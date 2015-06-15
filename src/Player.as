package 
{
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import Bullet;

	
	/**
	 * ...
	 * @author 
	 */
	public class Player extends MovieClip
	{
		private var _player:Loader = new Loader();
		private var _armPlayer90:Loader = new Loader();
		
		
		//[Embed(source = "../animations/player/arm/90_graden.png")]
		//private var armArt:Class;
		//private var _armPlayer:Bitmap;
		
		private var dx : Number;
		private var dy : Number;
		
		public function Player() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
			
			_player.load(new URLRequest("../animations/player/pancho_run.swf"));
			_armPlayer90.load(new URLRequest("../animations/player/arm/pivot_2.swf"));
			
			_armPlayer90.scaleX = 0.5;
			_armPlayer90.scaleY = 0.5;	
			
			//armPivot.x = -this.x / 2;
			
			_armPlayer90.x = 275;
			_armPlayer90.y = 130;
			
		}
		
		
		
		
		
		public function checkMouse(e: Event) : void
		{
			
			dx =  _armPlayer90.x - this.mouseX;
			dy =  _armPlayer90.y - this.mouseY;
			
			_armPlayer90.rotation = Math.atan2(dy, dx) * 180 / (Math.PI) + 180;
			
		}
		
		public function fire(e:MouseEvent):void {
			var b:Bullet = new Bullet();
			var dx:Number = mouseX - _armPlayer90.x;
			var dy:Number = mouseY - _armPlayer90.y;
			var angle_in_rad:Number = Math.atan2(dy, dx);
			b.x = _armPlayer90.x +dx;
			b.y = _armPlayer90.y +dy;
			b.rotation = angle_in_rad * 180/Math.PI;
			addChild(b)
			//bullets.push(b)
		}
		
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			stage.addEventListener( Event.ENTER_FRAME, checkMouse );
			//stage.addEventListener(MouseEvent.MOUSE_DOWN, gunFire);
			
			addChild(_player);
			
			addChild(_armPlayer90);
			
			
			//addChild(_armPlayer);
		}
		
		//private function gunFire(e:MouseEvent):void 
		//{
			//stage.removeEventListener(MouseEvent.MOUSE_DOWN, gunFire);
			//var gunFlash:Loader = new Loader();
			//gunFlash.load(new URLRequest("../animations/misc/gunflash.swf"));
			//
			//gunFlash.x = _armPlayer90.width;
			//
			////addChild(gunFlash);
		//}
		
		public function adjust():void
		{
			if (this.x - this.width / 2 < 500)
			{
				this.x = 500 + this.width / 2;
			}
			
			if (this.x + this.width / 2 > 1930)
			{
				this.x = 1930 - this.width / 2;
			}
			
			if (this.y - this.height / 2 < 10)
			{
				this.y = 10 + this.height / 2;
			}
			
			if (this.y + this.height / 2 > 1210)
			{
				this.y = 1210 - this.height / 2;
			}
		}
	}

}