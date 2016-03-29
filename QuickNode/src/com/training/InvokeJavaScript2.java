package com.training;

import java.io.FileReader;
import java.io.IOException;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

public class InvokeJavaScript2 {

	public static void main(String[] args) {

		try {

			ScriptEngine engine = new ScriptEngineManager().getEngineByName("JavaScript");
			engine.eval(new FileReader("Sample.js"));

		} catch (IOException | ScriptException e) {
			e.printStackTrace();
		}

	}

}
