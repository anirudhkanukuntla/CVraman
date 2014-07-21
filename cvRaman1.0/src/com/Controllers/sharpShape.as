package com.Controllers
{
	import flash.display.Shape;
	
	import mx.controls.Alert;
	import mx.core.FlexGlobals;

	public class sharpShape extends Shape
	{
		[Bindable]
		public var _color:uint  = 0x01DF01;
		public function sharpShape()
		{
			this.graphics.beginFill(_color);
			this.graphics.moveTo(FlexGlobals.topLevelApplication.triangleHeight/2,FlexGlobals.topLevelApplication.triangleHeight/6);
			this.graphics.lineTo(0,0);
			this.graphics.lineTo(0, -25);
			this.graphics.lineTo(FlexGlobals.topLevelApplication.triangleHeight,-25);
			this.graphics.lineTo(FlexGlobals.topLevelApplication.triangleHeight,0);
			this.graphics.lineTo(FlexGlobals.topLevelApplication.triangleHeight/2,FlexGlobals.topLevelApplication.triangleHeight/6);
		}
	}
}