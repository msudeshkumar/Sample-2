.class Lcom/coinbase/android/transfers/EmailPromptFragment$1;
.super Ljava/lang/Object;
.source "EmailPromptFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/EmailPromptFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

.field final synthetic val$field:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/EmailPromptFragment;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/EmailPromptFragment;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

    iput-object p2, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->val$field:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 93
    iget-object v6, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

    invoke-virtual {v6}, Lcom/coinbase/android/transfers/EmailPromptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/coinbase/android/utils/Utils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 96
    new-instance v5, Lcom/coinbase/v1/entity/Transaction;

    invoke-direct {v5}, Lcom/coinbase/v1/entity/Transaction;-><init>()V

    .line 97
    .local v5, "transaction":Lcom/coinbase/v1/entity/Transaction;
    iget-object v6, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

    iget-object v6, v6, Lcom/coinbase/android/transfers/EmailPromptFragment;->mNotes:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/coinbase/v1/entity/Transaction;->setNotes(Ljava/lang/String;)V

    .line 98
    iget-object v6, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

    iget-object v6, v6, Lcom/coinbase/android/transfers/EmailPromptFragment;->mAmount:Lorg/joda/money/Money;

    invoke-virtual {v5, v6}, Lcom/coinbase/v1/entity/Transaction;->setAmount(Lorg/joda/money/Money;)V

    .line 99
    iget-object v6, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->val$field:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coinbase/v1/entity/Transaction;->setFrom(Ljava/lang/String;)V

    .line 100
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coinbase/v1/entity/Transaction;->setRequest(Ljava/lang/Boolean;)V

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "args":Landroid/os/Bundle;
    sget-object v6, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->TRANSACTION:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 104
    sget-object v6, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->ACCOUNT:Ljava/lang/String;

    iget-object v7, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

    iget-object v7, v7, Lcom/coinbase/android/transfers/EmailPromptFragment;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    invoke-direct {v1}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;-><init>()V

    .line 107
    .local v1, "f":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 108
    iget-object v6, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

    invoke-virtual {v6}, Lcom/coinbase/android/transfers/EmailPromptFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "delayed_request"

    invoke-virtual {v1, v6, v7}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 121
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "f":Landroid/support/v4/app/DialogFragment;
    .end local v5    # "transaction":Lcom/coinbase/v1/entity/Transaction;
    .end local p1    # "dialog":Landroid/content/DialogInterface;
    :goto_0
    return-void

    .line 112
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const v6, 0x7f0d02fd

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    .line 114
    .local v2, "field":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "recipient":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "to"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v6, "amount"

    iget-object v7, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

    iget-object v7, v7, Lcom/coinbase/android/transfers/EmailPromptFragment;->mAmount:Lorg/joda/money/Money;

    invoke-virtual {v7}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v6, "currency"

    iget-object v7, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

    iget-object v7, v7, Lcom/coinbase/android/transfers/EmailPromptFragment;->mAmount:Lorg/joda/money/Money;

    invoke-virtual {v7}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v7

    invoke-virtual {v7}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v6, "description"

    iget-object v7, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

    iget-object v7, v7, Lcom/coinbase/android/transfers/EmailPromptFragment;->mNotes:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v6, Lcom/coinbase/android/transfers/RequestMoneyTask;

    iget-object v7, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

    invoke-virtual {v7}, Lcom/coinbase/android/transfers/EmailPromptFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/coinbase/android/transfers/RequestMoneyTask;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/coinbase/android/transfers/EmailPromptFragment$1;->this$0:Lcom/coinbase/android/transfers/EmailPromptFragment;

    iget-object v7, v7, Lcom/coinbase/android/transfers/EmailPromptFragment;->mAccountId:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Lcom/coinbase/android/transfers/RequestMoneyTask;->requestMoney(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
