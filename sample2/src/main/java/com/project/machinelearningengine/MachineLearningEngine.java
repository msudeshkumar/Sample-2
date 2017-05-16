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
	public static void machineLearner(String fpath, String tfpath)
	{
		File fp = new File(fpath);
		File tfp = new File(tfpath);
		DataSet dataSet = ARFFLoader.loadArffFile(fp);
		DataSet tdat = ARFFLoader.loadArffFile(tfp);
		ClassificationDataSet cDataSet = new ClassificationDataSet(dataSet, 0);
		ClassificationDataSet tDataSet = new ClassificationDataSet(tdat, 0);
		int errors = 0;
        Classifier classifier = new DCD();
        classifier.trainC(cDataSet);
        for(int i=0;i<tDataSet.getSampleSize();i++)
        {
        	classifier.classify(tDataSet.getDataPoint(i));
        }
	}

}
