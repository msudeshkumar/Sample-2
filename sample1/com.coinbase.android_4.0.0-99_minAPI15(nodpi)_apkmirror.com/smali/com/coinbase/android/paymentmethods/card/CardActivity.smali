.class public Lcom/coinbase/android/paymentmethods/card/CardActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "CardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;
    }
.end annotation


# static fields
.field public static final BILLING_ADDRESS:Ljava/lang/String; = "billing_address"

.field public static final CDV:Ljava/lang/String; = "cdv"

.field public static final JUMIO:Ljava/lang/String; = "jumio"


# instance fields
.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c2
    .end annotation
.end field

.field requiresBillingAddress:Z

.field requiresCDV:Z

.field requiresJumio:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->requiresCDV:Z

    .line 31
    iput-boolean v0, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->requiresBillingAddress:Z

    .line 32
    iput-boolean v0, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->requiresJumio:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/paymentmethods/card/CardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/card/CardActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardActivity;->createCardFormFragment()V

    return-void
.end method

.method private createCardFormFragment()V
    .locals 5

    .prologue
    .line 138
    new-instance v1, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-direct {v1}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;-><init>()V

    .line 139
    .local v1, "fragment":Lcom/coinbase/android/paymentmethods/card/CardFormFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "cdv"

    iget-boolean v3, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->requiresCDV:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string v2, "billing_address"

    iget-boolean v3, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->requiresBillingAddress:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    invoke-virtual {v1, v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->setArguments(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0d00fe

    const-class v4, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    .line 145
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 147
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardActivity;->supportLandscapeOnTablet()V

    .line 37
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f03002a

    invoke-virtual {p0, v1}, Lcom/coinbase/android/paymentmethods/card/CardActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardActivity;->initToolbar()V

    .line 42
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 44
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 46
    const-string v1, "cdv"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->requiresCDV:Z

    .line 47
    const-string v1, "billing_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->requiresBillingAddress:Z

    .line 48
    const-string v1, "jumio"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->requiresJumio:Z

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/paymentmethods/card/CardActivity$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/paymentmethods/card/CardActivity$1;-><init>(Lcom/coinbase/android/paymentmethods/card/CardActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 67
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onResume()V

    .line 73
    iget-boolean v0, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->requiresJumio:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;

    invoke-direct {v0, p0, p0}, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;-><init>(Lcom/coinbase/android/paymentmethods/card/CardActivity;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->execute()V

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardActivity;->createCardFormFragment()V

    goto :goto_0
.end method
