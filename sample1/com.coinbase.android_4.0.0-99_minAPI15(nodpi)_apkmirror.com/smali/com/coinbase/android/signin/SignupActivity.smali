.class public Lcom/coinbase/android/signin/SignupActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "SignupActivity.java"

# interfaces
.implements Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;
.implements Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/signin/SignupActivity$ConfirmLoginCancelDialogFragment;,
        Lcom/coinbase/android/signin/SignupActivity$SignupTask;
    }
.end annotation


# instance fields
.field bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mConfirmEmailContainer:Landroid/widget/LinearLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d011c
    .end annotation
.end field

.field mConfirmEmailText:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00e8
    .end annotation
.end field

.field mDeviceConfirmationText:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00e6
    .end annotation
.end field

.field mEmailInput:Landroid/widget/EditText;
    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/Email;
        message = "Please enter a valid email"
        order = 0x3
    .end annotation

    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/Required;
        message = "Email is a required field"
        order = 0x2
    .end annotation

    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0119
    .end annotation
.end field

.field mEmailVerifyTask:Lcom/coinbase/android/signin/EmailVerifyTask;

.field mIncorrectEmail:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0167
    .end annotation
.end field

.field mNameInput:Landroid/widget/EditText;
    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/Required;
        message = "Please enter your first and last name"
        order = 0x1
    .end annotation

    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0117
    .end annotation
.end field

.field mPasswordInput:Landroid/widget/EditText;
    .annotation runtime Lcom/mobsandgeeks/saripaar/annotation/Password;
        message = "Password is a required field"
        order = 0x4
    .end annotation

    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d011a
    .end annotation
.end field

.field mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00e5
    .end annotation
.end field

.field mSignupForm:Landroid/widget/LinearLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0116
    .end annotation
.end field

.field mSubmitButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d011b
    .end annotation
.end field

.field mValidator:Lcom/mobsandgeeks/saripaar/Validator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/signin/SignupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/SignupActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/coinbase/android/signin/SignupActivity;->onSignUp()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/signin/SignupActivity;)Lcom/coinbase/api/LoginManager;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/signin/SignupActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coinbase/android/signin/SignupActivity;)Lcom/coinbase/api/LoginManager;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/signin/SignupActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    return-object v0
.end method

.method private onSignUp()V
    .locals 4

    .prologue
    .line 269
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "signed_up_waiting_for_email_confirmation"

    const/4 v3, 0x1

    .line 271
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 272
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 274
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->showWaitingForEmailConfirmation()V

    .line 275
    new-instance v1, Lcom/coinbase/android/signin/EmailVerifyTask;

    invoke-direct {v1, p0, p0}, Lcom/coinbase/android/signin/EmailVerifyTask;-><init>(Landroid/app/Activity;Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;)V

    iput-object v1, p0, Lcom/coinbase/android/signin/SignupActivity;->mEmailVerifyTask:Lcom/coinbase/android/signin/EmailVerifyTask;

    .line 276
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity;->mEmailVerifyTask:Lcom/coinbase/android/signin/EmailVerifyTask;

    invoke-virtual {v1}, Lcom/coinbase/android/signin/EmailVerifyTask;->execute()V

    .line 277
    return-void
.end method

.method private populateUserEmail()V
    .locals 7

    .prologue
    .line 204
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 205
    .local v3, "emailPattern":Ljava/util/regex/Pattern;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 206
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v2, 0x0

    .line 207
    .local v2, "email":Ljava/lang/String;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 208
    .local v0, "account":Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 209
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 214
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    if-eqz v2, :cond_1

    .line 215
    iget-object v4, p0, Lcom/coinbase/android/signin/SignupActivity;->mEmailInput:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_1
    return-void

    .line 207
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private startSignup()V
    .locals 7

    .prologue
    .line 247
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "password":Ljava/lang/String;
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity;->mEmailInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "email":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "referrer_id"

    const/4 v2, 0x0

    .line 251
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "referrerId":Ljava/lang/String;
    new-instance v0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/coinbase/android/signin/SignupActivity$SignupTask;-><init>(Lcom/coinbase/android/signin/SignupActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->execute()V

    .line 254
    return-void
.end method


# virtual methods
.method public hideAllForms()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/SignupActivity;->showProgress(Z)V

    .line 355
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity;->mSignupForm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity;->mConfirmEmailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 357
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity;->mSignupForm:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 362
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onBackPressed()V

    .line 378
    :goto_0
    return-void

    .line 366
    :cond_0
    new-instance v0, Lcom/coinbase/android/signin/SignupActivity$4;

    invoke-direct {v0, p0}, Lcom/coinbase/android/signin/SignupActivity$4;-><init>(Lcom/coinbase/android/signin/SignupActivity;)V

    .line 377
    .local v0, "f":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    iget-object v2, p0, Lcom/coinbase/android/signin/SignupActivity;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v2, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 146
    const v2, 0x7f03002e

    invoke-virtual {p0, v2}, Lcom/coinbase/android/signin/SignupActivity;->setContentView(I)V

    .line 147
    new-instance v2, Lcom/mobsandgeeks/saripaar/Validator;

    invoke-direct {v2, p0}, Lcom/mobsandgeeks/saripaar/Validator;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/coinbase/android/signin/SignupActivity;->mValidator:Lcom/mobsandgeeks/saripaar/Validator;

    .line 148
    iget-object v2, p0, Lcom/coinbase/android/signin/SignupActivity;->mValidator:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-virtual {v2, p0}, Lcom/mobsandgeeks/saripaar/Validator;->setValidationListener(Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;)V

    .line 149
    iget-object v2, p0, Lcom/coinbase/android/signin/SignupActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v3, Lcom/coinbase/android/signin/SignupActivity$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/signin/SignupActivity$1;-><init>(Lcom/coinbase/android/signin/SignupActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v2, p0, Lcom/coinbase/android/signin/SignupActivity;->mPasswordInput:Landroid/widget/EditText;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 158
    iget-object v2, p0, Lcom/coinbase/android/signin/SignupActivity;->mPasswordInput:Landroid/widget/EditText;

    new-instance v3, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v3}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 160
    const v2, 0x7f0d0115

    invoke-virtual {p0, v2}, Lcom/coinbase/android/signin/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/signin/SignupActivity$2;

    invoke-direct {v3, p0}, Lcom/coinbase/android/signin/SignupActivity$2;-><init>(Lcom/coinbase/android/signin/SignupActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v2, p0, Lcom/coinbase/android/signin/SignupActivity;->mIncorrectEmail:Landroid/widget/TextView;

    new-instance v3, Lcom/coinbase/android/signin/SignupActivity$3;

    invoke-direct {v3, p0}, Lcom/coinbase/android/signin/SignupActivity$3;-><init>(Lcom/coinbase/android/signin/SignupActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 178
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "signed_up_waiting_for_email_confirmation"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/coinbase/android/signin/SignupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 180
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 181
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 189
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/coinbase/android/signin/SignupActivity;->populateUserEmail()V

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->showSignupForm()V

    .line 194
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onDestroy()V

    .line 200
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public onEmailUnverified()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public onEmailVerified(Lcom/coinbase/v1/entity/User;)V
    .locals 4
    .param p1, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 393
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "StateDisclosureActivity_Type"

    const-string v3, "StateDisclosureActivity_SignUp"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const/4 v1, 0x0

    .line 397
    .local v1, "shouldShowStateDisclosure":Z
    invoke-static {p1}, Lcom/coinbase/android/utils/Utils;->isStateVerificationRequired(Lcom/coinbase/v1/entity/User;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    const/4 v1, 0x1

    .line 401
    :cond_0
    invoke-static {p1}, Lcom/coinbase/android/utils/Utils;->isStateUnsupported(Lcom/coinbase/v1/entity/User;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    const-string v2, "STATE_UNSUPPORTED"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    const/4 v1, 0x1

    .line 406
    :cond_1
    if-eqz v1, :cond_2

    .line 407
    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->proceed()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x1

    .line 280
    instance-of v0, p1, Lcom/coinbase/v1/exception/CoinbaseException;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 289
    :goto_0
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->showSignupForm()V

    .line 290
    return-void

    .line 282
    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 283
    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    const v0, 0x7f070164

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 286
    :cond_1
    const-string v1, "LoginActivity"

    if-nez p1, :cond_2

    const-string v0, "Null error"

    :goto_1
    invoke-static {v1, v0}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const v0, 0x7f070163

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onPause()V

    .line 316
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 319
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity;->mEmailVerifyTask:Lcom/coinbase/android/signin/EmailVerifyTask;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity;->mEmailVerifyTask:Lcom/coinbase/android/signin/EmailVerifyTask;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/EmailVerifyTask;->cancel()V

    .line 321
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onResume()V

    .line 296
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 299
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "user_email_verified"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->finish()V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string v1, "signed_up_waiting_for_email_confirmation"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->showWaitingForEmailConfirmation()V

    .line 307
    new-instance v1, Lcom/coinbase/android/signin/EmailVerifyTask;

    invoke-direct {v1, p0, p0}, Lcom/coinbase/android/signin/EmailVerifyTask;-><init>(Landroid/app/Activity;Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;)V

    iput-object v1, p0, Lcom/coinbase/android/signin/SignupActivity;->mEmailVerifyTask:Lcom/coinbase/android/signin/EmailVerifyTask;

    .line 308
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity;->mEmailVerifyTask:Lcom/coinbase/android/signin/EmailVerifyTask;

    invoke-virtual {v1}, Lcom/coinbase/android/signin/EmailVerifyTask;->execute()V

    goto :goto_0
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
    .line 258
    .local p2, "failedRule":Lcom/mobsandgeeks/saripaar/Rule;, "Lcom/mobsandgeeks/saripaar/Rule<*>;"
    invoke-virtual {p2}, Lcom/mobsandgeeks/saripaar/Rule;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "message":Ljava/lang/String;
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 261
    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "failedView":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 265
    :goto_0
    return-void

    .line 263
    .restart local p1    # "failedView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onValidationSucceeded()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 221
    iget-object v5, p0, Lcom/coinbase/android/signin/SignupActivity;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/coinbase/android/signin/SignupActivity;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "password":Ljava/lang/String;
    iget-object v5, p0, Lcom/coinbase/android/signin/SignupActivity;->mEmailInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "email":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    const v5, 0x7f070207

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 244
    :goto_0
    return-void

    .line 229
    :cond_0
    sget-object v5, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_1

    .line 231
    const v5, 0x7f070206

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 234
    :cond_1
    const-string v4, "[a-z]*[0-9+][a-z]*"

    .line 235
    .local v4, "passwordRegex":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 236
    .local v3, "passwordPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_2

    .line 238
    const v5, 0x7f070208

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p0, v6}, Lcom/coinbase/android/signin/SignupActivity;->showProgress(Z)V

    .line 243
    invoke-direct {p0}, Lcom/coinbase/android/signin/SignupActivity;->startSignup()V

    goto :goto_0
.end method

.method public proceed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 419
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 421
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "user_email_verified"

    const/4 v5, 0x1

    .line 422
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "signed_up_waiting_for_email_confirmation"

    .line 423
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 424
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 426
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v3

    const-string v4, "Event - Email verified"

    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/coinbase/android/utils/KochavaTracking;->getInstance()Lcom/coinbase/android/utils/KochavaTracking;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coinbase/android/utils/KochavaTracking;->initializeKochava(Landroid/content/Context;)Lcom/kochava/android/tracker/Feature;

    move-result-object v1

    .line 428
    .local v1, "kFeature":Lcom/kochava/android/tracker/Feature;
    const-string v3, "Signup"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/kochava/android/tracker/Feature;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 433
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->finish()V

    .line 434
    return-void
.end method

.method public showProgress(Z)V
    .locals 2
    .param p1, "shouldShow"    # Z

    .prologue
    const/4 v0, 0x4

    .line 342
    if-eqz p1, :cond_0

    .line 343
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 344
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity;->mSignupForm:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity;->mConfirmEmailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 349
    .local v0, "visibility":I
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity;->mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 350
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity;->mDeviceConfirmationText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    return-void
.end method

.method public showSignupForm()V
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->hideAllForms()V

    .line 326
    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->showKeyboard(Landroid/app/Activity;)V

    .line 327
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity;->mSignupForm:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    return-void
.end method

.method public showWaitingForEmailConfirmation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->hideAllForms()V

    .line 333
    const v1, 0x7f070205

    .line 334
    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coinbase/android/signin/SignupActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 335
    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getActiveUserEmail()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 333
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "confirmationMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity;->mConfirmEmailText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity;->mConfirmEmailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    return-void
.end method

.method public stateDisclosureFinished(Lcom/coinbase/android/signin/StateDisclosureActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/coinbase/android/signin/StateDisclosureActivity;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 382
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

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->signout()Z

    .line 384
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->finish()V

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity;->proceed()V

    goto :goto_0
.end method
