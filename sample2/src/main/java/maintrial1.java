import java.awt.List;
import java.io.IOException;
//import java.util.List;
//import java.
import java.util.Arrays;

//import org.apache.commons.lang.ArrayUtils;

import com.project.fileexplorer.ApkFileExplorer;
import com.project.fileexplorer.FileExplorer;
import com.project.apktool.Apktool;
import com.project.smaliparser.SmaliParser1;
import com.project.androidmanifestparser.AndroidManifestParser;
import com.project.featureextraction.*;
public class maintrial1 {
	public static void main(String[] args) throws IOException
	{
		/*String trainpath = args[1];
		String testpath = args[2];*/
		String trainpath = "/home/msudesh_kumar/Documents/apkfiles2";
		String testpath = null;
		List files = new List();
		List apktoolfiles = new List();
		//List<int>
		int[][] train_X_perm = {};
		int[][] train_X_func = {};
		int[][] train_X = {};
		int[][] train_Y = {};
		int[][] test_X  = {};
		files = ApkFileExplorer.apkexplorer(trainpath);
		apktoolfiles = Apktool.ApktoolExec(files);
		for(int i=0;i<apktoolfiles.getItemCount();i++)
		{
			FileExplorer.explorer(apktoolfiles.getItem(i));
		}
		SmaliParser1.smaliparse(apktoolfiles);
		for(int j=0;j<apktoolfiles.getItemCount();j++)
		{
			AndroidManifestParser.parse(apktoolfiles.getItem(j));
		}
		for(int k=0;k<apktoolfiles.getItemCount();k++)
		{
			train_X_perm[k] = PermissionExtraction.permissionExtractor(apktoolfiles.getItem(k));
		}
		for(int k=0;k<apktoolfiles.getItemCount();k++)
		{
			train_X_func[k] = APIFeatureExtractor.apiFeatureExtractor(apktoolfiles.getItem(k));
		}
		for(int l=0;l<apktoolfiles.getItemCount();l++)
		{
			train_X[l] = combine(train_X_perm[l],train_X_func[l]);
		}
		for(int m=0;m<files.getItemCount();m++)
		{
			if(files.getItem(m).trim().substring((files.getItem(m).indexOf('{')), (files.getItem(m).indexOf('}')+1))=="{**malware**}")
			{
				//train_Y[m] = {1,0};
				//Arrays.fill(train_Y[m][0],1);
				train_Y[m][0] = 1;
				train_Y[m][1] = 0;
			}
			else
			{
				train_Y[m][0] = 0;
				train_Y[m][1] = 1;
			}
		}
		for(int x=0;x<train_X.length;x++)
		{
			System.out.println(train_X.toString());
		}
		for(int y=0;y<train_X.length;y++)
		{
			System.out.println(train_Y.toString());
		}
	}
	public static int[] combine(int[] a, int[] b){
        int length = a.length + b.length;
        int[] result = new int[length];
        System.arraycopy(a, 0, result, 0, a.length);
        System.arraycopy(b, 0, result, a.length, b.length);
        return result;
    }

}
