.class public Lcom/coinbase/v1/entity/UserNode;
.super Ljava/lang/Object;
.source "UserNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5ad0b8b3cd8e6511L


# instance fields
.field private _user:Lcom/coinbase/v1/entity/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUser()Lcom/coinbase/v1/entity/User;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/v1/entity/UserNode;->_user:Lcom/coinbase/v1/entity/User;

    return-object v0
.end method

.method public setUser(Lcom/coinbase/v1/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/v1/entity/UserNode;->_user:Lcom/coinbase/v1/entity/User;

    .line 16
    return-void
.end method
