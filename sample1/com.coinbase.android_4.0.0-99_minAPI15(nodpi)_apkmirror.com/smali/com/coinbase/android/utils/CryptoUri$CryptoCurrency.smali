.class public final enum Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;
.super Ljava/lang/Enum;
.source "CryptoUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/utils/CryptoUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CryptoCurrency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

.field public static final enum bitcoinScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

.field public static final enum ethereumScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    const-string v1, "bitcoinScheme"

    const-string v2, "bitcoin:"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->bitcoinScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    .line 33
    new-instance v0, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    const-string v1, "ethereumScheme"

    const-string v2, "ethereum:"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->ethereumScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    sget-object v1, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->bitcoinScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->ethereumScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->$VALUES:[Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->_value:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->$VALUES:[Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    invoke-virtual {v0}, [Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->_value:Ljava/lang/String;

    return-object v0
.end method
