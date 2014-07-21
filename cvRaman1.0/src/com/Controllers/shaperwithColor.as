package com.Controllers
{
	import flash.display.Shape;
	
	import mx.controls.Alert;
	import mx.core.FlexGlobals;
	public class shaperwithColor extends Shape
	{
		[Bindable]
		public var _color:uint  = 0xD0FA58;
		public function shaperwithColor()
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