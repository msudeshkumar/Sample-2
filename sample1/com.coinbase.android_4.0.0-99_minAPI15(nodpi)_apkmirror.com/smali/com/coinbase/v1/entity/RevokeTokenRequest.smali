.class public Lcom/coinbase/v1/entity/RevokeTokenRequest;
.super Ljava/lang/Object;
.source "RevokeTokenRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x141086c91c680d20L


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/v1/entity/RevokeTokenRequest;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/v1/entity/RevokeTokenRequest;->token:Ljava/lang/String;

    .line 16
    return-void
.end method
