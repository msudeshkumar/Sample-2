.class Lcom/coinbase/android/transactions/TransactionsFragment$13;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$13;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException()V
    .locals 0

    .prologue
    .line 792
    return-void
.end method

.method public onFinally()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$13;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->refresh()V

    .line 798
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 787
    return-void
.end method
