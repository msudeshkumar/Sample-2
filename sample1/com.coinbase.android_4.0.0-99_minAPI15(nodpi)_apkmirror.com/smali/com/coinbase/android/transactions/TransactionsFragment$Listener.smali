.class public interface abstract Lcom/coinbase/android/transactions/TransactionsFragment$Listener;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDepositMoneyClicked(Lcom/coinbase/v2/models/account/Data;)V
.end method

.method public abstract onFinishTransactionsSync()V
.end method

.method public abstract onReceiveMoneyClicked(Lcom/coinbase/v2/models/account/Data;)V
.end method

.method public abstract onSendMoneyClicked(Lcom/coinbase/v2/models/account/Data;)V
.end method

.method public abstract onStartTransactionsSync()V
.end method

.method public abstract onWithdrawMoneyClicked(Lcom/coinbase/v2/models/account/Data;)V
.end method
