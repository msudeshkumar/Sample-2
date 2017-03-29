.class public Lcom/coinbase/api/internal/entity/JumioProfileResponse;
.super Lcom/coinbase/api/internal/entity/ResponseV2;
.source "JumioProfileResponse.java"


# instance fields
.field private _jumioProfile:Lcom/coinbase/api/internal/entity/JumioProfile;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/coinbase/api/internal/entity/ResponseV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getJumioProfile()Lcom/coinbase/api/internal/entity/JumioProfile;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfileResponse;->_jumioProfile:Lcom/coinbase/api/internal/entity/JumioProfile;

    return-object v0
.end method

.method public setJumioProfile(Lcom/coinbase/api/internal/entity/JumioProfile;)V
    .locals 0
    .param p1, "jumioProfile"    # Lcom/coinbase/api/internal/entity/JumioProfile;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/JumioProfileResponse;->_jumioProfile:Lcom/coinbase/api/internal/entity/JumioProfile;

    .line 16
    return-void
.end method
