.class public Lcom/coinbase/android/signin/LoginActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;
.implements Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/signin/LoginActivity$GetUserTask;,
        Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;
    }
.end annotation


# static fields
.field private static final EMAIL:Ljava/lang/String; = "email"

.field static final GET_2FA_TOKEN_REQUEST:I = 0x1

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final REFERRER_ID:Ljava/lang/String; = "referrerId"

.field private static final RETRY_WAIT_TIME:I = 0x7d0


# instance fields
.field bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field m2faToken:Ljava/lang/String;

.field m2faType:Ljava/lang/String;

.field mAttemptSigninTask:Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;

.field mAuthCode:Ljava/lang/String;

.field mBackButton:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00a1
    .end annotation
.end field

.field mConfirmDeviceContainer:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00e7
    .end annotation
.end field

.field mConfirmEmailText:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00e8
    .end annotation
.end field

.field mDeviceConfirmationCodeRetryTimer:Ljava/util/Timer;

.field mDeviceConfirmationText:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00e6
    .end annotation
.end field

.field mEmail:Ljava/lang/String;

.field mEmailVerifyTask:Lcom/coinbase/android/signin/EmailVerifyTask;

.field mEmailView:Landroid/widget/EditText;
    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/Email;
        message = "Please enter a valid email"
        order = 0x2
    .end annotation

    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/Required;
        message = "Email is a required field"
        order = 0x1
    .end annotation

    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00df
    .end annotation
.end field

.field mForgotPassword:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00e4
    .end annotation
.end field

.field mLoginForm:Landroid/widget/LinearLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00dd
    .end annotation
.end field

.field mMemoryStore:Lcom/coinbase/android/utils/MemoryStore;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mPassword:Ljava/lang/String;

.field mPasswordView:Landroid/widget/EditText;
    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/Password;
        message = "Password is a required field"
        order = 0x3
    .end annotation

    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00e2
    .end annotation
.end field

.field mPrefsManager:Lcom/coinbase/android/settings/PreferencesManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00e5
    .end annotation
.end field

.field mReferrerId:Ljava/lang/String;

.field mSubmitButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00e3
    .end annotation
.end field

.field mValidator:Lcom/mobsandgeeks/saripaar/Validator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mDeviceConfirmationCodeRetryTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/signin/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/LoginActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/coinbase/android/signin/LoginActivity;->proceed()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/signin/LoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/LoginActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/coinbase/android/signin/LoginActivity;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->signout()Z

    .line 581
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->finish()V

    .line 582
    return-void
.end method

.method private getAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "referrerId"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 317
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v1, "token"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v1, "referrer_id"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v1, "client_id"

    const-string v2, "34183b03a3e1f0b74ee6aa8a6150e90125de2d6c1ee4ff7880c2b7e6e98b11f5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v1, "client_secret"

    const-string v2, "2c481f46f9dc046b4b9a67e630041b9906c023d139fbc77a47053328b9d3122d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "redirect_uri"

    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getRedirectUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "scope"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v2, "device"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v1, p0, Lcom/coinbase/android/signin/LoginActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/signin/LoginActivity$4;

    invoke-direct {v2, p0}, Lcom/coinbase/android/signin/LoginActivity$4;-><init>(Lcom/coinbase/android/signin/LoginActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->getAuthCode(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 376
    return-void

    .line 325
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getError(Lretrofit/Response;Lretrofit/Retrofit;)Lcom/coinbase/api/internal/models/auth/Error;
    .locals 6
    .param p1, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<*>;",
            "Lretrofit/Retrofit;",
            ")",
            "Lcom/coinbase/api/internal/models/auth/Error;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "response":Lretrofit/Response;, "Lretrofit/Response<*>;"
    const-class v4, Lcom/coinbase/api/internal/models/auth/Error;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    .line 380
    invoke-virtual {p1, v4, v5}, Lretrofit/Retrofit;->responseConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object v1

    .line 385
    .local v1, "converter":Lretrofit/Converter;, "Lretrofit/Converter<Lcom/squareup/okhttp/ResponseBody;Lcom/coinbase/api/internal/models/auth/Error;>;"
    :try_start_0
    invoke-virtual {p0}, Lretrofit/Response;->errorBody()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    .line 386
    .local v0, "body":Lcom/squareup/okhttp/ResponseBody;
    invoke-interface {v1, v0}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/api/internal/models/auth/Error;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0    # "body":Lcom/squareup/okhttp/ResponseBody;
    .local v3, "error":Lcom/coinbase/api/internal/models/auth/Error;
    :goto_0
    return-object v3

    .line 387
    .end local v3    # "error":Lcom/coinbase/api/internal/models/auth/Error;
    :catch_0
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/coinbase/api/internal/models/auth/Error;

    invoke-direct {v3}, Lcom/coinbase/api/internal/models/auth/Error;-><init>()V

    .line 389
    .restart local v3    # "error":Lcom/coinbase/api/internal/models/auth/Error;
    const-string v4, "none"

    invoke-virtual {v3, v4}, Lcom/coinbase/api/internal/models/auth/Error;->setError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private populateUserEmail()V
    .locals 7

    .prologue
    .line 247
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 249
    .local v3, "emailPattern":Ljava/util/regex/Pattern;
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 250
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    .line 251
    .local v2, "email":Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 252
    .local v0, "account":Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 253
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 258
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    if-eqz v2, :cond_1

    .line 259
    iget-object v4, p0, Lcom/coinbase/android/signin/LoginActivity;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v4, p0, Lcom/coinbase/android/signin/LoginActivity;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "email":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 251
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v2    # "email":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "email":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private proceed()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 585
    const-string v4, "login_code_waiting_for_dv"

    invoke-static {p0, v4, v6}, Lcom/coinbase/android/utils/PreferenceUtils;->putPrefsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 589
    :try_start_0
    iget-object v4, p0, Lcom/coinbase/android/signin/LoginActivity;->mMemoryStore:Lcom/coinbase/android/utils/MemoryStore;

    invoke-virtual {v4}, Lcom/coinbase/android/utils/MemoryStore;->getRequestedIntent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 590
    iget-object v4, p0, Lcom/coinbase/android/signin/LoginActivity;->mMemoryStore:Lcom/coinbase/android/utils/MemoryStore;

    invoke-virtual {v4}, Lcom/coinbase/android/utils/MemoryStore;->getRequestedIntent()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 594
    .local v3, "requestedIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 595
    .local v0, "clazz":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 596
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 602
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v3    # "requestedIntent":Landroid/content/Intent;
    :goto_0
    iput-object v6, p0, Lcom/coinbase/android/signin/LoginActivity;->mEmail:Ljava/lang/String;

    .line 603
    iput-object v6, p0, Lcom/coinbase/android/signin/LoginActivity;->mPassword:Ljava/lang/String;

    .line 605
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v4

    const-string v5, "Event - Device verified"

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 606
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v4

    const-string v5, "Event - Transactions dashboard shown"

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coinbase/android/googleNow/GoogleNowHelper;->createAlarm(Landroid/content/Context;)V

    .line 609
    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 610
    invoke-virtual {p0, v2}, Lcom/coinbase/android/signin/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 611
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->finish()V

    .line 612
    return-void

    .line 592
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-direct {v4}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 597
    :catch_0
    move-exception v1

    .line 598
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 599
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/coinbase/android/MainActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 597
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public attemptSignIn()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mAttemptSigninTask:Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mAttemptSigninTask:Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->cancel(Z)Z

    .line 450
    :cond_0
    new-instance v0, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;

    invoke-direct {v0, p0, p0}, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;-><init>(Lcom/coinbase/android/signin/LoginActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mAttemptSigninTask:Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;

    .line 451
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mAttemptSigninTask:Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->execute()V

    .line 452
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "aRequestCode"    # I
    .param p2, "aResultCode"    # I
    .param p3, "aData"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 406
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 407
    packed-switch p1, :pswitch_data_0

    .line 430
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/coinbase/android/CoinbaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 431
    return-void

    .line 409
    :pswitch_0
    sget-object v0, Lcom/coinbase/android/signin/TwoFactorActivity;->TWO_FACTOR_TOKEN:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->m2faToken:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mEmail:Ljava/lang/String;

    iget-object v1, p0, Lcom/coinbase/android/signin/LoginActivity;->mPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity;->m2faToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/coinbase/android/signin/LoginActivity;->mReferrerId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/coinbase/android/signin/LoginActivity;->getAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mDeviceConfirmationText:Landroid/widget/TextView;

    const v1, 0x7f07016c

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->showProgress()V

    goto :goto_0

    .line 416
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 418
    iput-object v1, p0, Lcom/coinbase/android/signin/LoginActivity;->mEmail:Ljava/lang/String;

    .line 419
    iput-object v1, p0, Lcom/coinbase/android/signin/LoginActivity;->mPassword:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mEmailView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 422
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 423
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->finish()V

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->showLoginForm()V

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 626
    iget-object v1, p0, Lcom/coinbase/android/signin/LoginActivity;->mLoginForm:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 627
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onBackPressed()V

    .line 643
    :goto_0
    return-void

    .line 631
    :cond_0
    new-instance v0, Lcom/coinbase/android/signin/LoginActivity$6;

    invoke-direct {v0, p0}, Lcom/coinbase/android/signin/LoginActivity$6;-><init>(Lcom/coinbase/android/signin/LoginActivity;)V

    .line 642
    .local v0, "f":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/LoginActivity;->supportRequestWindowFeature(I)Z

    .line 169
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->finish()V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/LoginActivity;->setContentView(I)V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/LoginActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 188
    if-eqz p1, :cond_2

    const-string v0, "email"

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 190
    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mEmail:Ljava/lang/String;

    .line 191
    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mPassword:Ljava/lang/String;

    .line 192
    const-string v0, "referrerId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mReferrerId:Ljava/lang/String;

    .line 197
    :goto_1
    new-instance v0, Lcom/mobsandgeeks/saripaar/Validator;

    invoke-direct {v0, p0}, Lcom/mobsandgeeks/saripaar/Validator;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mValidator:Lcom/mobsandgeeks/saripaar/Validator;

    .line 198
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mValidator:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-virtual {v0, p0}, Lcom/mobsandgeeks/saripaar/Validator;->setValidationListener(Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;)V

    .line 200
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Lcom/coinbase/android/signin/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/LoginActivity$1;-><init>(Lcom/coinbase/android/signin/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mPasswordView:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 209
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mPasswordView:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 211
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mForgotPassword:Landroid/view/View;

    new-instance v1, Lcom/coinbase/android/signin/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/LoginActivity$2;-><init>(Lcom/coinbase/android/signin/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mBackButton:Landroid/view/View;

    new-instance v1, Lcom/coinbase/android/signin/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/LoginActivity$3;-><init>(Lcom/coinbase/android/signin/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/LoginActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/coinbase/android/signin/LoginActivity;->populateUserEmail()V

    goto :goto_0

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/coinbase/android/signin/LoginActivity;->populateUserEmail()V

    goto :goto_1
.end method

.method public onCredentialsIncorrect()V
    .locals 2

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->showLoginForm()V

    .line 435
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 436
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f070165

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 437
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onDestroy()V

    .line 243
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public onEmailUnverified()V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public onEmailVerified(Lcom/coinbase/v1/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->attemptSignIn()V

    .line 617
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x1

    .line 542
    instance-of v0, p1, Lcom/coinbase/v1/exception/UnauthorizedDeviceException;

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->onUnconfirmedDevice()V

    .line 554
    :goto_0
    return-void

    .line 545
    :cond_0
    instance-of v0, p1, Lcom/coinbase/v1/exception/CoinbaseException;

    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 553
    :goto_1
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->showLoginForm()V

    goto :goto_0

    .line 547
    :cond_1
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    const v0, 0x7f070164

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 550
    :cond_2
    const-string v1, "LoginActivity"

    if-nez p1, :cond_3

    const-string v0, "Null error"

    :goto_2
    invoke-static {v1, v0}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const v0, 0x7f070163

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 550
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    const-string v1, "login_code_waiting_for_dv"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/coinbase/android/utils/PreferenceUtils;->getPrefsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "authCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coinbase/android/signin/LoginActivity;->mAttemptSigninTask:Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;

    if-nez v1, :cond_0

    .line 271
    iput-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mAuthCode:Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->onUnconfirmedDevice()V

    .line 273
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->showProgress()V

    .line 275
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 558
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onPause()V

    .line 560
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 561
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 280
    const-string v0, "email"

    iget-object v1, p0, Lcom/coinbase/android/signin/LoginActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "password"

    iget-object v1, p0, Lcom/coinbase/android/signin/LoginActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "referrerId"

    iget-object v1, p0, Lcom/coinbase/android/signin/LoginActivity;->mReferrerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public onSignin()V
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->showProgress()V

    .line 488
    new-instance v0, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;

    invoke-direct {v0, p0, p0}, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;-><init>(Lcom/coinbase/android/signin/LoginActivity;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->execute()V

    .line 489
    return-void
.end method

.method public onTwoFactorRequired(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coinbase/android/signin/TwoFactorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/coinbase/android/signin/TwoFactorActivity;->USERNAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    sget-object v1, Lcom/coinbase/android/signin/TwoFactorActivity;->PASSWORD:Ljava/lang/String;

    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    sget-object v1, Lcom/coinbase/android/signin/TwoFactorActivity;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/signin/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 401
    return-void
.end method

.method public onUnconfirmedDevice()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 455
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mDeviceConfirmationText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mLoginForm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mConfirmDeviceContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mDeviceConfirmationCodeRetryTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mDeviceConfirmationCodeRetryTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 463
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mDeviceConfirmationCodeRetryTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 466
    :cond_0
    const-string v0, "login_code_waiting_for_dv"

    iget-object v1, p0, Lcom/coinbase/android/signin/LoginActivity;->mAuthCode:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/coinbase/android/utils/PreferenceUtils;->putPrefsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 471
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mDeviceConfirmationCodeRetryTimer:Ljava/util/Timer;

    .line 472
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mDeviceConfirmationCodeRetryTimer:Ljava/util/Timer;

    new-instance v1, Lcom/coinbase/android/signin/LoginActivity$5;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/LoginActivity$5;-><init>(Lcom/coinbase/android/signin/LoginActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 483
    return-void
.end method

.method public onValidationFailed(Landroid/view/View;Lcom/mobsandgeeks/saripaar/Rule;)V
    .locals 2
    .param p1, "failedView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p2, "failedRule":Lcom/mobsandgeeks/saripaar/Rule;, "Lcom/mobsandgeeks/saripaar/Rule<*>;"
    invoke-virtual {p2}, Lcom/mobsandgeeks/saripaar/Rule;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "message":Ljava/lang/String;
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 309
    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "failedView":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 313
    :goto_0
    return-void

    .line 311
    .restart local p1    # "failedView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onValidationSucceeded()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mPassword:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mEmail:Ljava/lang/String;

    .line 294
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "referrer_id"

    const/4 v2, 0x0

    .line 295
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mReferrerId:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mEmail:Ljava/lang/String;

    iget-object v1, p0, Lcom/coinbase/android/signin/LoginActivity;->mPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity;->m2faToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/coinbase/android/signin/LoginActivity;->mReferrerId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/coinbase/android/signin/LoginActivity;->getAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mDeviceConfirmationText:Landroid/widget/TextView;

    const v1, 0x7f07016c

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->showProgress()V

    .line 301
    return-void
.end method

.method protected redirectToTOSPage()V
    .locals 2

    .prologue
    .line 535
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 536
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 538
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->finish()V

    .line 539
    return-void
.end method

.method public showLoginForm()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 572
    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->showKeyboard(Landroid/app/Activity;)V

    .line 573
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mLoginForm:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    invoke-virtual {v0, v2}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mDeviceConfirmationText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mConfirmDeviceContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 577
    return-void
.end method

.method public showProgress()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 564
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 565
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mLoginForm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mDeviceConfirmationText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity;->mConfirmDeviceContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 569
    return-void
.end method

.method public startSignin(Ljava/lang/String;)V
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->showProgress()V

    .line 441
    iput-object p1, p0, Lcom/coinbase/android/signin/LoginActivity;->mAuthCode:Ljava/lang/String;

    .line 443
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity;->attemptSignIn()V

    .line 444
    return-void
.end method

.method public stateDisclosureFinished(Lcom/coinbase/android/signin/StateDisclosureActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/coinbase/android/signin/StateDisclosureActivity;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 647
    iget-object v0, p1, Lcom/coinbase/android/signin/StateDisclosureActivity;->chosenState:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/coinbase/android/signin/StateDisclosureActivity;->chosenState:Ljava/util/HashMap;

    const-string v1, "abbreviation"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "WY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/coinbase/android/signin/LoginActivity;->cancel()V

    .line 651
    :goto_0
    return-void

    .line 650
    :cond_1
    new-instance v0, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;

    invoke-direct {v0, p0, p0}, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;-><init>(Lcom/coinbase/android/signin/LoginActivity;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->execute()V

    goto :goto_0
.end method
