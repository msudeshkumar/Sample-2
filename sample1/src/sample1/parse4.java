package sample1;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

public class parse4 {
	public static void main(String[] args) throws IOException
	{
		FileReader fr = null;
		BufferedReader br = null;
		ArrayList<String> filepaths = new ArrayList<String>();
		BufferedWriter op = new BufferedWriter(new FileWriter("/tmp/op4/funcop3.txt"));
		filepaths.add("/tmp/op4/smali/com/paget96/lspeed/a$2.smali");
		filepaths.add("/tmp/op4/smali/com/paget96/lspeed/a$a.smali");
		filepaths.add("/tmp/op4/smali/com/paget96/lspeed/a$b.smali");
		filepaths.add("/tmp/op4/smali/com/paget96/lspeed/a$c.smali");
		/*filepaths.add("/tmp/op3/smali/aaa.smali");
		filepaths.add("/tmp/op3/smali/aab.smali");
		filepaths.add("/tmp/op3/smali/aac.smali");
		filepaths.add("/tmp/op3/smali/aad.smali");
		filepaths.add("/tmp/op3/smali/aae.smali");
		filepaths.add("/tmp/op3/smali/aaf.smali");
		filepaths.add("/tmp/op3/smali/aag.smali");
		filepaths.add("/tmp/op3/smali/aah.smali");
		filepaths.add("/tmp/op3/smali/aai.smali");
		filepaths.add("/tmp/op3/smali/aaj.smali");
		filepaths.add("/tmp/op3/smali/aak.smali");
		filepaths.add("/tmp/op3/smali/aal.smali");
		filepaths.add("/tmp/op3/smali/aam.smali");
		filepaths.add("/tmp/op3/smali/aan.smali");
		filepaths.add("/tmp/op3/smali/vt.smali");
		filepaths.add("/tmp/op3/smali/wh.smali");
		filepaths.add("/tmp/op3/smali/wm.smali");
		filepaths.add("/tmp/op3/smali/wv.smali");
		filepaths.add("/tmp/op3/smali/xa.smali");*/
		for(int i=0;i<filepaths.size();i++)
		{
			fr = new FileReader(filepaths.get(i));
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
				 		System.out.println(" direct  Function Call:"+st.trim().substring(st.indexOf("},")-2).trim());
				 		op.write(st.trim().substring(st.indexOf("},")-2).trim());
				 		op.newLine();
				 	}
				 	else if(st.trim().startsWith("invoke-virtual"))
				 	{
				 		System.out.println(" virtual Function Call:"+st.trim().substring(st.indexOf("},")-2).trim());
				 		op.write(st.trim().substring(st.indexOf("},")-2).trim());
				 		op.newLine();
				 	}
				 	else if(st.trim().startsWith("invoke-interface"))
				 	{
				 		System.out.println(" interface Function Call:"+st.trim().substring(st.indexOf("},")-2).trim());
				 		op.write(st.trim().substring(st.indexOf("},")-2).trim());
				 		op.newLine();
				 	}
				 	else
				 	{
				 		continue;
				 	}
			 	}
				while((st=br.readLine())!=null);
		}
	 }
	System.out.println("\n-------------------------------------------------------------------------------------------------------------------\n");
	}
	br.close();
	fr.close();
	op.close();
	}

}
