.class public Lcom/coinbase/v1/entity/ApplicationsResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "ApplicationsResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x7d9948bbcb04106eL


# instance fields
.field private _applications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Application;",
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
.method public getApplications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Application;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/v1/entity/ApplicationsResponse;->_applications:Ljava/util/List;

    return-object v0
.end method

.method public setApplications(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Application;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "applications":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Application;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/ApplicationsResponse;->_applications:Ljava/util/List;

    .line 18
    return-void
.end method
