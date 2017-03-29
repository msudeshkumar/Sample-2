.class public Lcom/coinbase/api/internal/entity/JumioProfilesResponse;
.super Lcom/coinbase/api/internal/entity/ResponseV2;
.source "JumioProfilesResponse.java"


# instance fields
.field private _jumioProfiles:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/coinbase/api/internal/entity/ResponseV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getJumioProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfilesResponse;->_jumioProfiles:Ljava/util/List;

    return-object v0
.end method

.method public setJumioProfiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "jumioProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioProfile;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfilesResponse;->_jumioProfiles:Ljava/util/List;

    .line 18
    return-void
.end method
