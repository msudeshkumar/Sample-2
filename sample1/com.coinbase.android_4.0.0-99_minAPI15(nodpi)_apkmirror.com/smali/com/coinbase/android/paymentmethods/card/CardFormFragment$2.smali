.class Lcom/coinbase/android/paymentmethods/card/CardFormFragment$2;
.super Ljava/lang/Object;
.source "CardFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    new-instance v0, Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    .line 196
    invoke-virtual {v2}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->loginManager:Lcom/coinbase/api/LoginManager;

    .line 197
    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getPrimaryAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    iget-object v4, v4, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->paymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    const-string v5, "USD"

    invoke-direct/range {v0 .. v5}, Lcom/coinbase/android/transfers/BuyBitcoinTask;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/paymentMethods/Data;Ljava/lang/String;)V

    sget v1, Lcom/coinbase/android/utils/MoneyUtils;->FIVE:I

    int-to-double v2, v1

    .line 199
    invoke-virtual {v0, v2, v3}, Lcom/coinbase/android/transfers/BuyBitcoinTask;->buyBitcoin(D)V

    .line 200
    return-void
.end method
