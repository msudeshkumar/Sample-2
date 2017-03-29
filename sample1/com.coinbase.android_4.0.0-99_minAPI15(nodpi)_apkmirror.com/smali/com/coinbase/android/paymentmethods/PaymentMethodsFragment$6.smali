.class Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;
.super Ljava/lang/Object;
.source "PaymentMethodsFragment.java"

# interfaces
.implements Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onFinally(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/paymentMethods/Data;>;"
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 311
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 313
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mAdapter:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    invoke-virtual {v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->clear()V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 315
    .local v1, "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-virtual {v1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    move-result-object v2

    .line 316
    .local v2, "type":Lcom/coinbase/v2/models/paymentMethods/Data$Type;
    sget-object v4, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->PAYPAL_ACCOUNT:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-ne v2, v4, :cond_1

    .line 317
    invoke-virtual {v1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getAllowSell()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    :cond_1
    sget-object v4, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->SEPA_BANK_ACCOUNT:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->SEPA_PAYMENT_METHOD:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->FIAT_ACCOUNT:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-eq v2, v4, :cond_0

    .line 323
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v4, v4, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mAdapter:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    invoke-virtual {v4, v1}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 325
    .end local v1    # "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    .end local v2    # "type":Lcom/coinbase/v2/models/paymentMethods/Data$Type;
    :cond_2
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mAdapter:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    invoke-virtual {v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->notifyDataSetChanged()V

    .line 327
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mAdapter:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    invoke-virtual {v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 328
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 329
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getFeatureFlags()Ljava/util/List;

    move-result-object v3

    const-string v4, "debit_card_buys"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 331
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v3}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->toggle()V

    .line 339
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    :goto_1
    return-void

    .line 332
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-boolean v3, v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->argumentsRead:Z

    if-nez v3, :cond_3

    const-string v3, "SKIP_EMPTY_VIEW"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->argumentsRead:Z

    .line 334
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    # invokes: Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->addBankAccount()V
    invoke-static {v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->access$000(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V

    goto :goto_1

    .line 338
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method
