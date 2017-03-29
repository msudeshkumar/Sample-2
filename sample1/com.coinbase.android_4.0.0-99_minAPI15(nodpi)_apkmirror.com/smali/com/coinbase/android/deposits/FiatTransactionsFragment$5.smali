.class Lcom/coinbase/android/deposits/FiatTransactionsFragment$5;
.super Ljava/lang/Object;
.source "FiatTransactionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/deposits/FiatTransactionsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$5;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$5;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # invokes: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->initiateDeposit()V
    invoke-static {v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$400(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)V

    .line 439
    return-void
.end method
