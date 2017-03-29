.class public final enum Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;
.super Ljava/lang/Enum;
.source "PriceChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/pricechart/PriceChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BaseCurrency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

.field public static final enum BTC:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

.field public static final enum ETH:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    new-instance v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    const-string v1, "BTC"

    const-string v2, "BTC"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->BTC:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    .line 186
    new-instance v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    const-string v1, "ETH"

    const-string v2, "ETH"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->ETH:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    .line 183
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    sget-object v1, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->BTC:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->ETH:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->$VALUES:[Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

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
    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 191
    iput-object p3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->_value:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 200
    if-eqz p0, :cond_1

    .line 201
    invoke-static {}, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->values()[Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 202
    .local v0, "str":Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;
    invoke-virtual {v0}, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    .end local v0    # "str":Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;
    :goto_1
    return-object v0

    .line 201
    .restart local v0    # "str":Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "str":Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    const-class v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->$VALUES:[Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    invoke-virtual {v0}, [Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->_value:Ljava/lang/String;

    return-object v0
.end method
