
	////////////////////////////////////////////////////////////////////////////////
	//
	//  Origin Digital, an Accenture Company
	//  Copyright 2006-2010 Origin Digital
	//  All Rights Reserved.
	//
	////////////////////////////////////////////////////////////////////////////////
	

package com.Controllers{
	import com.models.myLoader;
	
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.navigateToURL;
	import flash.net.sendToURL;
	import flash.system.Security;
	
	import mx.controls.Alert;
	import mx.managers.CursorManager;
			
	public class XML_LOADER{
       	private var _appControls:appControls= appControls.getInstance();
		public var xml:XML;
//		private var urlLoader_param:myLoader;
//		private var urlLoader_load:myLoader;
		private var urlLoader:myLoader ;
		private var urlLoader2:myLoader ;
		private var urlLoader1:myLoader ;
		private var triedPrimary:Boolean = false;
		private var triedSecondary:Boolean = false;
		private var triedFinally:Boolean = false;
		public function unique():String{
		 		var unique:String = "&unique="+String( new Date().getTime());
		 		return unique;
		 }	
		
		public function XML_LOADER(){
			// temp need change 
			Security.allowDomain("*");
			urlLoader = new myLoader();
			urlLoader.addEventListener(Event.COMPLETE, XML_COMPLETE);
			urlLoader.addEventListener(IOErrorEvent.IO_ERROR, XML_ERROR);
			urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, XML_ERROR);
			urlLoader1 = new myLoader();
			urlLoader1.addEventListener(Event.COMPLETE, XML_COMPLETE);
			urlLoader1.addEventListener(IOErrorEvent.IO_ERROR, XML_ERROR);
			urlLoader1.addEventListener(SecurityErrorEvent.SECURITY_ERROR, XML_ERROR);
			urlLoader2 = new myLoader();
			urlLoader2.addEventListener(Event.COMPLETE, XML_COMPLETE);
			urlLoader2.addEventListener(IOErrorEvent.IO_ERROR, XML_ERROR);
			urlLoader2.addEventListener(SecurityErrorEvent.SECURITY_ERROR, XML_ERROR);
		}
		
		public function goToURL(urlstring:String):void{
			if((urlstring !=null) && (urlstring.length>0)){
				var myURL:URLRequest = new URLRequest(urlstring);
				navigateToURL(myURL,"_blank");
				_appControls._info("show more info url"+urlstring);
			}
		}
		public function sendToURLNow(URL:String, EVE_NAME:String):void{
			var request:URLRequest = new URLRequest(URL);
            try {
            	if(URL.length>7){
                	sendToURL(request);
                	_appControls._warn("SENDING "+EVE_NAME, URL);
             	} else {
             		_appControls._error("SENDING "+EVE_NAME+" ERROR - NO URL TO SEND ", URL)
             	}
            }
            catch (e:Error) {
            	_appControls._error("SEND TO URL ERROR ", e)
            }

		}
		
		public function XML_LOAD_PARAM(URL:String, EVE_NAME:String, param:*):void{
			try{
				var urlRequest:URLRequest = new URLRequest(URL);
				urlRequest.data =  param;
				urlRequest.method= URLRequestMethod.POST;
				//var urlLoader:myLoader = new myLoader();
				if(!triedPrimary){
				urlLoader.name = EVE_NAME;
				triedPrimary = true;
				urlLoader.load(urlRequest);
				}else if(!triedSecondary){
					urlLoader1.name = EVE_NAME;
					triedSecondary = true;
					urlLoader1.load(urlRequest);
				}else if(!triedFinally){
					urlLoader2.name = EVE_NAME;
					triedFinally = true;
					urlLoader2.load(urlRequest);
				}else{
					var urlLoader:myLoader = new myLoader();
					urlLoader.name = EVE_NAME;
					urlLoader.addEventListener(Event.COMPLETE, XML_COMPLETE);
					urlLoader.addEventListener(IOErrorEvent.IO_ERROR, XML_ERROR);
					urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, XML_ERROR);
					urlLoader.load(urlRequest);
				}
	 		}catch (e:Error){
	 			Alert.show("XML Loader Error trying load "+ URL +" :\n "+e);
	 			trace("XML Loader Error: "+e);
	 		}
		}
		
 		public function XML_LOAD(URL:String, EVE_NAME:String):void{
	 		try{
				//CursorManager.setBusyCursor();
				var urlRequest:URLRequest = new URLRequest(URL);
			//	urlRequest.method = URLRequestMethod.GET;
				//var urlLoader:URLLoader = new URLLoader();
		    //	var urlLoader:myLoader = new myLoader();
				//urlLoader = new myLoader();
				if(!triedPrimary){
				urlLoader.name = EVE_NAME;
				triedPrimary = true;
				urlLoader.load(urlRequest);
				}else if(!triedSecondary){
					urlLoader1.name = EVE_NAME;
					triedSecondary = true;
					urlLoader1.load(urlRequest);
				}else if(!triedFinally){
					urlLoader2.name = EVE_NAME;
					triedFinally = true;
					urlLoader2.load(urlRequest);
				}else{
					var urlLoader:myLoader = new myLoader();
					urlLoader.name = EVE_NAME;
					urlLoader.addEventListener(Event.COMPLETE, XML_COMPLETE);
					urlLoader.addEventListener(IOErrorEvent.IO_ERROR, XML_ERROR);
					urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, XML_ERROR);
					urlLoader.load(urlRequest);
				}
	 		}catch (e:Error){
	 			Alert.show("XML Loader Error trying load "+ URL +" :\n "+e);
	 			trace("XML Loader Error: "+e);
	 		}
		}
		
		public function XML_LOAD_TXTFILE(URL:String, EVE_NAME:String):void{
			try{
//				CursorManager.setBusyCursor();
				var urlRequest:URLRequest = new URLRequest(URL);
				var urlLoader:myLoader = new myLoader();
			//	urlLoader = new myLoader();
				urlLoader.name = EVE_NAME;
				urlLoader.dataFormat = URLLoaderDataFormat.TEXT;
				urlLoader.addEventListener(Event.COMPLETE, XML_COMPLETE);
				urlLoader.addEventListener(IOErrorEvent.IO_ERROR, XML_ERROR);
				urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, XML_ERROR);
				urlLoader.load(urlRequest);
			}catch (e:Error){
				Alert.show("XML Loader Error trying load "+ URL +" :\n "+e);
				trace("XML Loader Error: "+e);
			}
		}
//        private function cleanEvents():void{
//			//urlLoader.removeEventListener();
//			urlLoader.removeEventListener(Event.COMPLETE, XML_COMPLETE);
//			urlLoader.removeEventListener(IOErrorEvent.IO_ERROR, XML_ERROR);
//			urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, XML_ERROR);
//			urlLoader = null;
//		}
		public function XML_COMPLETE(e:Event):void {
			try{
				if(triedPrimary)
					triedPrimary = false;
				else if(triedSecondary)
					triedSecondary = false;
				else if(triedFinally)
					triedFinally = false;
			    CursorManager.removeBusyCursor();
			    xml = new XML(e.target.data);
			   /*
			     <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
			        <faultResponse>
			           <messages>
			             <code>401</code>
			             <message>Unauthorized</message>
			           </messages>
			          <status>0</status>
			        </faultResponse>
			   */
//			    e.currentTarget.name=="KEEP_SESSION_LIVE"
			    // if respond XML containe code 401
			    if(xml.messages.code=="402"){
			    	  switch (e.currentTarget.name){
			   				case "KEEP_SESSION_LIVE":
			   					logOutLoad(e);
			   					break;
			   				case "TOKEN_RESPONSE":
			   				    logOutLoad(e);
			   					break;
			   				case "PRESET_UPDATE":
			   				 	logOutLoad(e);
			   					break;
			   				default:
			   					//Alert.show(e.currentTarget.name);
			   					break;
			   		  }
			    } else {
			    	 _appControls.DispMainEvent(e.currentTarget.name, true, xml);
			    }
				
			} catch (e:Error){
//				Alert.show("XML Loader Error :\n "+e.toString());
//				trace("Error from XML Loader "+e.name);
			}
		//	finally{
			
		//	}
			
			
		}
		public function logOutLoad(e:Object):void{
				var date:Date = new Date();
				//_appControls.DispMainEvent("USER_LOGOUT_EXCEPTION", true, null);
		    	var XMLrespond:XML = new XML(<keepAliveResponse><messages><code>402</code><message>Request Faile</message></messages><status>0</status></keepAliveResponse>);
		    	var obj:Object = XMLrespond as Object;
		    	_appControls.DispMainEvent(e.currentTarget.name, false, obj);
		    	errorLogOut(e.currentTarget.name+" \n"+String(date)+"\n Error from XML_ERROR:", e.toString());
		}
		public function XML_ERROR(e:Event):void{
			//e.currentTarget.name=="SPECIFIC_CHANEL_META"
			if(triedPrimary)
			triedPrimary = false;
			else if(triedSecondary)
			triedSecondary = false
			else if(triedFinally)
			triedFinally = false;
			CursorManager.removeBusyCursor();
			var obj:Object =  new Object();
			var date:Date = new Date();
			// Sirius code
			//Alert.show(""+e.currentTarget.name);
			switch (e.currentTarget.name){
				case "CHANEL_META_NEW":
					break;
				case "UPDATE_SPECIFIC_CHANNEL":
					break;
				case "SPECIFIC_CHANEL_META":
					break;
				case "Artist_BIO":
					//Alert.show("Artist Bio not available");
					break;
				case "HISTORICAL_PDT":
					break;
				case "HISTORICAL_PDT_RESPONSE":
					break;
				case "LOGIN_PAGE_DATA":
					//Alert.show("Artist Bio not available");
					break;
				default:
					var XMLrespond:XML = new XML(<keepAliveResponse><messages><code>401</code><message>Request Faile</message></messages><status>0</status></keepAliveResponse>);
					obj = XMLrespond as Object;
					//Alert.show("XMLrespond"+XMLrespond);
//					Alert.show(e.currentTarget.name);
					_appControls._warn("Unexpected error on the server.\n",e.currentTarget.name);
					//Alert.show("Unexpected error on the server");
					_appControls.DispMainEvent("USER_LOGOUT_XML_ERROR", true, null);
					_appControls.DispMainEvent(e.currentTarget.name, false, obj);
				break;
			}
			errorLogOut(e.currentTarget.name+" \n"+String(date)+"\n Error from XML_ERROR:", e.toString());
			trace("Error from XML_ERROR: \n"+e.toString());
			
		}
		
		public function errorLogOut(target:String, e:String):void{
			var errorObj:Object =  new Object();	
			errorObj.target = target;
			errorObj.error = e;
			_appControls.DispMainEvent("ERROR_LOG_ADD", true, errorObj);
		}
	}
}