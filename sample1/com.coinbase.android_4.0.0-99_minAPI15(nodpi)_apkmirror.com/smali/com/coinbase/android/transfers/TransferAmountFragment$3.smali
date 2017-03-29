.class Lcom/coinbase/android/transfers/TransferAmountFragment$3;
.super Ljava/lang/Object;
.source "TransferAmountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transfers/TransferAmountFragment;
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
    .line 253
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$3;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$3;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/coinbase/android/utils/KeyboardUtils;->getKeyStroke(I)C

    move-result v1

    # invokes: Lcom/coinbase/android/transfers/TransferAmountFragment;->updateEnteredValue(C)V
    invoke-static {v0, v1}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$1300(Lcom/coinbase/android/transfers/TransferAmountFragment;C)V

    .line 257
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$3;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # invokes: Lcom/coinbase/android/transfers/TransferAmountFragment;->updateViews()V
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$1400(Lcom/coinbase/android/transfers/TransferAmountFragment;)V

    .line 258
    return-void
.end method
