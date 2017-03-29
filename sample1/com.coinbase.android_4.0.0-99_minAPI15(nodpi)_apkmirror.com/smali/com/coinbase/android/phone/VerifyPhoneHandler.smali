.class public Lcom/coinbase/android/phone/VerifyPhoneHandler;
.super Ljava/lang/Object;
.source "VerifyPhoneHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;
    }
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field private mBus:Lcom/squareup/otto/Bus;

.field private mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

.field private mEnteredCountryCode:Ljava/lang/String;

.field private mEnteredNumber:Ljava/lang/String;

.field private mEnteredToken:Ljava/lang/String;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mPhoneNumber:Lcom/coinbase/api/internal/models/phoneNumber/Data;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mSmsReceiver:Lroboguice/receiver/RoboBroadcastReceiver;

.field runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;Lcom/squareup/otto/Bus;)V
    .locals 2
    .param p1, "caller"    # Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;
    .param p2, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;-><init>(Lcom/coinbase/android/phone/VerifyPhoneHandler;)V

    iput-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->runnable:Ljava/lang/Runnable;

    .line 176
    new-instance v1, Lcom/coinbase/android/phone/VerifyPhoneHandler$4;

    invoke-direct {v1, p0}, Lcom/coinbase/android/phone/VerifyPhoneHandler$4;-><init>(Lcom/coinbase/android/phone/VerifyPhoneHandler;)V

    iput-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mSmsReceiver:Lroboguice/receiver/RoboBroadcastReceiver;

    .line 91
    iput-object p1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    .line 92
    iput-object p2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mBus:Lcom/squareup/otto/Bus;

    .line 94
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    invoke-interface {v1}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 95
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/coinbase/api/internal/models/phoneNumber/Data;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mPhoneNumber:Lcom/coinbase/api/internal/models/phoneNumber/Data;

    return-object v0
.end method

.method static synthetic access$202(Lcom/coinbase/android/phone/VerifyPhoneHandler;Lcom/coinbase/api/internal/models/phoneNumber/Data;)Lcom/coinbase/api/internal/models/phoneNumber/Data;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;
    .param p1, "x1"    # Lcom/coinbase/api/internal/models/phoneNumber/Data;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mPhoneNumber:Lcom/coinbase/api/internal/models/phoneNumber/Data;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mEnteredNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mEnteredToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mEnteredCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/squareup/otto/Bus;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mBus:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic access$700(Lcom/coinbase/android/phone/VerifyPhoneHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->verifyPhoneNumber(Ljava/lang/String;)V

    return-void
.end method

.method private addPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "country"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iput-object p1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mEnteredNumber:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mEnteredToken:Ljava/lang/String;

    .line 230
    iput-object p3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mEnteredCountryCode:Ljava/lang/String;

    .line 232
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;-><init>(Lcom/coinbase/android/phone/VerifyPhoneHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v0, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->createPhoneNumber(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)V

    .line 270
    return-void
.end method

.method private verifyPhoneNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mPhoneNumber:Lcom/coinbase/api/internal/models/phoneNumber/Data;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/phoneNumber/Data;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;

    invoke-direct {v3, p0}, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;-><init>(Lcom/coinbase/android/phone/VerifyPhoneHandler;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->verifyPhoneNumber(Ljava/util/HashMap;Ljava/lang/String;Lretrofit/Callback;)V

    .line 174
    return-void
.end method


# virtual methods
.method public addPhone()V
    .locals 4

    .prologue
    .line 99
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    invoke-interface {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    new-instance v1, Lcom/coinbase/android/phone/VerifyPhoneHandler$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/phone/VerifyPhoneHandler$2;-><init>(Lcom/coinbase/android/phone/VerifyPhoneHandler;)V

    .line 109
    .local v1, "fragment":Lcom/coinbase/android/phone/AddPhoneDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "IS_NEW"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    invoke-virtual {v1, v0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 113
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    invoke-interface {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->getCallerFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "verify_phone"

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 115
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Lcom/coinbase/android/phone/AddPhoneDialogFragment;
    :cond_0
    return-void
.end method

.method public checkIfSmsWasReceived()V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mSmsReceiver:Lroboguice/receiver/RoboBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    invoke-interface {v1}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mSmsReceiver:Lroboguice/receiver/RoboBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VerifyPhoneHandler"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "tfaToken"    # Ljava/lang/String;
    .param p3, "countryAlpha2"    # Ljava/lang/String;

    .prologue
    .line 118
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-gt v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    invoke-interface {v1}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    .line 120
    invoke-interface {v3}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070295

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 122
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->handler:Landroid/os/Handler;

    .line 123
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->runnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    invoke-interface {v1}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mSmsReceiver:Lroboguice/receiver/RoboBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->addPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public showVerifyPhoneDialogFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 273
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v1, v2, :cond_0

    .line 274
    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    invoke-interface {v1}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->getCallerFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 275
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    invoke-interface {v1}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    invoke-static {p1, p2, p3, p4}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    move-result-object v1

    const-string v2, "verify"

    .line 277
    invoke-virtual {v1, v0, v2}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 283
    .end local v0    # "manager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local v0    # "manager":Landroid/support/v4/app/FragmentManager;
    :cond_1
    const-string v1, "VerifyPhoneHandler"

    const-string v2, "Dialog not shown as app not in foreground"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
