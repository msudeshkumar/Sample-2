.class Lcom/coinbase/android/deposits/FiatTransactionsFragment$11;
.super Ljava/lang/Object;
.source "FiatTransactionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/deposits/FiatTransactionsFragment;->refreshData()V
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
    .line 676
    iput-object p1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$11;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$11;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$11;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # invokes: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->updateSetupViews()V
    invoke-static {v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$500(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)V

    .line 682
    :cond_0
    return-void
.end method
