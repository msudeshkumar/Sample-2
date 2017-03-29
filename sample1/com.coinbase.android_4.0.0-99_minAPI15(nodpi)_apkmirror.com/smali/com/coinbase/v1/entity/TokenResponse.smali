.class public Lcom/coinbase/v1/entity/TokenResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "TokenResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x41d73d2df78b8bf3L


# instance fields
.field private _token:Lcom/coinbase/v1/entity/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Lcom/coinbase/v1/entity/Token;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/v1/entity/TokenResponse;->_token:Lcom/coinbase/v1/entity/Token;

    return-object v0
.end method

.method public setToken(Lcom/coinbase/v1/entity/Token;)V
    .locals 0
    .param p1, "token"    # Lcom/coinbase/v1/entity/Token;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/v1/entity/TokenResponse;->_token:Lcom/coinbase/v1/entity/Token;

    .line 16
    return-void
.end method
