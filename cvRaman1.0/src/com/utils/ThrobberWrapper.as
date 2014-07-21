package com.utils
{
	import com.Controllers.appControls;
	import com.utils.Throbber;
	
	import flash.display.DisplayObject;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	
	public class ThrobberWrapper
	{
		private var throbber:Throbber = null;
		
		private static var throbberWrapper:ThrobberWrapper;
		
		public function ThrobberWrapper(hack:unreachable) {
			if (hack == null) {throw new Error( "Must use getInstance()." );}
		}
		
		public static function getInstance() : ThrobberWrapper {                
			if (throbberWrapper == null) {
				throbberWrapper = new ThrobberWrapper(new unreachable());
			}
			return throbberWrapper;
		}	
		//Function to start the throbber               
		public function startProcess(parent:DisplayObject, modal:Boolean = true):void
		{
			if(!(appControls.getInstance()).throbber)
			{
				throbber = new Throbber();
				throbber.play();	
				(appControls.getInstance()).throbber = throbber;
				PopUpManager.addPopUp(throbber, parent ,modal);
				PopUpManager.centerPopUp(throbber);
				throbber.setFocus();
			}else{
				throbber = new Throbber();
				throbber.play();	
				(appControls.getInstance()).throbber = throbber;
				PopUpManager.addPopUp(throbber, parent ,modal);
				PopUpManager.centerPopUp(throbber);
				throbber.setFocus();
			}
		}		
		
		// Function to stop the throbber
		public function endProcess():void
		{
			var throbber:Throbber = (appControls.getInstance()).throbber;
			if(throbber)
			{
				throbber.stop();
				PopUpManager.removePopUp( throbber );
				(appControls.getInstance()).throbber = null;
			}
		}
		
	}
}
class unreachable {} 