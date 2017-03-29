.class Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayCurrenciesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/joda/money/CurrencyUnit;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;


# direct methods
.method protected constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->this$1:Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;

    .line 338
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 339
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/joda/money/CurrencyUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getSupportedCurrencies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->context:Landroid/content/Context;

    const v1, 0x7f070051

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 379
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 336
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/joda/money/CurrencyUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/joda/money/CurrencyUnit;>;"
    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->this$1:Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;

    iget-object v2, v2, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 374
    .end local p1    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/joda/money/CurrencyUnit;>;"
    :goto_0
    return-void

    .line 351
    .restart local p1    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/joda/money/CurrencyUnit;>;"
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->this$1:Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;

    iput-object p1, v2, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->mCurrencyOptions:Ljava/util/List;

    .line 352
    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->this$1:Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;

    iget-object v2, v2, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->mCurrencyOptions:Ljava/util/List;

    new-instance v3, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask$1;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 359
    new-instance v1, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask$2;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;)V

    .line 369
    .local v1, "dialog":Landroid/support/v4/app/DialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ChooseCurrenciesDialogFragment_Currencies"

    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/joda/money/CurrencyUnit;>;"
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 371
    const-string v2, "SpinnerDialogFragment_Selected_Index"

    iget-object v3, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->this$1:Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;

    # invokes: Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->getDefaultOptionIndex()I
    invoke-static {v3}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->access$000(Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    invoke-virtual {v1, v0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 373
    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->this$1:Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;

    iget-object v2, v2, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "change_currency"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
