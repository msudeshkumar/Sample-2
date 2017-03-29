package sample1;

import java.io.*;
//import javax.xml.*;
import javax.xml.parsers.*;

//import org.w3c.*;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class andmanparse1 
{
	public static void main(String[] args) throws ParserConfigurationException, IOException
	{
		try
		{
			BufferedWriter output = new BufferedWriter(new FileWriter("/tmp/op4/perm.txt"));
			int i=0;
			File input = new File("/tmp/op4/AndroidManifest.xml");
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(input);
			doc.getDocumentElement().normalize();
			NodeList ndList = doc.getElementsByTagName("uses-permission");
			for(i=0;i<ndList.getLength();i++)
			{
				Node nNode = ndList.item(i);
				Element e = (Element)nNode;
				//System.out.println("Permission: "+e.getAttribute("android:name"));
				output.write(e.getAttribute("android:name").toString());
				output.newLine();
			}
			//System.out.println(i);
			output.close();
		}
		catch (Exception e) 
		{
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}