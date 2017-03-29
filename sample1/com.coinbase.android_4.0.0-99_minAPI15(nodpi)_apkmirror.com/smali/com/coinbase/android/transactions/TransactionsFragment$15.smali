.class Lcom/coinbase/android/transactions/TransactionsFragment$15;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;->getRateNotice()Landroid/view/View;
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
    .line 926
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$15;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 930
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$15;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    sget-object v1, Lcom/coinbase/android/Constants$RateNoticeState;->NOTICE_DISMISSED:Lcom/coinbase/android/Constants$RateNoticeState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/transactions/TransactionsFragment;->setRateNoticeState(Lcom/coinbase/android/Constants$RateNoticeState;Z)V

    .line 931
    return-void
.end method
