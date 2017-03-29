.class Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;
.super Ljava/lang/Object;
.source "FiatTransactionsFragment.java"

# interfaces
.implements Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/deposits/FiatTransactionsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 303
    iput-object p1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public onFinally(Ljava/util/List;)V
    .locals 4
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
    .line 314
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/paymentMethods/Data;>;"
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # getter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$000(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 316
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 317
    .local v0, "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    iget-object v2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # getter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;
    invoke-static {v2}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$100(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    move-result-object v2

    sget-object v3, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # getter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;
    invoke-static {v2}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$200(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coinbase/android/utils/PaymentMethodUtils;->isValidDeposit(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/paymentMethods/Data;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    .line 318
    # getter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;
    invoke-static {v2}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$100(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    move-result-object v2

    sget-object v3, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->WITHDRAW:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # getter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;
    invoke-static {v2}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$200(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coinbase/android/utils/PaymentMethodUtils;->isValidWithdraw(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/paymentMethods/Data;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    :cond_2
    iget-object v2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # getter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$000(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 322
    .end local v0    # "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    :cond_3
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # getter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$000(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 324
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # getter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$000(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 325
    iget-object v2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # getter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$000(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/paymentMethods/Data;

    # setter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-static {v2, v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$302(Lcom/coinbase/android/deposits/FiatTransactionsFragment;Lcom/coinbase/v2/models/paymentMethods/Data;)Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 327
    :cond_4
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method
