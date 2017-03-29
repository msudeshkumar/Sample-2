.class Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;
.super Lcom/coinbase/android/task/FetchInstantExchangeQuoteTask;
.source "TransferSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transfers/TransferSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadInstantExchangeQuote"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/TransferSendFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/transfers/TransferSendFragment;Ljava/lang/String;Lorg/joda/money/Money;Z)V
    .locals 1
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "amount"    # Lorg/joda/money/Money;
    .param p4, "commit"    # Z

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    .line 1043
    invoke-virtual {p1}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/coinbase/android/task/FetchInstantExchangeQuoteTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/joda/money/Money;Z)V

    .line 1044
    return-void
.end method


# virtual methods
.method protected onException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$500(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$500(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1069
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    iget-object v0, v0, Lcom/coinbase/android/transfers/TransferSendFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 1072
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1073
    return-void
.end method

.method protected onSuccess(Lcom/coinbase/api/internal/entity/InstantExchangeQuote;)V
    .locals 2
    .param p1, "quote"    # Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # setter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mQuote:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;
    invoke-static {v0, p1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$1302(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/coinbase/api/internal/entity/InstantExchangeQuote;)Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    .line 1053
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$1400(Lcom/coinbase/android/transfers/TransferSendFragment;)Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1054
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mConfirmDialogData:Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$1400(Lcom/coinbase/android/transfers/TransferSendFragment;)Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedAmount:Lorg/joda/money/BigMoney;
    invoke-static {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$1500(Lcom/coinbase/android/transfers/TransferSendFragment;)Lorg/joda/money/BigMoney;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/coinbase/android/utils/TransactionUtils;->calculateFee(Lorg/joda/money/BigMoney;Lcom/coinbase/api/internal/entity/InstantExchangeQuote;)Lorg/joda/money/Money;

    move-result-object v1

    iput-object v1, v0, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->fee:Lorg/joda/money/Money;

    .line 1056
    :cond_2
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$500(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$500(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1058
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # invokes: Lcom/coinbase/android/transfers/TransferSendFragment;->showConfirmSendTransfer()V
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$1600(Lcom/coinbase/android/transfers/TransferSendFragment;)V

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1040
    check-cast p1, Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/transfers/TransferSendFragment$LoadInstantExchangeQuote;->onSuccess(Lcom/coinbase/api/internal/entity/InstantExchangeQuote;)V

    return-void
.end method
