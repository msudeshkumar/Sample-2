.class Lcom/coinbase/android/pricechart/PriceChartFragment$DateValueFormatter;
.super Ljava/lang/Object;
.source "PriceChartFragment.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/pricechart/PriceChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateValueFormatter"
.end annotation


# instance fields
.field private mDates:[Lorg/joda/time/DateTime;

.field private mPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

.field final synthetic this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;[Lorg/joda/time/DateTime;)V
    .locals 0
    .param p2, "period"    # Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
    .param p3, "dates"    # [Lorg/joda/time/DateTime;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$DateValueFormatter;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$DateValueFormatter;->mPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .line 101
    iput-object p3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$DateValueFormatter;->mDates:[Lorg/joda/time/DateTime;

    .line 102
    return-void
.end method


# virtual methods
.method public getXValue(Ljava/lang/String;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 6
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 107
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$DateValueFormatter;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/pricechart/PriceChartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v0, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 109
    .local v0, "current":Ljava/util/Locale;
    sget-object v3, Lcom/coinbase/android/pricechart/PriceChartFragment$5;->$SwitchMap$com$coinbase$android$pricechart$PriceChartFragment$Period:[I

    iget-object v4, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$DateValueFormatter;->mPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-virtual {v4}, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 130
    :goto_0
    iget-object v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$DateValueFormatter;->mDates:[Lorg/joda/time/DateTime;

    iget-object v4, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$DateValueFormatter;->mDates:[Lorg/joda/time/DateTime;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v1

    .line 131
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AM"

    const-string v5, "am"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PM"

    const-string v5, "pm"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 111
    .end local v1    # "date":Ljava/util/Date;
    :pswitch_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "HH:mm"

    invoke-direct {v2, v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 112
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 114
    :pswitch_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "HH:mm"

    invoke-direct {v2, v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 115
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 117
    :pswitch_2
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "EEE"

    invoke-direct {v2, v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 118
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 120
    :pswitch_3
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "M/d"

    invoke-direct {v2, v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 121
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 123
    :pswitch_4
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "MMM"

    invoke-direct {v2, v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 124
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 126
    :pswitch_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "M/yy"

    invoke-direct {v2, v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
