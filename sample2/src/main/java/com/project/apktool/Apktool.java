package com.project.apktool;

import com.project.utils.LinuxInteractor;
import com.project.utils.Str_Int;

public class Apktool {
	public static void ApktoolExec(String apkfilepath)
	{
		String ipfile = apkfilepath;			
		LinuxInteractor li = new LinuxInteractor();
		try
		{
			Str_Int op = li.executeCommand("/usr/bin/java -jar /opt/apktool_2.2.2.jar/apktool_2.2.2.jar d "+ipfile+" -o \"/tmp/op\" -f",true);
			System.out.println("Response: "+op.get_respstring()+"Exit Status: "+op.get_exitstat());
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}