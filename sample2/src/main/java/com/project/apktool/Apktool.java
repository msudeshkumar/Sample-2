package com.project.apktool;

import java.awt.List;

import com.project.utils.LinuxInteractor;
import com.project.utils.Str_Int;

public class Apktool {
	public static List ApktoolExec(List apkfilepath)
	{
		List ipfile = apkfilepath;
		List apklist = new List();
		LinuxInteractor li = new LinuxInteractor();
		try
		{
			for(int i=0;i<ipfile.getItemCount();i++)
			{
				Str_Int op = li.executeCommand("/usr/bin/java -jar /opt/apktool_2.2.2.jar/apktool_2.2.2.jar d \""+ipfile.getItem(i)+"\" -o \"/tmp/op/file"+i+"\" -f",true);
				apklist.add("/tmp/op/file"+i);
				System.out.println("Response: "+op.get_respstring()+"Exit Status: "+op.get_exitstat());
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return apklist;
	}
	public static void main(String[] args)
	{
		List l =new List();
		List l1 = new List();
		l.add("/home/msudesh_kumar/Documents/apkFiles/com.sec.android.app.camera.shootingmode.dual_3.011-16_minAPI23(nodpi)_apkmirror.com.apk");
		l.add("/home/msudesh_kumar/Documents/apkFiles/com.sec.android.sidesync.source_3.1.0.1963037-124_minAPI19(nodpi)_apkmirror.com.apk");
		l.add("/home/msudesh_kumar/Documents/apkFiles/com.coinbase.android_4.0.0-99_minAPI15(nodpi)_apkmirror.com.apk");
		l1 = ApktoolExec(l);
		for(int j=0;j<l1.getItemCount();j++)
		{
			System.out.println(l1.getItem(j));
		}
	}

}