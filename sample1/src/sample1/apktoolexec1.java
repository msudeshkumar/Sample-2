package sample1;

import java.io.File;

//import brut.androlib.Androlib;

public class apktoolexec1 {
	public static void main(String[] args)
	{
		File inputfile = new File("/home/msudesh_kumar/Documents/apkFiles/HelloWorld_v1.0_apkpure.com.apk");
		String ipfile = "/home/msudesh_kumar/Documents/apkFiles/HelloWorld_v1.0_apkpure.com.apk";
		try
		{
			//Runtime.getRuntime().exec("/usr/bin/java -jar /opt/apktool_2.2.2.jar/apktool_2.2.2.jar d \"/home/msudesh_kumar/Documents/apkFiles/HelloWorld_v1.0_apkpure.com.apk\" -o \"/home/msudesh_kumar/Documents/op\"");
			Runtime.getRuntime().exec("/usr/bin/java -jar /opt/apktool_2.2.2.jar/apktool_2.2.2.jar d "+ipfile+" -o \"/home/msudesh_kumar/Documents/op\"");
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
