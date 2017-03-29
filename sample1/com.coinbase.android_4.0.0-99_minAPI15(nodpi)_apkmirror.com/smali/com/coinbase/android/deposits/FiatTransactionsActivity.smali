.class public Lcom/coinbase/android/deposits/FiatTransactionsActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "FiatTransactionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "DepositActivity_Account"

.field public static final TYPE:Ljava/lang/String; = "DepositActivity_Type"


# instance fields
.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->finish()V

    .line 60
    const v0, 0x7f04001c

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/deposits/FiatTransactionsActivity;->overridePendingTransition(II)V

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsActivity;->supportLandscapeOnTablet()V

    .line 26
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v5, 0x7f03002a

    invoke-virtual {p0, v5}, Lcom/coinbase/android/deposits/FiatTransactionsActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsActivity;->initToolbar()V

    .line 31
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 32
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 33
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "FiatTransactionsActivity requires account and type"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 35
    :cond_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    .local v3, "gson":Lcom/google/gson/Gson;
    const-string v5, "DepositActivity_Account"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 38
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsActivity;->finish()V

    .line 54
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v5, "DepositActivity_Type"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    .line 44
    .local v4, "type":Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;
    iget-object v5, p0, Lcom/coinbase/android/deposits/FiatTransactionsActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-static {v5}, Lcom/coinbase/android/utils/PaymentMethodUtils;->isUSUser(Lcom/coinbase/api/LoginManager;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    if-ne v4, v5, :cond_2

    .line 45
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/coinbase/android/deposits/SepaDepositFragment;->newInstance(Z)Lcom/coinbase/android/deposits/SepaDepositFragment;

    move-result-object v2

    .line 46
    .local v2, "dialog":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "showSepaInfo"

    invoke-virtual {v2, v5, v6}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v2    # "dialog":Landroid/support/v4/app/DialogFragment;
    :cond_2
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    .line 49
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f0d00fe

    .line 50
    invoke-static {v0, v4}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->newInstance(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;)Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 51
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsActivity;->finish()V

    .line 66
    return-void
.end method
