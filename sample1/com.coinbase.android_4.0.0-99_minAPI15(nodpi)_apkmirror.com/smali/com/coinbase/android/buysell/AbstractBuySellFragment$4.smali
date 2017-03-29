.class Lcom/coinbase/android/buysell/AbstractBuySellFragment$4;
.super Ljava/lang/Object;
.source "AbstractBuySellFragment.java"

# interfaces
.implements Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;


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
    .line 286
    iput-object p1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$4;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException()V
    .locals 0

    .prologue
    .line 295
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
    .line 300
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/paymentMethods/Data;>;"
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$4;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # setter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethods:Ljava/util/List;
    invoke-static {v1, p1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$402(Lcom/coinbase/android/buysell/AbstractBuySellFragment;Ljava/util/List;)Ljava/util/List;

    .line 301
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$4;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # invokes: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updatePaymentMethodsDisplay()V
    invoke-static {v1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$500(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V

    .line 303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 304
    .local v0, "pm":Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/paymentMethods/Data;->getPrimaryBuy()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$4;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mDefaultBuy:Ljava/lang/String;

    .line 307
    :cond_1
    invoke-virtual {v0}, Lcom/coinbase/v2/models/paymentMethods/Data;->getPrimarySell()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$4;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mDefaultSell:Ljava/lang/String;

    goto :goto_0

    .line 311
    .end local v0    # "pm":Lcom/coinbase/v2/models/paymentMethods/Data;
    :cond_2
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$4;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # getter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$300(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 290
    return-void
.end method
