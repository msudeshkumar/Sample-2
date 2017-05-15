package com.project.apktool;

import java.awt.List;

import com.project.utils.LinuxInteractor;
import com.project.utils.Str_Int;

public class Apktool {
	public static void ApktoolExec(List apkfilepath)
	{
		List ipfile = apkfilepath;
		LinuxInteractor li = new LinuxInteractor();
		try
		{
			for(int i=0;i<ipfile.getItemCount();i++)
			{
				Str_Int op = li.executeCommand("/usr/bin/java -jar /opt/apktool_2.2.2.jar/apktool_2.2.2.jar d "+ipfile.getItem(i)+" -o \"/tmp/op/"+ipfile.getItem(i)+"\" -f",true);
				System.out.println("Response: "+op.get_respstring()+"Exit Status: "+op.get_exitstat());
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}