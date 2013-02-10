package com.lookbackon.AI.steeringBehavior.tests
{
	import com.lookbackon.AI.steeringBehavior.Circle;
	import com.lookbackon.AI.steeringBehavior.SteeredVehicle;
	import com.lookbackon.AI.steeringBehavior.Vector2D;
	import com.lookbackon.AI.steeringBehavior.Vehicle;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;

	public class FleeTest extends Sprite
	{
		private var _vehicle:SteeredVehicle;
		
		public function FleeTest()
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			_vehicle = new SteeredVehicle();
			_vehicle.position = new Vector2D(200, 200);
			_vehicle.edgeBehavior = Vehicle.BOUNCE;
			addChild(_vehicle);
			
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
		}
		
		private function onEnterFrame(event:Event):void
		{
			_vehicle.flee(new Vector2D(mouseX, mouseY));
			_vehicle.update();
		}
	}
}