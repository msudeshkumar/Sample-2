.class public Lcom/coinbase/v1/entity/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4809a508bbe95e4eL


# instance fields
.field private address:Ljava/lang/String;

.field private tokenId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/coinbase/v1/entity/Token;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/coinbase/v1/entity/Token;->tokenId:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/coinbase/v1/entity/Token;->address:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTokenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/coinbase/v1/entity/Token;->tokenId:Ljava/lang/String;

    .line 19
    return-void
.end method
