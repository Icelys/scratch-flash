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

	private function primSetPass(b:Block):void {
		password = interp.arg(b, 0);
	}

	private function primCheck(b:Block):Boolean {
		return interp.arg(b, 0) == password;
	}

	private function primIE(b:Block):* {
		return interp.arg(b, 0) ? interp.arg(b, 1) : interp.arg(b, 2);
	}


}

}
