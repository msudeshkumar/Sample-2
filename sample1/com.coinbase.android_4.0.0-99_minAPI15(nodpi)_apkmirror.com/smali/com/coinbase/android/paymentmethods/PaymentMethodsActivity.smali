.class public Lcom/coinbase/android/paymentmethods/PaymentMethodsActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "PaymentMethodsActivity.java"


# static fields
.field public static final SKIP_EMPTY_VIEW:Ljava/lang/String; = "SKIP_EMPTY_VIEW"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsActivity;->supportLandscapeOnTablet()V

    .line 14
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v1, 0x7f03002a

    invoke-virtual {p0, v1}, Lcom/coinbase/android/paymentmethods/PaymentMethodsActivity;->setContentView(I)V

    .line 17
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsActivity;->initToolbar()V

    .line 19
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    invoke-direct {v0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;-><init>()V

    .line 20
    .local v0, "fragment":Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00fe

    .line 23
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 25
    return-void
.end method
