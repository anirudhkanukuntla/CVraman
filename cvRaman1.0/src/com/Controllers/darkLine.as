package com.Controllers
{
	import flash.display.Shape;
	
	import mx.core.FlexGlobals;

	public class darkLine extends Shape
	{
		public function darkLine()
		{
			this.graphics.beginFill(0xD0FA58);
			this.graphics.drawRect(0,0,FlexGlobals.topLevelApplication.middleImageBar.width,3);
		}
	}
}