.class Lorg/joda/money/DefaultCurrencyUnitDataProvider;
.super Lorg/joda/money/CurrencyUnitDataProvider;
.source "DefaultCurrencyUnitDataProvider.java"


# static fields
.field private static final REGEX_LINE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "([A-Z]{3}),(-1|[0-9]{1,3}),(-1|[0-9]),([A-Z]*)#?.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/joda/money/DefaultCurrencyUnitDataProvider;->REGEX_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/joda/money/CurrencyUnitDataProvider;-><init>()V

    return-void
.end method

.method private loadCurrenciesFromFile(Ljava/lang/String;Z)V
    .locals 17
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "isNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v8, 0x0

    .line 62
    .local v8, "in":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 64
    .local v13, "resultEx":Ljava/lang/Exception;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 65
    if-nez v8, :cond_1

    if-eqz p2, :cond_1

    .line 66
    new-instance v14, Ljava/io/FileNotFoundException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Data file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :catch_0
    move-exception v5

    .line 90
    .local v5, "ex":Ljava/lang/Exception;
    move-object v13, v5

    .line 91
    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    if-eqz v8, :cond_0

    .line 94
    if-eqz v13, :cond_9

    .line 96
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 101
    :cond_0
    :goto_0
    throw v14

    .line 67
    :cond_1
    if-nez v8, :cond_4

    if-nez p2, :cond_4

    .line 93
    if-eqz v8, :cond_2

    .line 94
    if-eqz v13, :cond_3

    .line 96
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 105
    :cond_2
    :goto_1
    return-void

    .line 97
    :catch_1
    move-exception v7

    .line 98
    .local v7, "ignored":Ljava/io/IOException;
    throw v13

    .line 101
    .end local v7    # "ignored":Ljava/io/IOException;
    :cond_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 70
    :cond_4
    :try_start_4
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    const-string v15, "UTF-8"

    invoke-direct {v14, v8, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v12, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    .local v12, "reader":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 73
    sget-object v14, Lorg/joda/money/DefaultCurrencyUnitDataProvider;->REGEX_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 74
    .local v10, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, "countryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x4

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "codeStr":Ljava/lang/String;
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "currencyCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    rem-int/lit8 v14, v14, 0x2

    const/4 v15, 0x1

    if-eq v14, v15, :cond_5

    .line 81
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v6, v14, :cond_6

    .line 82
    add-int/lit8 v14, v6, 0x2

    invoke-virtual {v1, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    .line 84
    :cond_6
    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 85
    .local v11, "numericCode":I
    const/4 v14, 0x3

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 86
    .local v4, "digits":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v4, v2}, Lorg/joda/money/DefaultCurrencyUnitDataProvider;->registerCurrency(Ljava/lang/String;IILjava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 93
    .end local v1    # "codeStr":Ljava/lang/String;
    .end local v2    # "countryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "currencyCode":Ljava/lang/String;
    .end local v4    # "digits":I
    .end local v6    # "i":I
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    .end local v11    # "numericCode":I
    :cond_7
    if-eqz v8, :cond_2

    .line 94
    if-eqz v13, :cond_8

    .line 96
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 97
    :catch_2
    move-exception v7

    .line 98
    .restart local v7    # "ignored":Ljava/io/IOException;
    throw v13

    .line 101
    .end local v7    # "ignored":Ljava/io/IOException;
    :cond_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 97
    .end local v9    # "line":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v7

    .line 98
    .restart local v7    # "ignored":Ljava/io/IOException;
    throw v13

    .line 101
    .end local v7    # "ignored":Ljava/io/IOException;
    :cond_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected registerCurrencies()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "/org/joda/money/MoneyData.csv"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/joda/money/DefaultCurrencyUnitDataProvider;->loadCurrenciesFromFile(Ljava/lang/String;Z)V

    .line 50
    const-string v0, "/org/joda/money/MoneyDataExtension.csv"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/joda/money/DefaultCurrencyUnitDataProvider;->loadCurrenciesFromFile(Ljava/lang/String;Z)V

    .line 51
    return-void
.end method
