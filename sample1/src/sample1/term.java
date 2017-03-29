/*package sample1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class term {
	public static void main(String args[]) throws IOException, InterruptedException
	{
		//String[] cmd = {"/usr/bin/gnome-terminal.real","cd /home/msudesh_kumar/Documents/androguard","./androlyze.py -s"};
		String[] cmd = {"/usr/bin/gnome-terminal.real","cd /home/msudesh_kumar/Documents/androguard","xterm"};
		//./androlyze.py -s
		Runtime run = Runtime.getRuntime();
		Process pr = run.exec(cmd[0]);
		//pr = run.exec(cmd[1]);
		pr.waitFor();
		BufferedReader buf = new BufferedReader(new InputStreamReader(pr.getInputStream()));
		String line = "";
		while ((line=buf.readLine())!=null) {
		System.out.println(line);
		}
	}

}
*/