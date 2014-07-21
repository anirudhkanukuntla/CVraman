package com.events
{
	import mx.core.UIComponent;

	public class ani extends UIComponent
	{
		public function ani()
		{
		}
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void{
			this.validateDisplayList();
			this.validateNow();
			this.invalidateDisplayList();
			this.invalidateProperties();
			this.validateSize();
			this.commitProperties();
			
			
			var fg:Array = new Array;
		}
	}
}