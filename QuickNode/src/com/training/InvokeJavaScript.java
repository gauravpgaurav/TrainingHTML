package com.training;

import java.io.FileReader;
import java.io.IOException;

import javax.script.Invocable;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

public class InvokeJavaScript {

	public static void main(String[] args) {

		try {

			ScriptEngine engine = new ScriptEngineManager().getEngineByName("JavaScript");
			engine.eval(new FileReader("MyScript.js"));

			Invocable invoc = (Invocable) engine;

			Object result = invoc.invokeFunction("fun1", "Gaurav Pant");

			System.out.println(result);

		} catch (IOException | ScriptException | NoSuchMethodException e) {
			e.printStackTrace();
		}

	}

}
