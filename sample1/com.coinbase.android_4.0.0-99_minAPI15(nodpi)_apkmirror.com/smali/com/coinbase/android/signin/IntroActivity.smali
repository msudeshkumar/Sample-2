.class public Lcom/coinbase/android/signin/IntroActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "IntroActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/coinbase/android/signin/IntroActivity;->supportRequestWindowFeature(I)Z

    .line 24
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v5, 0x7f030026

    invoke-virtual {p0, v5}, Lcom/coinbase/android/signin/IntroActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/coinbase/android/signin/IntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 28
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/coinbase/android/signin/IntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/coinbase/android/googleappinvite/GoogleAppInviteUtils;->setReferrerId(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    const v5, 0x7f0d00f2

    invoke-virtual {p0, v5}, Lcom/coinbase/android/signin/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 31
    .local v3, "signin":Landroid/view/View;
    new-instance v5, Lcom/coinbase/android/signin/IntroActivity$1;

    invoke-direct {v5, p0}, Lcom/coinbase/android/signin/IntroActivity$1;-><init>(Lcom/coinbase/android/signin/IntroActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v5, 0x7f0d00f1

    invoke-virtual {p0, v5}, Lcom/coinbase/android/signin/IntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 41
    .local v4, "signup":Landroid/view/View;
    new-instance v5, Lcom/coinbase/android/signin/IntroActivity$2;

    invoke-direct {v5, p0}, Lcom/coinbase/android/signin/IntroActivity$2;-><init>(Lcom/coinbase/android/signin/IntroActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v5, p0, Lcom/coinbase/android/signin/IntroActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/coinbase/android/signin/IntroActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->isSignedIn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 53
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/coinbase/android/MainActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/coinbase/android/signin/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/coinbase/android/signin/IntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/coinbase/android/googleNow/GoogleNowHelper;->parseDeeplinkingInformation(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 60
    .local v1, "googleNowIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    .end local v1    # "googleNowIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v5

    const-string v6, "Event - Get started"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 69
    const-string v5, "login_code_waiting_for_dv"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/coinbase/android/utils/PreferenceUtils;->getPrefsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/coinbase/android/signin/LoginActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "dvIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/IntroActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
