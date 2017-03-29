.class public Lcom/coinbase/android/CoinbaseActivity;
.super Lroboguice/activity/RoboActionBarActivity;
.source "CoinbaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/CoinbaseActivity$GetUserTask;,
        Lcom/coinbase/android/CoinbaseActivity$RequiresPIN;,
        Lcom/coinbase/android/CoinbaseActivity$RequiresAuthentication;
    }
.end annotation


# instance fields
.field bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mMemoryStore:Lcom/coinbase/android/utils/MemoryStore;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mPinManager:Lcom/coinbase/android/pin/PINManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lroboguice/activity/RoboActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initToolbar()V
    .locals 4

    .prologue
    const v3, 0x7f0d00b1

    .line 167
    invoke-virtual {p0, v3}, Lcom/coinbase/android/CoinbaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p0, v3}, Lcom/coinbase/android/CoinbaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 169
    .local v1, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v1}, Lcom/coinbase/android/CoinbaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 170
    new-instance v2, Lcom/coinbase/android/CoinbaseActivity$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/CoinbaseActivity$1;-><init>(Lcom/coinbase/android/CoinbaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_0
    :goto_0
    return-void

    .line 179
    .restart local v1    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lroboguice/activity/RoboActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/coinbase/android/CoinbaseActivity$RequiresAuthentication;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;

    invoke-direct {v0, p0, p0}, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;-><init>(Lcom/coinbase/android/CoinbaseActivity;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->execute()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity;->signOut()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lroboguice/activity/RoboActionBarActivity;->onPause()V

    .line 63
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-super {p0}, Lroboguice/activity/RoboActionBarActivity;->onResume()V

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/coinbase/android/CoinbaseActivity$RequiresAuthentication;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/coinbase/android/CoinbaseActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->isSignedIn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity;->signOut()V

    .line 122
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/coinbase/android/CoinbaseActivity$RequiresPIN;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/coinbase/android/CoinbaseActivity;->mPinManager:Lcom/coinbase/android/pin/PINManager;

    sget-object v2, Lcom/coinbase/android/pin/PINManager$AccessType;->APP_OPEN:Lcom/coinbase/android/pin/PINManager$AccessType;

    invoke-virtual {v1, p0, v2}, Lcom/coinbase/android/pin/PINManager;->isProtected(Landroid/content/Context;Lcom/coinbase/android/pin/PINManager$AccessType;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coinbase/android/CoinbaseActivity;->mPinManager:Lcom/coinbase/android/pin/PINManager;

    invoke-virtual {v1, p0}, Lcom/coinbase/android/pin/PINManager;->shouldGrantAccess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/coinbase/android/CoinbaseActivity;->mPinManager:Lcom/coinbase/android/pin/PINManager;

    invoke-virtual {v1}, Lcom/coinbase/android/pin/PINManager;->isQuitPINLock()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, Lcom/coinbase/android/CoinbaseActivity;->mPinManager:Lcom/coinbase/android/pin/PINManager;

    invoke-virtual {v1, v3}, Lcom/coinbase/android/pin/PINManager;->setQuitPINLock(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity;->finish()V

    .line 136
    :cond_1
    :goto_1
    invoke-super {p0}, Lroboguice/activity/RoboActionBarActivity;->onResume()V

    .line 137
    return-void

    .line 111
    .restart local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    const-string v1, "signed_up_waiting_for_email_confirmation"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity;->redirectToSignupPage()V

    goto :goto_0

    .line 115
    :cond_3
    const-string v1, "account_needs_user_agreement"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity;->redirectToTOSPage()V

    goto :goto_0

    .line 131
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity;->showPINPrompt()V

    goto :goto_1
.end method

.method public redirectToLoginPage()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coinbase/android/signin/IntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Lcom/coinbase/android/CoinbaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity;->finish()V

    .line 144
    return-void
.end method

.method protected redirectToSignupPage()V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coinbase/android/signin/SignupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Lcom/coinbase/android/CoinbaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity;->finish()V

    .line 164
    return-void
.end method

.method protected redirectToTOSPage()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/coinbase/android/CoinbaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity;->finish()V

    .line 151
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 97
    invoke-super {p0, p1}, Lroboguice/activity/RoboActionBarActivity;->setContentView(I)V

    .line 98
    return-void
.end method

.method protected showPINPrompt()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coinbase/android/pin/PINPromptActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.coinbase.android.pin.ACTION_PROMPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcom/coinbase/android/CoinbaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method protected signOut()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseActivity;->mMemoryStore:Lcom/coinbase/android/utils/MemoryStore;

    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/utils/MemoryStore;->setRequestedIntent(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->signout()Z

    .line 84
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity;->redirectToLoginPage()V

    .line 85
    return-void
.end method

.method protected supportLandscapeOnTablet()V
    .locals 1

    .prologue
    .line 88
    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coinbase/android/CoinbaseActivity;->setRequestedOrientation(I)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/android/CoinbaseActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
