.class public Lcom/coinbase/v1/entity/UsersResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "UsersResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x1eac330b182ba7d8L


# instance fields
.field private _users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/UserNode;",
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
.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/UserNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/coinbase/v1/entity/UsersResponse;->_users:Ljava/util/List;

    return-object v0
.end method

.method public setUsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/UserNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/UserNode;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/UsersResponse;->_users:Ljava/util/List;

    .line 19
    return-void
.end method
