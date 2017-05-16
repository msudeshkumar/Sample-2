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
		String X = null;
		List files = new List();
		List apktoolfiles = new List();
		//List<int>
		int[][] train_X_perm = new int[6][6];
		int[][] train_X_func = new int[6][6];
		int[][] train_X = new int[6][6];
		int[][] train_Y = new int[6][6];
		int[][] test_X  = new int[6][6];
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
		System.out.println("Done 1");
		for(int k=0,h=0;k<apktoolfiles.getItemCount();k++)
		//for(int k=0;k<6;k++)
		{
			train_X_perm[h++] = PermissionExtraction.permissionExtractor(apktoolfiles.getItem(k));
		}
		System.out.println("Done 2");
		for(int k=0,h=0;k<apktoolfiles.getItemCount();k++)
		//for(int k=0;k<6;k++)
		{
			train_X_func[h++] = APIFeatureExtractor.apiFeatureExtractor(apktoolfiles.getItem(k));
		}
		System.out.println("Done 3");
		for(int l=0;l<apktoolfiles.getItemCount();l++)
		{
			train_X[l] = combine(train_X_perm[l],train_X_func[l]);
		}
		System.out.println("Done 4");
		for(int m=0;m<files.getItemCount();m++)
		{
			X = files.getItem(m);
			//X.
			//System.out.println(files.getItem(m));
			//System.out.println(
			//System.out.println(
			//int i1 = files.getItem(m).indexOf("{");
			//int i2 = files.getItem(m).indexOf("}");
			//System.out.println(i1);
			//System.out.println(i2+1);
			//if(files.getItem(m).substring((files.getItem(m).indexOf("{")), ((files.getItem(m).indexOf("}"))+1)).compareTo("{**malware**}")==0)
			//if(X.substring(i1, i2+1).compareTo("{**malware**}")==0)
			if(X.contains("{**malware**}"))
			{
				//train_Y[m] = {1,0};
				//Arrays.fill(train_Y[m][0],1);
				System.out.println(X);
				train_Y[m][0] = 1;
				train_Y[m][1] = 0;
			}
			else
			{
				train_Y[m][0] = 0;
				train_Y[m][1] = 1;
			}
		}
		System.out.println("Done 5");
		for(int x=0;x<train_X.length;x++)
		{
			for(int x1=0;x1<train_X[x].length;x1++)
			{
				System.out.print("["+train_X[x][x1]+"]");
			}
			System.out.println();
		}
		System.out.println("Done 6");
		for(int y=0;y<train_Y.length;y++)
		{
			for(int y1=0;y1<train_Y[y].length;y1++)
			{
				System.out.print("["+train_Y[y][y1]+"]");
			}
			System.out.println();
		}
		System.out.println("Done 7");
	}
	public static int[] combine(int[] a, int[] b){
        int length = a.length + b.length;
        int[] result = new int[length];
        System.arraycopy(a, 0, result, 0, a.length);
        System.arraycopy(b, 0, result, a.length, b.length);
        return result;
    }

}
