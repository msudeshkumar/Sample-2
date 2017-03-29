package sample1;

import java.io.*;
import java.lang.ProcessBuilder.Redirect;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;


public class term3 {
		
	/*public static void main(String[] args) throws IOException {
		//ProcessBuilder p1 = new ProcessBuilder("/usr/bin/gnome-terminal.real");
		ProcessBuilder p1 = new ProcessBuilder("/bin/ls");
		//p1.command("/bin/ls");
		Process pr = p1.start();
		p1.redirectInput(Redirect.PIPE);
		PrintWriter pw = new PrintWriter(pr.getOutputStream());
	    pw.println("ls");
	    pw.flush();
	    p1.start();
		//p1.command("ls");
		//p1.st
	    //Process pr = new ProcessBuilder("/usr/bin/gnome-terminal.real").start();
	    //pr = new ProcessBuilder("ls").start();
	    //PrintWriter pw = new PrintWriter(pr.getOutputStream());
	    //pw.println("ls");
	    //pw.flush();
	    //InputStreamReader in = new InputStreamReader(pr.getInputStream());
	    //System.out.println(in.read());
	}
	/*public static void main(String[] args) throws IOException {
	    Process pr = new ProcessBuilder("python","/home/msudesh_kumar/Documents/androguard/androlyze.py","-s").start();
	    PrintWriter pw = new PrintWriter(pr.getOutputStream());
	    pw.println("ps");
	    pw.flush();
	    InputStreamReader in = new InputStreamReader(pr.getInputStream());
	    System.out.println(in.read());
	}*/
	
}