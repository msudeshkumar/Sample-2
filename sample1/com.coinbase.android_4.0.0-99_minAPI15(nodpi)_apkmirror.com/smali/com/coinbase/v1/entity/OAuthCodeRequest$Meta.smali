.class public Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;
.super Ljava/lang/Object;
.source "OAuthCodeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/OAuthCodeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Meta"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4be385e64c4cad07L


# instance fields
.field private _name:Ljava/lang/String;

.field private _sendLimitAmount:Lorg/joda/money/Money;

.field private _sendLimitPeriod:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSendLimitAmount()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->_sendLimitAmount:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getSendLimitCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->_sendLimitAmount:Lorg/joda/money/Money;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->_sendLimitAmount:Lorg/joda/money/Money;

    invoke-virtual {v0}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSendLimitPeriod()Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->_sendLimitPeriod:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->_name:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSendLimitAmount(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "sendLimitAmount"    # Lorg/joda/money/Money;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->_sendLimitAmount:Lorg/joda/money/Money;

    .line 62
    return-void
.end method

.method public setSendLimitPeriod(Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;)V
    .locals 0
    .param p1, "sendLimitPeriod"    # Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->_sendLimitPeriod:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    .line 70
    return-void
.end method
