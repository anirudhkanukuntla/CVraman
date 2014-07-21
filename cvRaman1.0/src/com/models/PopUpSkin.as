package com.models
{
	import flash.display.Graphics;
	import mx.graphics.RectangularDropShadow;
	import mx.skins.RectangularBorder;
	
	import mx.controls.Image;
	import mx.effects.*;
	
	
	public class PopUpSkin extends RectangularBorder
	{
		private var dropShadow:RectangularDropShadow;
		private var backgroundImage:Image;
		public function PopUpSkin()
		{
		}
		
		override protected function updateDisplayList(unscaledWidth:Number, 
													  unscaledHeight:Number):void 
		{
//			unscaledHeight=50
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			
			var cornerRadius:Number = getStyle("cornerRadius");
			var backgroundColor:int = 0xFBFBEF;
			var backgroundAlpha:Number = getStyle("backgroundAlpha");
			graphics.clear();
			//			graphics.drawEllipse(0,0,unscaledWidth
			// Background
			
		drawRoundRect(0, 0, unscaledWidth, unscaledHeight, 
			 {tl: 0, tr:cornerRadius, bl: cornerRadius, br: 0}, 
		backgroundColor, backgroundAlpha);
			
			// Shadow
			if (!dropShadow)
				dropShadow = new RectangularDropShadow();
			
			dropShadow.distance = 8;
			dropShadow.angle = 45;
			dropShadow.color = 0x000000;
			dropShadow.alpha = 0.4;
			dropShadow.tlRadius = 0;
			dropShadow.trRadius = cornerRadius;
			dropShadow.blRadius = cornerRadius;
			dropShadow.brRadius = 0;
			dropShadow.drawShadow(graphics, 0, 0, unscaledWidth, unscaledHeight);
			
		}
	}
	
}