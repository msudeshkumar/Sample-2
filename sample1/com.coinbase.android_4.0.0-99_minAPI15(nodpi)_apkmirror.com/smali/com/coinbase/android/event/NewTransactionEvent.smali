.class public Lcom/coinbase/android/event/NewTransactionEvent;
.super Ljava/lang/Object;
.source "NewTransactionEvent.java"


# instance fields
.field public transaction:Lcom/coinbase/v1/entity/Transaction;


# direct methods
.method public constructor <init>(Lcom/coinbase/v1/entity/Transaction;)V
    .locals 0
    .param p1, "newTransaction"    # Lcom/coinbase/v1/entity/Transaction;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/coinbase/android/event/NewTransactionEvent;->transaction:Lcom/coinbase/v1/entity/Transaction;

    .line 10
    return-void
.end method
