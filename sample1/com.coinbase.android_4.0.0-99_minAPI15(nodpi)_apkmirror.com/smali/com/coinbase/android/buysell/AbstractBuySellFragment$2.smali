.class Lcom/coinbase/android/buysell/AbstractBuySellFragment$2;
.super Ljava/lang/Object;
.source "AbstractBuySellFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/buysell/AbstractBuySellFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$2;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 259
    if-eqz p2, :cond_0

    .line 260
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$2;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # getter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$100(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$2;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # getter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$200(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_0
    return-void
.end method
