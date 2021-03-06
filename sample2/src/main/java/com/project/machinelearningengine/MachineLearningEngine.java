package com.project.machinelearningengine;
import java.io.File;
import jsat.ARFFLoader;
import jsat.DataSet;
import jsat.classifiers.CategoricalResults;
import jsat.classifiers.ClassificationDataSet;
import jsat.classifiers.Classifier;
import jsat.classifiers.DataPoint;
import jsat.classifiers.bayesian.NaiveBayes;
import jsat.classifiers.svm.*;
public class MachineLearningEngine {
	public static int[][] machineLearner(String fpath, String tfpath, int testdim)
	{
		File fp = new File(fpath);
		File tfp = new File(tfpath);
		CategoricalResults ct = new CategoricalResults(2);
		DataSet dataSet = ARFFLoader.loadArffFile(fp);
		DataSet tdat = ARFFLoader.loadArffFile(tfp);
		ClassificationDataSet cDataSet = new ClassificationDataSet(dataSet, 0);
		ClassificationDataSet tDataSet = new ClassificationDataSet(tdat, 0);
		int[][] macres = new int[testdim][2];
		double[][] dmacres = new double[testdim][2];
        Classifier classifier = new DCD();
        classifier.trainC(cDataSet);
        for(int i=0;i<tDataSet.getSampleSize();i++)
        {
        	ct = classifier.classify(tDataSet.getDataPoint(i));
        	//dmacres = ct.getProb(0);
        	if(ct.getProb(0)<=0) 
        	{
        		macres[i][0]=0; 
        		macres[i][1]=1;
        	}
        	else
        	{
        		macres[i][0]=1;
        		macres[i][1]=0;
        	}
        	//macres = ct.getProb(0);
        	System.out.println(ct.toString());
        }
        return macres;
	}

}
