import java.awt.List;
import java.io.IOException;

import com.project.fileexplorer.ApkFileExplorer;
import com.project.fileexplorer.FileExplorer;
import com.project.apktool.Apktool;
import com.project.smaliparser.SmaliParser1;
import com.project.androidmanifestparser.AndroidManifestParser;
public class maintrial1 {
	public static void main(String[] args) throws IOException
	{
		String trainpath = args[1];
		String testpath = args[2];
		List files = new List();
		List apktoolfiles = new List();
		files = ApkFileExplorer.apkexplorer(trainpath);
		apktoolfiles = Apktool.ApktoolExec(files);
		for(int i=0;i<files.getItemCount();i++)
		{
			FileExplorer.explorer(apktoolfiles.getItem(i));
		}
		SmaliParser1.smaliparse(apktoolfiles);
		for(int j=0;j<files.getItemCount();j++)
		{
			AndroidManifestParser.parse(apktoolfiles.getItem(j));
		}
	}

}
