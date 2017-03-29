package sample1;

import java.io.File;

public class fileexplorer1 {
	public static void main(String[] args)
	{
		String filename = "/tmp/op4/smali";
		searcher(filename);
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
		    			System.out.println("File: " + listOfFiles[i].getName());
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