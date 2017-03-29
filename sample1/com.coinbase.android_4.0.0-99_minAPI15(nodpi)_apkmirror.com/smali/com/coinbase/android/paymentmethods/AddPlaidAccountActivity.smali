.class public Lcom/coinbase/android/paymentmethods/AddPlaidAccountActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "AddPlaidAccountActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountActivity;->setContentView(I)V

    .line 15
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountActivity;->initToolbar()V

    .line 17
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0d00fe

    new-instance v2, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;

    invoke-direct {v2}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountFragment;-><init>()V

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 22
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPlaidAccountActivity;->supportLandscapeOnTablet()V

    .line 23
    return-void
.end method
