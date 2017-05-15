import java.awt.List;
import com.project.fileexplorer.ApkFileExplorer;
import com.project.fileexplorer.FileExplorer;
import com.project.apktool.Apktool;
public class maintrial1 {
	public static void main(String[] args)
	{
		String trainpath = args[1];
		String testpath = args[2];
		List files = new List();
		List apktoolfiles = new List();
		files = ApkFileExplorer.apkexplorer(trainpath);
		apktoolfiles = Apktool.ApktoolExec(files);
		for(int i=0;i<files.getItemCount();i++)
		{
			
			FileExplorer.explorer(files.getItem(i));
		}
		
	}

}
