package sample1;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

public class parse5 {
	public static void main(String[] args) throws IOException
	{
		FileReader fr = null;
		BufferedReader br = null;
		ArrayList<String> filepaths = new ArrayList<String>();
		BufferedWriter op = new BufferedWriter(new FileWriter("/tmp/op4/funcop4.txt"));
		filepaths.add("/tmp/op4/smali/android/support/v7/app/a.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/a$a.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/a$b.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/a$c.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$1.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$2.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$3.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$4.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$5.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$a.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$a$1.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$a$2.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$a$3.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$a$4.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$a$a.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$b.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$c.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/AlertController$RecycleListView.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/b.smali");
		filepaths.add("/tmp/op4/smali/android/support/v7/app/b$1.smali");
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
