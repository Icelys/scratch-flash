package primitives {
	import flash.utils.Dictionary;
	import blocks.*;
	import interpreter.*;
	import scratch.*;

public class ExperimentPrims {

	private var app:Scratch;
	private var interp:Interpreter;

	private var password:*;

	public function ExperimentPrims(app:Scratch, interpreter:Interpreter) {
		this.app = app;
		this.interp = interpreter;
	}

	public function addPrimsTo(primTable:Dictionary, specialTable:Dictionary):void {
		primTable["setPass"]     = primSetPass;
		primTable["checkPass"]   = primCheck;
		primTable["ifElseR"]     = primIE;
	}

	private function primSetPass(b:Array):void {
		password = b[0];
	}

	private function primCheck(b:Array):Boolean {
		return b[0] == password;
	}

	private function primIE(b:Array):* {
		return b[0] ? b[1] : b[2];
	}


}

}
