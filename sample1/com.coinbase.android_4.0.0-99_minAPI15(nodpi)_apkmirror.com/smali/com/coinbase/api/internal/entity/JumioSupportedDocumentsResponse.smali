.class public Lcom/coinbase/api/internal/entity/JumioSupportedDocumentsResponse;
.super Lcom/coinbase/api/internal/entity/ResponseV2;
.source "JumioSupportedDocumentsResponse.java"


# instance fields
.field private _jumioDocuments:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioDocument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/coinbase/api/internal/entity/ResponseV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getJumioSupportedDocuments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioDocument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioSupportedDocumentsResponse;->_jumioDocuments:Ljava/util/List;

    return-object v0
.end method

.method public setJumioSupportedDocuments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioDocument;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "jumioDocuments":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioDocument;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioSupportedDocumentsResponse;->_jumioDocuments:Ljava/util/List;

    .line 21
    return-void
.end method
