package 
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author 
	 */
	public class UserInterface extends Sprite
	{
		[Embed(source = "lib/UI_statsbar.png")]
		
		private var StatusbarArt:Class;
		private var _statusbarArt:Bitmap;
		
		[Embed(source = "lib/ammo_glow-01.png")]
		
		private var AmmoArt:Class;
		private var _ammoArt:Bitmap;
		
		[Embed(source = "lib/hartVol.png")]
		private var HealthArt:Class;
		private var _healthArt:Bitmap;
		
		[Embed(source = "lib/dollar_glow.png")]
		private var DollarArt:Class;
		private var _moneyArt:Bitmap;
		
		
		
		public function UserInterface() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			addStatusBar();
			addAmmoCounter();
			addHealth();
			addMoneyCounter();
			
			
			
		}
		
		private function addStatusBar():void
		{
			_statusbarArt = new StatusbarArt();
			addChild(_statusbarArt);
			
			_statusbarArt.x = stage.stageWidth / 2 + (this.x - this.width / 2);
		}
		
		private function addAmmoCounter():void{
			_ammoArt = new AmmoArt();
			_ammoArt.x = _statusbarArt.width / 5;
			
			addChild(_ammoArt);
		}
		
		private function addHealth():void{
			_healthArt = new HealthArt();
			_healthArt.x = _statusbarArt.x * 3;
			
			addChild(_healthArt);
		}
		
		private function addMoneyCounter():void{
			_moneyArt = new DollarArt();
			_moneyArt.x = _statusbarArt.x * 5;
			_moneyArt.y = _statusbarArt.y - 15;
			
			addChild(_moneyArt);
		}
		
		
	}

}