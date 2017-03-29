package sample1;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
//import brut.androlib.*;
//import brut.androlib.Androlib;

//import brut.androlib.Androlib;

public class term4 {
	public static void main(String args[])
	{
		try
		{
			/*File ipfilename = new File("/home/msudesh_kumar/Documents/apkFiles/HelloWorld_v1.0_apkpure.com.apk");
			File opfilename = new File("/home/msudesh_kumar/Documents/op");
			Androlib ab = new Androlib();
			ab.build(ipfilename,opfilename);*/
			//File inputfile = new File("/home/msudesh_kumar/Documents/apkFiles/HelloWorld_v1.0_apkpure.com.apk");
			String ipfile1 = "/home/msudesh_kumar/Documents/apkFiles/\"com.sec.android.app.camera.shootingmode.dual_3.011-16_minAPI23(nodpi)_apkmirror.com.apk\"";
			String ipfile2 = "/home/msudesh_kumar/Documents/apkFiles/\"com.coinbase.android_4.0.0-99_minAPI15(nodpi)_apkmirror.com.apk\"";
			String ipfile3 = "/home/msudesh_kumar/Documents/apkFiles/\"com.google.android.talk_15.0.141104777-23686286_minAPI16(x86)(160dpi)_apkmirror.com.apk\"";
			String ipfile4 = "/home/msudesh_kumar/Documents/apkFiles/\"com.paget96.lspeed_1.4.6-beta2-90_minAPI15(nodpi)_apkmirror.com.apk\"";
			LinuxInteractor2 li = new LinuxInteractor2();
			stint op = li.executeCommand("/usr/bin/java -jar /opt/apktool_2.2.2.jar/apktool_2.2.2.jar d "+ipfile4+" -o \"/tmp/op4\" -f",true);
			//li.executeCommand("/usr/bin/java -jar /opt/apktool_2.2.2.jar/apktool_2.2.2.jar d \"/home/msudesh_kumar/Documents/apkFiles/HelloWorld_v1.0_apkpure.com.apk\" -o \"/tmp/op\" -f",true).
			System.out.println("Response: "+op.resp+"Exit Status: "+op.exitstat);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
