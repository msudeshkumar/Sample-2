.class Lcom/coinbase/android/buysell/AbstractBuySellFragment$9;
.super Ljava/lang/Object;
.source "AbstractBuySellFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/buysell/AbstractBuySellFragment;->initializePaymentMethodsSpinner()V
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
    .line 770
    iput-object p1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$9;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$9;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    iget-object v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$9;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # getter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$300(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v2/models/paymentMethods/Data;

    # setter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-static {v3, v2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$902(Lcom/coinbase/android/buysell/AbstractBuySellFragment;Lcom/coinbase/v2/models/paymentMethods/Data;)Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 774
    iget-object v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$9;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # getter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-static {v2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$900(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Lcom/coinbase/v2/models/paymentMethods/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/paymentMethods/Data;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "nativeCurrencyCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$9;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # getter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mCurrencyLabel:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$1000(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    if-eqz v0, :cond_0

    .line 780
    invoke-static {v0}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v2

    invoke-static {v2}, Lorg/joda/money/Money;->zero(Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/Money;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$9;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    iget-object v3, v3, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 781
    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v3

    .line 779
    invoke-static {v2, v3}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "zero":Ljava/lang/String;
    iget-object v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$9;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # getter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mFees:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$1100(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$9;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # getter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mTotalView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$1200(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 785
    .end local v1    # "zero":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$9;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getQuote()V

    .line 786
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 790
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
