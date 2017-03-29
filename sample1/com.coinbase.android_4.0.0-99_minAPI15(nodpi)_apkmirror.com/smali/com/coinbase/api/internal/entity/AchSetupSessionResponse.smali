.class public Lcom/coinbase/api/internal/entity/AchSetupSessionResponse;
.super Lcom/coinbase/api/internal/entity/ResponseV2;
.source "AchSetupSessionResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x64e38ff464a3a91bL


# instance fields
.field _achSetupSession:Lcom/coinbase/api/internal/entity/AchSetupSession;
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
.method public getAchSetupSession()Lcom/coinbase/api/internal/entity/AchSetupSession;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchSetupSessionResponse;->_achSetupSession:Lcom/coinbase/api/internal/entity/AchSetupSession;

    return-object v0
.end method

.method public setAchSetupSession(Lcom/coinbase/api/internal/entity/AchSetupSession;)V
    .locals 0
    .param p1, "achSetupSession"    # Lcom/coinbase/api/internal/entity/AchSetupSession;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchSetupSessionResponse;->_achSetupSession:Lcom/coinbase/api/internal/entity/AchSetupSession;

    .line 18
    return-void
.end method
