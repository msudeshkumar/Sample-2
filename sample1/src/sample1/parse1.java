package sample1;

import java.io.BufferedReader;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class parse1 {
	public static void main(String[] args) throws IOException
	{
	 FileReader fr = new FileReader("/tmp/op1/smali/com/sec/android/app/camera/shootingmode/dualPermissionUtils.smali");
	 BufferedReader br = new BufferedReader(fr);
	 int x=45;
	 String st= null;
	 //while(x>0)
	 while((st=br.readLine())!=null)
	 {
		 if(st.isEmpty())
		 {
			 //System.out.println("NULL");
			 continue;
		 }
		 else if(st.trim().startsWith("# direct methods"))
		 {
			 do{
				if(st.trim().startsWith("invoke"))
				{
					System.out.println("Function Call:"+st);
				}
				else
				{
				 //System.out.print("If #:"+st+"\n");
					continue;
				}
					 //st=br.readLine();
				 }
				 //while(!(st.startsWith(".end method")));
				 while((st=br.readLine())!=null);
			 //if((st.indexOf("->")=x)>0)
				 
		 }
	 }
	 //System.out.println(st.toCharArray());
	 /*st=br.readLine();
	 st=br.readLine();
	 st=br.readLine();
	 st=br.readLine();
	 //System.out.println(st.toCharArray());
	 st=br.readLine();
	 //System.out.println(st.toCharArray());
	 st=br.readLine();
	 if((st.toCharArray()[0])=='#')
	 System.out.println(st.toCharArray()[0]);
	 st=br.readLine();
	 System.out.println("This 1:"+st);
	 //System.out.println(st);
	 st=br.readLine();
	 if(st.isEmpty())
	 {
		 System.out.println("New Line:");
		 System.out.println(st);
		 System.out.println(st);
		 System.out.println(st);
	 }
	 else
	 {
		 System.out.println("Null:"+st);
	 }
	 //System.out.println("NULL:"+st);
	 st=br.readLine();
	 System.out.println(st);
	 st=br.readLine();
	 System.out.println(st);
	 st=br.readLine();
	 System.out.println(st);
	 st=br.readLine();
	 System.out.println(st);
	 st=br.readLine();
	 System.out.println(st);*/
	}

}
