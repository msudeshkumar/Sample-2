package com.project.smaliparser;

import java.awt.List;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class SmaliParser1 {
	public static void smaliparse(List opfiles) throws IOException
	{
		List opfilepaths = opfiles;
		String X;
		BufferedWriter op = null;// new BufferedWriter(new FileWriter("/tmp/samp.txt"));
		FileReader frfin = null;
		BufferedReader brfin =null;
		for(int i=0;i<opfilepaths.getItemCount();i++)
		{
			//System.out.println(opfilepaths.getItem(i));
			X = null;
			//op = null;
			//op.flush();
			FileReader fr = new FileReader(opfilepaths.getItem(i)+"/smalilist.txt");
			BufferedReader br = new BufferedReader(fr);
			FileWriter fw = new FileWriter(opfilepaths.getItem(i)+"/func.txt");
			fw.flush();
			op = new BufferedWriter(fw);
			fw.flush();
			op.flush();
			//op.write(opfilepaths.getItem(i));
			//op.newLine();
			while((X = br.readLine())!=null)
			{	
				/*op.write(X);
				op.newLine();
				System.out.println(X);*/
				frfin = new FileReader(X);
				brfin = new BufferedReader(frfin);
				String st = null;
				while((st=brfin.readLine())!=null)
				{
					//System.out.println(st);
					//System.out.println(opfilepaths.getItem(i));
					//op.write(opfilepaths.getItem(i));
					op.flush();
					fw.flush();
					if(st.isEmpty())
					 {
						//System.out.println("Is Empty");
						 continue;
					 }
					 else if(st.trim().startsWith("# direct methods"))
					 {
						 do{
							 	if(st.trim().startsWith("invoke-direct"))
							 	{
							 		//System.out.println(" direct  Function Call:"+st.trim().substring(st.indexOf("},")-2).trim());
							 		op.write(st.trim().substring(st.indexOf("},")-2).trim());
							 		//op.write(opfilepaths.getItem(i));
							 		op.newLine();
							 	}
							 	else if(st.trim().startsWith("invoke-virtual"))
							 	{
							 		//System.out.println(" virtual Function Call:"+st.trim().substring(st.indexOf("},")-2).trim());
							 		op.write(st.trim().substring(st.indexOf("},")-2).trim());
							 		//op.write(opfilepaths.getItem(i));
							 		op.newLine();
							 	}
							 	else if(st.trim().startsWith("invoke-interface"))
							 	{
							 		//System.out.println(" interface Function Call:"+st.trim().substring(st.indexOf("},")-2).trim());
							 		op.write(st.trim().substring(st.indexOf("},")-2).trim());
							 		//op.write(opfilepaths.getItem(i));
							 		op.newLine();
							 	}
							 	else
							 	{
							 		continue;
							 	}
						 	}
							while((st=brfin.readLine())!=null);
					}
				}
				//op.flush();
			}
			//op = null;
			op.flush();
			fw.flush();
			//op.close();
			//op.
			//FileReader fr2 = new FileReader(br.readLine());
			//BufferedReader br2 = new BufferedReader(fr2);
			//System.out.println(br2.readLine());
		}
	}
	public static void main(String[] Args) throws IOException
	{
		List l1 = new List();
		l1.add("/tmp/op/file0/smali");
		l1.add("/tmp/op/file1/smali");
		l1.add("/tmp/op/file2/smali");
		//l1.add("/tmp/op/file3/smali/smalilist.txt/");
		smaliparse(l1);
	}
}
