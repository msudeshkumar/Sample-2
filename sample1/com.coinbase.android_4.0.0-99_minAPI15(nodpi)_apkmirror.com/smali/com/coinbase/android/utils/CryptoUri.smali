.class public Lcom/coinbase/android/utils/CryptoUri;
.super Ljava/lang/Object;
.source "CryptoUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;,
        Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException;
    }
.end annotation


# static fields
.field public static CRYPTO_SCALE:I


# instance fields
.field protected address:Ljava/lang/String;

.field protected amount:Ljava/math/BigDecimal;

.field protected cryptoCurrency:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

.field protected label:Ljava/lang/String;

.field protected message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x8

    sput v0, Lcom/coinbase/android/utils/CryptoUri;->CRYPTO_SCALE:I

    return-void
.end method

.method public constructor <init>(Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;)V
    .locals 0
    .param p1, "scheme"    # Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/coinbase/android/utils/CryptoUri;->cryptoCurrency:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    .line 130
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/coinbase/android/utils/CryptoUri;
    .locals 10
    .param p0, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 85
    sget-object v6, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->ethereumScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    invoke-virtual {v6}, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    sget-object v6, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->ethereumScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    invoke-virtual {v6}, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "schemeSpecificPart":Ljava/lang/String;
    new-instance v4, Lcom/coinbase/android/utils/CryptoUri;

    sget-object v6, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->ethereumScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    invoke-direct {v4, v6}, Lcom/coinbase/android/utils/CryptoUri;-><init>(Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;)V

    .line 95
    .local v4, "result":Lcom/coinbase/android/utils/CryptoUri;
    :goto_0
    const-string v6, "\\?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "addressAndParams":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v4, v6}, Lcom/coinbase/android/utils/CryptoUri;->setAddress(Ljava/lang/String;)V

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    array-length v6, v0

    if-le v6, v7, :cond_0

    .line 102
    new-instance v6, Ljava/util/Scanner;

    aget-object v7, v0, v7

    invoke-direct {v6, v7}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-static {v3, v6, v7}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 106
    .local v2, "param":Lorg/apache/http/NameValuePair;
    const-string v7, "label"

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 107
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/coinbase/android/utils/CryptoUri;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    .end local v0    # "addressAndParams":[Ljava/lang/String;
    .end local v2    # "param":Lorg/apache/http/NameValuePair;
    .end local v3    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .end local v4    # "result":Lcom/coinbase/android/utils/CryptoUri;
    .end local v5    # "schemeSpecificPart":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->bitcoinScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    invoke-virtual {v6}, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    sget-object v6, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->bitcoinScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    invoke-virtual {v6}, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 90
    .restart local v5    # "schemeSpecificPart":Ljava/lang/String;
    new-instance v4, Lcom/coinbase/android/utils/CryptoUri;

    sget-object v6, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->bitcoinScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    invoke-direct {v4, v6}, Lcom/coinbase/android/utils/CryptoUri;-><init>(Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;)V

    .restart local v4    # "result":Lcom/coinbase/android/utils/CryptoUri;
    goto :goto_0

    .line 92
    .end local v4    # "result":Lcom/coinbase/android/utils/CryptoUri;
    .end local v5    # "schemeSpecificPart":Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException;

    invoke-direct {v6}, Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException;-><init>()V

    throw v6

    .line 108
    .restart local v0    # "addressAndParams":[Ljava/lang/String;
    .restart local v2    # "param":Lorg/apache/http/NameValuePair;
    .restart local v3    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    .restart local v4    # "result":Lcom/coinbase/android/utils/CryptoUri;
    .restart local v5    # "schemeSpecificPart":Ljava/lang/String;
    :cond_4
    const-string v7, "message"

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 109
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/coinbase/android/utils/CryptoUri;->setMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_5
    const-string v7, "amount"

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 112
    :try_start_0
    new-instance v7, Ljava/math/BigDecimal;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/coinbase/android/utils/CryptoUri;->CRYPTO_SCALE:I

    sget-object v9, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v7, v8, v9}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/coinbase/android/utils/CryptoUri;->setAmount(Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v6, Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException;

    invoke-direct {v6, v1}, Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 116
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    const-string v7, "value"

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 118
    :try_start_1
    new-instance v7, Ljava/math/BigDecimal;

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/coinbase/android/utils/CryptoUri;->CRYPTO_SCALE:I

    sget-object v9, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v7, v8, v9}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/coinbase/android/utils/CryptoUri;->setAmount(Ljava/math/BigDecimal;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 119
    :catch_1
    move-exception v1

    .line 120
    .restart local v1    # "ex":Ljava/lang/Exception;
    new-instance v6, Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException;

    invoke-direct {v6, v1}, Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 125
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "param":Lorg/apache/http/NameValuePair;
    :cond_7
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 163
    instance-of v0, p1, Lcom/coinbase/android/utils/CryptoUri;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/coinbase/android/utils/CryptoUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/coinbase/android/utils/CryptoUri;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/coinbase/android/utils/CryptoUri;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/coinbase/android/utils/CryptoUri;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/coinbase/android/utils/CryptoUri;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/coinbase/android/utils/CryptoUri;->address:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setAmount(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "amount"    # Ljava/math/BigDecimal;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/coinbase/android/utils/CryptoUri;->amount:Ljava/math/BigDecimal;

    .line 53
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/coinbase/android/utils/CryptoUri;->label:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/coinbase/android/utils/CryptoUri;->message:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coinbase/android/utils/CryptoUri;->cryptoCurrency:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    sget-object v2, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->bitcoinScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    invoke-virtual {v2}, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "uriBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/coinbase/android/utils/CryptoUri;->cryptoCurrency:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    sget-object v3, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->ethereumScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    if-ne v2, v3, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "uriBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/coinbase/android/utils/CryptoUri;->cryptoCurrency:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    sget-object v2, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->ethereumScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    invoke-virtual {v2}, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .restart local v1    # "uriBuilder":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/utils/CryptoUri;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    iget-object v2, p0, Lcom/coinbase/android/utils/CryptoUri;->amount:Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/coinbase/android/utils/CryptoUri;->cryptoCurrency:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    sget-object v3, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->ethereumScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    if-ne v2, v3, :cond_4

    .line 144
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "value"

    iget-object v4, p0, Lcom/coinbase/android/utils/CryptoUri;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/utils/CryptoUri;->message:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 149
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "message"

    iget-object v4, p0, Lcom/coinbase/android/utils/CryptoUri;->message:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/coinbase/android/utils/CryptoUri;->label:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 152
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "label"

    iget-object v4, p0, Lcom/coinbase/android/utils/CryptoUri;->label:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_3
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 146
    :cond_4
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "amount"

    iget-object v4, p0, Lcom/coinbase/android/utils/CryptoUri;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
