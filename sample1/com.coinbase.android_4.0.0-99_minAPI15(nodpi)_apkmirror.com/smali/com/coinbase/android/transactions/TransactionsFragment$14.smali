.class Lcom/coinbase/android/transactions/TransactionsFragment$14;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;->clearViews()V
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
    .line 812
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$14;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$14;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->refreshComplete()V
    invoke-static {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$200(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    .line 816
    return-void
.end method
