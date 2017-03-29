.class public Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private requirements:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requirements"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Data;->requirements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRequirements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Data;->requirements:Ljava/util/List;

    return-object v0
.end method

.method public setRequirements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "requirements":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Data;->requirements:Ljava/util/List;

    .line 32
    return-void
.end method
