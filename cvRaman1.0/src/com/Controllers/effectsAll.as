


package com.Controllers
{
	
	import com.Controllers.appControls;
	
	import mx.controls.Alert;
	import mx.core.UIComponent;
	import mx.effects.*;
	import mx.events.EffectEvent;
	import mx.utils.ObjectUtil;
	
	public class effectsAll extends Effect
	{
		
		private var _appControls:appControls= appControls.getInstance();
		
		public function effectsAll(target:Object=null)
		{
			super(target);
			
		}
		public function eventDispetcher(e:EffectEvent):void{
			e.currentTarget.removeEventListener(EffectEvent.EFFECT_END, eventDispetcher);
			var obj:Object = new Object();
			obj.target = e.currentTarget.target;
			obj.targetName = e.currentTarget.target.name;
			obj.id = e.currentTarget.target.id;
			obj.type = e.type;
			obj.x = e.currentTarget.target.x;
			_appControls.DispMainEvent("DESP_EFECT_END", true, obj);
		}
		
		public var resizeeffect:Resize;
		public function animateResize(widthto:Number, heightto:Number, dur:Number, obj:UIComponent):void {
			resizeeffect = new Resize();
			resizeeffect.addEventListener(EffectEvent.EFFECT_END, eventDispetcher);
			resizeeffect.widthTo = widthto;
			resizeeffect.heightTo = heightto;
			resizeeffect.target = obj;
			resizeeffect.duration = dur;
			resizeeffect.play();
		}
		
		public var moveffect:Move;
		public function animateMove(xto:int, yto:int, dur:Number, obj:UIComponent):void {
			moveffect = new Move();
			moveffect.xTo = xto;
			moveffect.yTo = yto;
			moveffect.target = obj;
			moveffect.duration = dur;
			moveffect.play();
			moveffect.addEventListener(EffectEvent.EFFECT_END,eventDispetcher);
		}
		
		public var alphaeffect:Fade;
		public function animateShowEffect(afrom:Number, ato:Number, dur:Number, obj:UIComponent):void {
			alphaeffect = new Fade();
			alphaeffect.alphaFrom = afrom;
			alphaeffect.alphaTo = ato;
			alphaeffect.duration = dur;
			alphaeffect.target = obj;
			alphaeffect.play();
			alphaeffect.addEventListener(EffectEvent.EFFECT_END,eventDispetcher);
		}
		
		public var animateMoveffect:Move;
		public function animateVideotxt(xto:Number, yto:Number, dur:Number ,obj:UIComponent):void {
			animateMoveffect = new Move();
			animateMoveffect.xTo = xto;
			animateMoveffect.yTo = yto;
			animateMoveffect.target = obj;
			animateMoveffect.duration = dur;
			animateMoveffect.play();
			animateMoveffect.addEventListener(EffectEvent.EFFECT_END,eventDispetcher);
		}
		
		public var glo:Glow;
		public function animateGlow(alphaFrom:Number, alphaTo:Number, blurXfrom:Number, blurXto:Number, blurYfrom:Number, blurYto:Number, duration:Number, obj:UIComponent, clr:uint):void {
		    glo = new Glow();
			glo.alphaFrom = alphaFrom;
			glo.alphaTo = alphaTo;
			glo.blurXFrom = blurXfrom;
			glo.blurXTo = blurXto;
			glo.blurYFrom = blurYfrom;
			glo.blurYTo = blurYto;
			glo.duration = duration;
			glo.target = obj;
			glo.color = clr; 
			glo.play();
			glo.addEventListener(EffectEvent.EFFECT_END,eventDispetcher);
		}
		
		public var fade:Fade;
		public function animateFade(alphaFrom:Number, alphaTo:Number, dur:Number, obj:UIComponent):void {
			fade = new Fade();
			fade.alphaFrom = alphaFrom;
			fade.alphaTo = alphaTo;
			fade.duration = dur;
			fade.target = obj;
			fade.play();
			fade.addEventListener(EffectEvent.EFFECT_END,eventDispetcher);
		}
		public var blur:Blur;
		public function animateBlur(xfrom:Number, xto:Number, yfrom:Number, yto:Number, dur:Number, obj:UIComponent):void {
			blur = new Blur();
			blur.blurXFrom = xfrom;
			blur.blurXTo = xto;
			blur.blurYFrom = yfrom;
			blur.blurYTo = yto;
			blur.duration = dur;
			blur.target = obj;
			blur.play();
			blur.addEventListener(EffectEvent.EFFECT_END,eventDispetcher);
		}
		
		
		//move effects start and end functions
		
		private function moveEffectStart(e:EffectEvent):void {
			var obj:Object = new Object();
			obj.mtarget = e.currentTarget.target;
		}
		
		private function moveEffectEnd(e:EffectEvent):void {
			var obj:Object = new Object();
			obj.mtarget = e.currentTarget.target;
		}
				
	}
}