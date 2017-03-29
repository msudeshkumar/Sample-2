package sample1;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

public class parse3 {
	public static void main(String[] args) throws IOException
	{
		FileReader fr = null;
		BufferedReader br = null;
		ArrayList<String> filepaths = new ArrayList<String>();
		BufferedWriter op = new BufferedWriter(new FileWriter("/tmp/op2/funcop2.txt"));
		filepaths.add("/tmp/op2/smali/org/joda/money/format/AmountPrinterParser.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/GroupingStyle.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/LiteralPrinterParser.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyAmountStyle.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyFormatException.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyFormatter.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyFormatterBuilder.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyFormatterBuilder$1.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyFormatterBuilder$SingletonPrinters.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyFormatterBuilder$Singletons.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyFormatterBuilder$Singletons$1.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyFormatterBuilder$Singletons$2.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyFormatterBuilder$Singletons$3.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyParser.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyPrintContext.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MoneyPrinter.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/format/MultiPrinterParser.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/BigMoney.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/BigMoneyProvider.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/CurrencyMismatchException.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/CurrencyUnit.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/CurrencyUnitDataProvider.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/DefaultCurrencyUnitDataProvider.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/IllegalCurrencyException.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/Money.smali");
		filepaths.add("/tmp/op2/smali/org/joda/money/MoneyUtils.smali");
		filepaths.add("/tmp/op2/smali/org/joda/time/Chronology.smali");
		filepaths.add("/tmp/op2/smali/org/joda/time/DateMidnight.smali");
		filepaths.add("/tmp/op2/smali/org/joda/time/ReadWritablePeriod.smali");
		filepaths.add("/tmp/op2/smali/org/joda/time/ReadableInterval.smali");
		filepaths.add("/tmp/op2/smali/org/joda/time/LocalTime.smali");
		filepaths.add("/tmp/op2/smali/org/joda/time/DurationFieldType.smali");
		filepaths.add("/tmp/op2/smali/org/joda/time/IllegalInstantException.smali");
		filepaths.add("/tmp/op2/smali/org/joda/time/MutableDateTime.smali");
		for(int i=0;i<filepaths.size();i++)
		{
			fr = new FileReader(filepaths.get(i));
			br = new BufferedReader(fr);
			String st= null;
	while((st=br.readLine())!=null)
	{
		 if(st.isEmpty())
		 {
			 continue;
		 }
		 else if(st.trim().startsWith("# direct methods"))
		 {
			 do{
				 	if(st.trim().startsWith("invoke-direct"))
				 	{
				 		System.out.println(" direct  Function Call:"+st.trim().substring(st.indexOf("},")-2).trim());
				 		op.write(st.trim().substring(st.indexOf("},")-2).trim());
				 		op.newLine();
				 	}
				 	else if(st.trim().startsWith("invoke-virtual"))
				 	{
				 		System.out.println(" virtual Function Call:"+st.trim().substring(st.indexOf("},")-2).trim());
				 		op.write(st.trim().substring(st.indexOf("},")-2).trim());
				 		op.newLine();
				 	}
				 	else if(st.trim().startsWith("invoke-interface"))
				 	{
				 		System.out.println(" interface Function Call:"+st.trim().substring(st.indexOf("},")-2).trim());
				 		op.write(st.trim().substring(st.indexOf("},")-2).trim());
				 		op.newLine();
				 	}
				 	else
				 	{
				 		continue;
				 	}
			 	}
				while((st=br.readLine())!=null);
		}
	 }
	System.out.println("\n-------------------------------------------------------------------------------------------------------------------\n");
	}
	br.close();
	fr.close();
	op.close();
	}

}
