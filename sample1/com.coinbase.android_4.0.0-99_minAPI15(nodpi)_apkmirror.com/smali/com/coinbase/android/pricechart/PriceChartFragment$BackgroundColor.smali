.class public final enum Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;
.super Ljava/lang/Enum;
.source "PriceChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/pricechart/PriceChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackgroundColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

.field public static final enum NORMAL:Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

.field public static final enum SIGN_IN:Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    new-instance v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;->NORMAL:Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

    .line 180
    new-instance v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

    const-string v1, "SIGN_IN"

    invoke-direct {v0, v1, v3}, Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;->SIGN_IN:Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

    sget-object v1, Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;->NORMAL:Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;->SIGN_IN:Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

    aput-object v1, v0, v3

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;->$VALUES:[Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    const-class v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;->$VALUES:[Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

    invoke-virtual {v0}, [Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;

    return-object v0
.end method
