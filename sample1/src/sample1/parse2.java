package sample1;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class parse2 {
	public static void main(String[] args) throws IOException
	{
		FileReader fr = null;
		BufferedReader br = null;
		String[] filepaths = new String[3];
		filepaths[0] = "/tmp/op1/smali/com/sec/android/app/camera/shootingmode/dualPermissionUtils.smali";
		filepaths[1] = "/tmp/op1/smali/com/sec/android/app/camera/shootingmode/dualRequestPermissionsActivity.smali";
		filepaths[2] = "/tmp/op1/smali/com/sec/android/app/camera/shootingmode/dualRequestPermissionsActivity$3.smali";
		for(int i=0;i<filepaths.length;i++)
		{
			fr = new FileReader(filepaths[i]);
			br = new BufferedReader(fr);
		String st= null;
	while((st=br.readLine())!=null)
	{
		 if(st.isEmpty())
		 {
			 continue;
		 }
		 else if(st.trim().startsWith("# direct methods"))
		 {
			 do{
				 	if(st.trim().startsWith("invoke-direct"))
				 	{
				 		System.out.println(" direct  Function Call:"+st);
				 	}
				 	else if(st.trim().startsWith("invoke-virtual"))
				 	{
				 		System.out.println(" virtual Function Call:"+st);
				 	}
				 	else if(st.trim().startsWith("invoke-interface"))
				 	{
				 		System.out.println(" interface Function Call:"+st);
				 	}
				 	else
				 	{
				 		continue;
				 	}
			 	}
				while((st=br.readLine())!=null);
		}
	 }
	System.out.println("----------------------------------------------------------------------------------");
	}
	br.close();
	fr.close();
	}

}
