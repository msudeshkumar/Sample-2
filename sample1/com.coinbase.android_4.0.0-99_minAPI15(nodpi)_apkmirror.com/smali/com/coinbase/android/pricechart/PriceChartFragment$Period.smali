.class public final enum Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
.super Ljava/lang/Enum;
.source "PriceChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/pricechart/PriceChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Period"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/pricechart/PriceChartFragment$Period;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

.field public static final enum ALL:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

.field public static final enum DAY:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

.field public static final enum HOUR:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

.field public static final enum MONTH:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

.field public static final enum WEEK:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

.field public static final enum YEAR:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 212
    new-instance v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    const-string v1, "HOUR"

    const-string v2, "hour"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->HOUR:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .line 213
    new-instance v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    const-string v1, "DAY"

    const-string v2, "day"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->DAY:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .line 214
    new-instance v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    const-string v1, "WEEK"

    const-string v2, "week"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->WEEK:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .line 215
    new-instance v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    const-string v1, "MONTH"

    const-string v2, "month"

    invoke-direct {v0, v1, v7, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->MONTH:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .line 216
    new-instance v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    const-string v1, "YEAR"

    const-string v2, "year"

    invoke-direct {v0, v1, v8, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->YEAR:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .line 217
    new-instance v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    const-string v1, "ALL"

    const/4 v2, 0x5

    const-string v3, "all"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->ALL:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .line 211
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    sget-object v1, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->HOUR:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->DAY:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->WEEK:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->MONTH:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->YEAR:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->ALL:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->$VALUES:[Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 222
    iput-object p3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->value:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    const-class v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->$VALUES:[Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-virtual {v0}, [Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->value:Ljava/lang/String;

    return-object v0
.end method
