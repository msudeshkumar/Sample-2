package com.project.fileexplorer;

import java.awt.List;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class FileExplorer {
	static ArrayList<String> l1 = new ArrayList<String>();
	//static String filename = "/tmp/op/smali";
	public static List explorer(String fname)
	{
		List filenamelist = new List();
		String filename = fname;
		try
		{
			BufferedWriter op = new BufferedWriter(new FileWriter("/tmp/op/smalilist.txt"));
			searcher(filename);
			for(int j=0;j<l1.size();j++)
			{
				op.write(l1.get(j).toString());
				filenamelist.add(l1.get(j).toString());
				op.newLine();
			}
			op.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return filenamelist;
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
		    			l1.add(listOfFiles[i].getPath().toString()+listOfFiles[i].getName().toString());
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
}