.class public Lcom/coinbase/api/internal/models/paymentMethods/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private mapping:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mapping"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/paymentMethods/Mapping;",
            ">;"
        }
    .end annotation
.end field

.field private oneTimeToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "one_time_token"
    .end annotation
.end field

.field private processUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "process_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/Data;->mapping:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMapping()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/paymentMethods/Mapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/Data;->mapping:Ljava/util/List;

    return-object v0
.end method

.method public getOneTimeToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/Data;->oneTimeToken:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/Data;->processUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setMapping(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/paymentMethods/Mapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "mapping":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/paymentMethods/Mapping;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/Data;->mapping:Ljava/util/List;

    .line 74
    return-void
.end method

.method public setOneTimeToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "oneTimeToken"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/Data;->oneTimeToken:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setProcessUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "processUrl"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/Data;->processUrl:Ljava/lang/String;

    .line 56
    return-void
.end method
