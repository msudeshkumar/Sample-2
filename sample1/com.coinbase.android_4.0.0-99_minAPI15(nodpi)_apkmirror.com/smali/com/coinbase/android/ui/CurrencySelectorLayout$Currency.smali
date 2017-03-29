.class public final enum Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
.super Ljava/lang/Enum;
.source "CurrencySelectorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/ui/CurrencySelectorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Currency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

.field public static final enum BTC:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

.field public static final enum ETH:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    const-string v1, "BTC"

    const-string v2, "BTC"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->BTC:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    .line 31
    new-instance v0, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    const-string v1, "ETH"

    const-string v2, "ETH"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->ETH:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    sget-object v1, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->BTC:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->ETH:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->$VALUES:[Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->_value:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 45
    if-eqz p0, :cond_1

    .line 46
    invoke-static {}, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->values()[Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 47
    .local v0, "str":Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    invoke-virtual {v0}, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    .end local v0    # "str":Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    :goto_1
    return-object v0

    .line 46
    .restart local v0    # "str":Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "str":Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->$VALUES:[Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    invoke-virtual {v0}, [Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->_value:Ljava/lang/String;

    return-object v0
.end method
