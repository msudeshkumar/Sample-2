package com.project.androidmanifestparser;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import java.io.*;
import javax.xml.parsers.*;

public class AndroidManifestParser {
	public static void parse(String filepath)
	{
		try
		{
			BufferedWriter output = new BufferedWriter(new FileWriter("/tmp/op/perm.txt"));
			int i=0;
			File input = new File(filepath);
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(input);
			doc.getDocumentElement().normalize();
			NodeList ndList = doc.getElementsByTagName("uses-permission");
			for(i=0;i<ndList.getLength();i++)
			{
				Node nNode = ndList.item(i);
				Element e = (Element)nNode;
				output.write(e.getAttribute("android:name").toString());
				output.newLine();
			}
			output.close();
		}
		catch (Exception e) 
		{
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
