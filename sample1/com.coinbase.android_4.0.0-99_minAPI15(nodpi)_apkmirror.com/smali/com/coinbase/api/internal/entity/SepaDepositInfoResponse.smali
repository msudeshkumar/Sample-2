.class public Lcom/coinbase/api/internal/entity/SepaDepositInfoResponse;
.super Lcom/coinbase/api/internal/entity/ResponseV1;
.source "SepaDepositInfoResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x593741c8bea860f6L


# instance fields
.field private _sepaDepositInfo:Lcom/coinbase/api/internal/entity/SepaDepositInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/api/internal/entity/ResponseV1;-><init>()V

    return-void
.end method


# virtual methods
.method public getSepaDepositInfo()Lcom/coinbase/api/internal/entity/SepaDepositInfo;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfoResponse;->_sepaDepositInfo:Lcom/coinbase/api/internal/entity/SepaDepositInfo;

    return-object v0
.end method

.method public setSepaDepositInfo(Lcom/coinbase/api/internal/entity/SepaDepositInfo;)V
    .locals 0
    .param p1, "sepaDepositInfo"    # Lcom/coinbase/api/internal/entity/SepaDepositInfo;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfoResponse;->_sepaDepositInfo:Lcom/coinbase/api/internal/entity/SepaDepositInfo;

    .line 15
    return-void
.end method
