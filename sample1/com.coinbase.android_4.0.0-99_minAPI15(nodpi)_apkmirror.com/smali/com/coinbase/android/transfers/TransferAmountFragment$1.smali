.class Lcom/coinbase/android/transfers/TransferAmountFragment$1;
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
    .line 212
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 215
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;
    invoke-static {v2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$300(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/BigMoney;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/money/BigMoney;->isPositive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->isNativePrimary:Z
    invoke-static {v2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$400(Lcom/coinbase/android/transfers/TransferAmountFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # invokes: Lcom/coinbase/android/transfers/TransferAmountFragment;->isBitsSecondary()Z
    invoke-static {v2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$500(Lcom/coinbase/android/transfers/TransferAmountFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;
    invoke-static {v3}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$600(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/BigMoney;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;
    invoke-static {v4}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$700(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/CurrencyUnit;

    move-result-object v4

    # invokes: Lcom/coinbase/android/transfers/TransferAmountFragment;->getBTCAmount(Lorg/joda/money/BigMoney;Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/BigMoney;
    invoke-static {v2, v3, v4}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$800(Lcom/coinbase/android/transfers/TransferAmountFragment;Lorg/joda/money/BigMoney;Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/BigMoney;

    move-result-object v1

    .line 223
    .local v1, "enteredBTCAmount":Lorg/joda/money/BigMoney;
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # invokes: Lcom/coinbase/android/transfers/TransferAmountFragment;->isBitsPrimary()Z
    invoke-static {v2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$900(Lcom/coinbase/android/transfers/TransferAmountFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;
    invoke-static {v3}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$300(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/BigMoney;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;
    invoke-static {v4}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$1000(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/CurrencyUnit;

    move-result-object v4

    # invokes: Lcom/coinbase/android/transfers/TransferAmountFragment;->getBTCAmount(Lorg/joda/money/BigMoney;Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/BigMoney;
    invoke-static {v2, v3, v4}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$800(Lcom/coinbase/android/transfers/TransferAmountFragment;Lorg/joda/money/BigMoney;Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 224
    .local v0, "btcEntered":Lorg/joda/money/BigMoney;
    :goto_1
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/coinbase/android/transfers/TransferAmountFragment$TransferFragmentListener;

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;
    invoke-static {v3}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$1100(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/coinbase/android/transfers/TransferAmountFragment$TransferFragmentListener;->showTransferFragment(Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;Lorg/joda/money/BigMoney;Lorg/joda/money/BigMoney;)V

    .line 225
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v2

    const-string v3, "Event - Amount entered"

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 229
    .end local v0    # "btcEntered":Lorg/joda/money/BigMoney;
    .end local v1    # "enteredBTCAmount":Lorg/joda/money/BigMoney;
    :goto_2
    return-void

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;
    invoke-static {v2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$600(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/BigMoney;

    move-result-object v1

    goto :goto_0

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # invokes: Lcom/coinbase/android/transfers/TransferAmountFragment;->isBitsPrimary()Z
    invoke-static {v2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$900(Lcom/coinbase/android/transfers/TransferAmountFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;
    invoke-static {v3}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$300(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/BigMoney;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;
    invoke-static {v4}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$1000(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/CurrencyUnit;

    move-result-object v4

    # invokes: Lcom/coinbase/android/transfers/TransferAmountFragment;->getBTCAmount(Lorg/joda/money/BigMoney;Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/BigMoney;
    invoke-static {v2, v3, v4}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$800(Lcom/coinbase/android/transfers/TransferAmountFragment;Lorg/joda/money/BigMoney;Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/BigMoney;

    move-result-object v1

    .restart local v1    # "enteredBTCAmount":Lorg/joda/money/BigMoney;
    :goto_3
    goto :goto_0

    .end local v1    # "enteredBTCAmount":Lorg/joda/money/BigMoney;
    :cond_2
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;
    invoke-static {v2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$300(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/BigMoney;

    move-result-object v1

    goto :goto_3

    .line 223
    .restart local v1    # "enteredBTCAmount":Lorg/joda/money/BigMoney;
    :cond_3
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;
    invoke-static {v2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->access$300(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/BigMoney;

    move-result-object v0

    goto :goto_1

    .line 227
    .end local v1    # "enteredBTCAmount":Lorg/joda/money/BigMoney;
    :cond_4
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferAmountFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f070265

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
