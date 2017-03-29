.class public Lcom/coinbase/v1/entity/AccountsResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "AccountsResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x384604b0caca8b5fL


# instance fields
.field private _accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountsResponse;->_accounts:Ljava/util/List;

    return-object v0
.end method

.method public setAccounts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Account;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountsResponse;->_accounts:Ljava/util/List;

    .line 18
    return-void
.end method
