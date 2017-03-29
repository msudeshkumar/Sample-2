.class Lcom/coinbase/android/transfers/TransferAmountFragment$2;
.super Ljava/lang/Object;
.source "TransferAmountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/TransferAmountFragment;->initButtonListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/TransferAmountFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$2;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$2;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # invokes: Lcom/coinbase/android/transfers/TransferAmountFragment;->switchAmounts()V
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$1200(Lcom/coinbase/android/transfers/TransferAmountFragment;)V

    .line 236
    return-void
.end method
