.class public Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;
.super Ljava/lang/Object;
.source "OAuthAccessGrant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/api/internal/entity/OAuthAccessGrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Meta"
.end annotation


# instance fields
.field _name:Ljava/lang/String;

.field _sendLimitAmount:Ljava/lang/String;

.field _sendLimitCurrency:Ljava/lang/String;

.field _sendLimitPeriod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSendLimitAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;->_sendLimitAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getSendLimitCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;->_sendLimitCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getSendLimitPeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;->_sendLimitPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;->_name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setSendLimitAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendLimitAmount"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;->_sendLimitAmount:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setSendLimitCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendLimitCurrency"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;->_sendLimitCurrency:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSendLimitPeriod(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendLimitPeriod"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;->_sendLimitPeriod:Ljava/lang/String;

    .line 45
    return-void
.end method
