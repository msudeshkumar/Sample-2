.class public final enum Lcom/coinbase/android/utils/Section;
.super Ljava/lang/Enum;
.source "Section.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/utils/Section;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/utils/Section;

.field public static final enum BUY:Lcom/coinbase/android/utils/Section;

.field public static final enum CHARTS:Lcom/coinbase/android/utils/Section;

.field public static final enum SELL:Lcom/coinbase/android/utils/Section;

.field public static final enum SETTINGS:Lcom/coinbase/android/utils/Section;

.field public static final enum TRANSACTIONS:Lcom/coinbase/android/utils/Section;


# instance fields
.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/coinbase/android/utils/Section;

    const-string v1, "TRANSACTIONS"

    invoke-direct {v0, v1, v2, v2}, Lcom/coinbase/android/utils/Section;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coinbase/android/utils/Section;->TRANSACTIONS:Lcom/coinbase/android/utils/Section;

    .line 10
    new-instance v0, Lcom/coinbase/android/utils/Section;

    const-string v1, "BUY"

    invoke-direct {v0, v1, v3, v3}, Lcom/coinbase/android/utils/Section;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coinbase/android/utils/Section;->BUY:Lcom/coinbase/android/utils/Section;

    .line 11
    new-instance v0, Lcom/coinbase/android/utils/Section;

    const-string v1, "SELL"

    invoke-direct {v0, v1, v4, v4}, Lcom/coinbase/android/utils/Section;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coinbase/android/utils/Section;->SELL:Lcom/coinbase/android/utils/Section;

    .line 12
    new-instance v0, Lcom/coinbase/android/utils/Section;

    const-string v1, "SETTINGS"

    invoke-direct {v0, v1, v5, v5}, Lcom/coinbase/android/utils/Section;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coinbase/android/utils/Section;->SETTINGS:Lcom/coinbase/android/utils/Section;

    .line 13
    new-instance v0, Lcom/coinbase/android/utils/Section;

    const-string v1, "CHARTS"

    invoke-direct {v0, v1, v6, v6}, Lcom/coinbase/android/utils/Section;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coinbase/android/utils/Section;->CHARTS:Lcom/coinbase/android/utils/Section;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/coinbase/android/utils/Section;

    sget-object v1, Lcom/coinbase/android/utils/Section;->TRANSACTIONS:Lcom/coinbase/android/utils/Section;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coinbase/android/utils/Section;->BUY:Lcom/coinbase/android/utils/Section;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/android/utils/Section;->SELL:Lcom/coinbase/android/utils/Section;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/android/utils/Section;->SETTINGS:Lcom/coinbase/android/utils/Section;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/android/utils/Section;->CHARTS:Lcom/coinbase/android/utils/Section;

    aput-object v1, v0, v6

    sput-object v0, Lcom/coinbase/android/utils/Section;->$VALUES:[Lcom/coinbase/android/utils/Section;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/coinbase/android/utils/Section;->index:I

    .line 19
    return-void
.end method

.method public static fromIndex(I)Lcom/coinbase/android/utils/Section;
    .locals 5
    .param p0, "index"    # I

    .prologue
    .line 26
    invoke-static {}, Lcom/coinbase/android/utils/Section;->values()[Lcom/coinbase/android/utils/Section;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 27
    .local v0, "s":Lcom/coinbase/android/utils/Section;
    iget v4, v0, Lcom/coinbase/android/utils/Section;->index:I

    if-ne v4, p0, :cond_0

    .line 31
    .end local v0    # "s":Lcom/coinbase/android/utils/Section;
    :goto_1
    return-object v0

    .line 26
    .restart local v0    # "s":Lcom/coinbase/android/utils/Section;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "s":Lcom/coinbase/android/utils/Section;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/utils/Section;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/coinbase/android/utils/Section;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/utils/Section;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/utils/Section;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/coinbase/android/utils/Section;->$VALUES:[Lcom/coinbase/android/utils/Section;

    invoke-virtual {v0}, [Lcom/coinbase/android/utils/Section;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/utils/Section;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/coinbase/android/utils/Section;->index:I

    return v0
.end method
