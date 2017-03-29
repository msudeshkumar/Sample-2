.class public Lcom/coinbase/api/internal/entity/IsGoogleNowEnabledResponse;
.super Lcom/coinbase/api/internal/entity/ResponseV1;
.source "IsGoogleNowEnabledResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x354082db2fd579adL


# instance fields
.field private _googleNowEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/api/internal/entity/ResponseV1;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoogleNowEnabled()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/coinbase/api/internal/entity/IsGoogleNowEnabledResponse;->_googleNowEnabled:Z

    return v0
.end method

.method public setGoogleNowEnabled(Z)V
    .locals 0
    .param p1, "googleNowEnabled"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/coinbase/api/internal/entity/IsGoogleNowEnabledResponse;->_googleNowEnabled:Z

    .line 17
    return-void
.end method
