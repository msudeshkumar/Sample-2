.class public Lcom/coinbase/v1/entity/OAuthCodeResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "OAuthCodeResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x840afd36eec5845L


# instance fields
.field private _code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeResponse;->_code:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/coinbase/v1/entity/OAuthCodeResponse;->_code:Ljava/lang/String;

    .line 14
    return-void
.end method
