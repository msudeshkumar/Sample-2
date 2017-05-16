package com.project.featureextraction;

import java.awt.List;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;

public class APIFeatureExtractor {
	public static int[] apiFeatureExtractor(String filepath) throws IOException
	{
		String fpaths = filepath;
		String X;
		String feac = null;
		int[] fea = {0,0,0,0,0,0};
		BufferedWriter op = null;
		int flag1 =0, flag2 =0;
		for(int i=0;i<fpaths.length();i++)
		{
			FileReader fr = new FileReader(fpaths+"/smali/func.txt");
			BufferedReader br = new BufferedReader(fr);
			FileWriter fw = new FileWriter(fpaths+"/APIFeatures.txt");
			//System.out.println(fpaths.getItem(i)+"/APIFeatures.txt");
			op = new BufferedWriter(fw);
			while((X=br.readLine())!=null)
			{
				//System.out.println(X);
				//System.out.println("#"+X.trim().substring(0, X.indexOf(")")+1));
				if(X.isEmpty())
				 {
					//System.out.println("Is Empty");
					 continue;
				 }
				if((X.trim().substring(0, X.indexOf(")")+1)).compareTo("Landroid/content/Context;->getApplicationContext()")==0)
				{
					//System.out.println("**"+X.trim().substring(0, X.indexOf(")"))+":"+"Landroid/content/Context;->getApplicationContext()");
					//flag1 = 1;
					fea[0] = 1;
				}
				if((X.trim().substring(0, X.indexOf(")")+1)).compareTo("Landroid/content/Intent;->getAction()")==0)
				{
					//System.out.println("**"+X.trim().substring(0, X.indexOf(")"))+":"+"Landroid/content/Intent;->getAction()");
					//flag2 = 1;
					fea[1] = 1;
				}
				if((X.trim().substring(0, X.indexOf(")")+1)).compareTo("Landroid/content/DialogInterface;->dismiss()")==0)
				{
					//System.out.println("**"+X.trim().substring(0, X.indexOf(")"))+":"+"Landroid/content/DialogInterface;->dismiss()");
					//flag2 = 1;
					fea[2] = 1;
				}
				if((X.trim().substring(0, X.indexOf(")")+1)).compareTo("Landroid/view/MotionEvent;->getPointerCount()")==0)
				{
					//System.out.println("**"+X.trim().substring(0, X.indexOf(")"))+":"+"Landroid/view/MotionEvent;->getPointerCount()");
					//flag2 = 1;
					fea[3] = 1;
				}
				if((X.trim().substring(0, X.indexOf(")")+1)).compareTo("Landroid/app/AlertDialog;->isShowing()")==0)
				{
					//System.out.println("**"+X.trim().substring(0, X.indexOf(")"))+":"+"Landroid/app/AlertDialog;->isShowing()");
					//flag2 = 1;
					fea[4] = 1;
				}
				if((X.trim().substring(0, X.indexOf(")")+1)).compareTo("Landroid/os/CountDownTimer;-><init>(JJ)")==0)
				{
					//System.out.println("**"+X.trim().substring(0, X.indexOf(")"))+":"+"Landroid/app/AlertDialog;->isShowing()");
					//flag2 = 1;
					fea[5] = 1;
				}
			}
			feac = Arrays.toString(fea);
			//System.out.println(feac);
			op.write(feac);
			//op.newLine();
			op.close();
		}
		//feac = fea.toString();
		return fea;
		
	}
	public static void main(String[] Args) throws IOException
	{
		List l1 = new List();
		int[] i1 = {};
		l1.add("/tmp/op/file0");
		l1.add("/tmp/op/file1");
		l1.add("/tmp/op/file2");
		//l1.add("/tmp/op/file3/smali/smalilist.txt/");
		for(int i=0;i<l1.getItemCount();i++)
		{
			i1 = null;
			i1 = apiFeatureExtractor(l1.getItem(i));
			for(int j=0;j<i1.length;j++)
			{
				System.out.println(i1[j]);
			}
		}
		
	}

}
