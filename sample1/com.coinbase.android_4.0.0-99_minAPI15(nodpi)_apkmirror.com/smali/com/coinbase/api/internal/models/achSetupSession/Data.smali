.class public Lcom/coinbase/api/internal/models/achSetupSession/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private accounts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accounts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/account/Data;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private institution:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "institution"
    .end annotation
.end field

.field private mfa:Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mfa"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/api/internal/models/achSetupSession/Data;->accounts:Ljava/util/List;

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
            "Lcom/coinbase/v2/models/account/Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/coinbase/api/internal/models/achSetupSession/Data;->accounts:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/coinbase/api/internal/models/achSetupSession/Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInstitution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/api/internal/models/achSetupSession/Data;->institution:Ljava/lang/String;

    return-object v0
.end method

.method public getMfa()Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/coinbase/api/internal/models/achSetupSession/Data;->mfa:Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/coinbase/api/internal/models/achSetupSession/Data;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAccounts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/account/Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/achSetupSession/Data;->accounts:Ljava/util/List;

    .line 102
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/coinbase/api/internal/models/achSetupSession/Data;->id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setInstitution(Ljava/lang/String;)V
    .locals 0
    .param p1, "institution"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/coinbase/api/internal/models/achSetupSession/Data;->institution:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setMfa(Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;)V
    .locals 0
    .param p1, "mfa"    # Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/coinbase/api/internal/models/achSetupSession/Data;->mfa:Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;

    .line 120
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/coinbase/api/internal/models/achSetupSession/Data;->status:Ljava/lang/String;

    .line 66
    return-void
.end method
