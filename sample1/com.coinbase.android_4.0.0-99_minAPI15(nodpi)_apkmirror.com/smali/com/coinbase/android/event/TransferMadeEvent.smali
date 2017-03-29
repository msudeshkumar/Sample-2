.class public Lcom/coinbase/android/event/TransferMadeEvent;
.super Ljava/lang/Object;
.source "TransferMadeEvent.java"


# instance fields
.field public transaction:Lcom/coinbase/v2/models/transactions/Data;


# direct methods
.method public constructor <init>(Lcom/coinbase/v2/models/transactions/Data;)V
    .locals 0
    .param p1, "transaction"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/coinbase/android/event/TransferMadeEvent;->transaction:Lcom/coinbase/v2/models/transactions/Data;

    .line 11
    return-void
.end method
