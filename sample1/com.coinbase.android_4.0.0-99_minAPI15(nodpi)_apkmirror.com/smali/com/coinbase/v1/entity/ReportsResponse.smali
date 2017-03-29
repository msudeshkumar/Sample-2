.class public Lcom/coinbase/v1/entity/ReportsResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "ReportsResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x102a2ea8cacc55bL


# instance fields
.field private _reports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Report;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getReports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Report;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/coinbase/v1/entity/ReportsResponse;->_reports:Ljava/util/List;

    return-object v0
.end method

.method public setReports(Ljava/util/List;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        converter = Lcom/coinbase/v1/deserializer/ReportsLifter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Report;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "reports":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Report;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/ReportsResponse;->_reports:Ljava/util/List;

    .line 22
    return-void
.end method
