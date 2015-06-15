package   
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.display.Shape;
	//import flash.display.Bullet;
	
	
	public class Bullet extends MovieClip
	{
		public function Bullet()
		{
			var circle:Shape = new Shape(); 
			circle.graphics.beginFill(0x990000, 1); 
			circle.graphics.lineStyle(2, 0x000000); 
			circle.graphics.drawCircle(50, 50, 50);
			circle.graphics.endFill(); 
			addChild(circle);
		}
	}	
}	
		//public var xSpeed:Number;
		//public var ySpeed:Number;
		//
		//public function Bullet(){
			//
			//var circle:Shape = new Shape(); 
			//circle.graphics.beginFill(0x990000, 1); 
			//circle.graphics.lineStyle(2, 0x000000); 
			//circle.graphics.drawCircle(50, 50);
			//circle.graphics.endFill(); 
			//addChild(circle); 
			//
			//x = _x;
			//y = _y;
			//
			//var changeInX:Number = x - target.x;
			//var changeInY:Number = y - target.y;
			//var angleInRadians:Number = Math.atan2(changeInY, changeInX);
			//var angleInDegrees:Number = Math.round(angleInRadians*180/Math.PI);
			//rotation = angleInDegrees;
			//
			//var speed:Number = 10; 
			//
			//var xDirection:Number = (target.x - x>=0)?1:-1;
			//var yDirection:Number = (target.y - y>=0)?1:-1;
			//var xDifference:Number = target.x-x;
			//var yDifference:Number = target.y-y;
			//
			//xSpeed = speed*Math.abs(xDifference/yDifference)*xDirection;
			//ySpeed = speed*Math.abs(yDifference/xDifference)*yDirection;
			//
			//if(Math.abs(xSpeed)>speed){
				//xSpeed=speed*xDirection;
			//}
			//if(Math.abs(ySpeed)>speed){
				//ySpeed=speed*yDirection;
			//}
			//
			//
			//
		//}
		//
		//protected function Move(e:Event):void{
			//x+=xSpeed;
			//y+=ySpeed;
		//}
		//
//
		//
		//public function aim(e:Event) {
			//
			//addEventListener(Event.ENTER_FRAME, Move);
			//
			//var changeInX:Number = x - stage.mouseX;
			//var changeInY:Number = y - stage.mouseY;
			//var angleInRadians:Number = Math.atan2(changeInY, changeInX);
			//var angleInDegrees:Number = Math.round(angleInRadians*180/Math.PI);
			//rotation = angleInDegrees;
		//}
		//
		//public function loop(e:Event):void	
		//{
			//this.x += 5 * xSpeed;
			//this.y += 5 * ySpeed;
		//}	
