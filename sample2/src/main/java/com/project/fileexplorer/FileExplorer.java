package com.project.fileexplorer;

import java.awt.List;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class FileExplorer {
	static ArrayList<String> l1 = new ArrayList<String>();
	//static String filename = "/tmp/op/smali";
	public static void explorer(String fname)
	{
		//List filenamelist = new List();
		l1.clear();
		String filename = fname;
		try
		{
			FileWriter fr = new FileWriter(filename+"/smalilist.txt");
			fr.flush();
			BufferedWriter op = new BufferedWriter(fr);
			op.flush();
			searcher(filename);
			for(int j=0;j<l1.size();j++)
			{
				op.write(l1.get(j).toString());
				//filenamelist.add(l1.get(j).toString());
				op.newLine();
			}
			fr.flush();
			//fr.close();
			op.flush();
			op.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//return filenamelist;
	}
	public static void searcher(String folderarg)
	{
		try
		{ 
			File folder = new File(folderarg);
			File[] listOfFiles = folder.listFiles();
		    	for (int i = 0; i < listOfFiles.length; i++) 
		    	{
		    		if (listOfFiles[i].isFile()) 
		    		{
		    			//l1.add(listOfFiles[i].getPath().toString()+listOfFiles[i].getName().toString());
		    			l1.add(listOfFiles[i].getPath().toString());
		    		} 
		    		else if (listOfFiles[i].isDirectory()) 
		    		{
		    			searcher(listOfFiles[i].toString());
		    		}
		    	}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static void main(String[] args)
	{
		List files = new List();
		files.add("/tmp/op/file0/smali");
		files.add("/tmp/op/file1/smali");
		files.add("/tmp/op/file2/smali");
		files.add("/tmp/op/file3/smali");
		for(int i=0;i<files.getItemCount();i++)
		{
			
			FileExplorer.explorer(files.getItem(i));
		}
	}
}