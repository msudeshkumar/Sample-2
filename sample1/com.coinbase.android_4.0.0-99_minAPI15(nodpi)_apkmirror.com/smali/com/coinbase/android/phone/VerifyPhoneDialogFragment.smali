.class public Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "VerifyPhoneDialogFragment.java"


# static fields
.field public static final COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final PHONE_ID:Ljava/lang/String; = "phone_id"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final TFA_TOKEN:Ljava/lang/String; = "tfa_token"


# instance fields
.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mCountryCode:Ljava/lang/String;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mPhoneId:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mTfaToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mPhoneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->createPhoneNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->verifyPhoneNumber(Ljava/lang/String;)V

    return-void
.end method

.method private createPhoneNumber(Ljava/lang/String;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0702f0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "number"

    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v2, "country"

    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070293

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 133
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$3;

    invoke-direct {v3, p0, v1}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$3;-><init>(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, p1, v0, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->createPhoneNumber(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;
    .locals 3
    .param p0, "phoneId"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "tfaToken"    # Ljava/lang/String;
    .param p3, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v1, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    invoke-direct {v1}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;-><init>()V

    .line 53
    .local v1, "f":Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "phone_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "phone_number"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "tfa_token"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "country_code"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v1
.end method

.method private verifyPhoneNumber(Ljava/lang/String;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0702f0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    .line 168
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070293

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 170
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "token"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mPhoneId:Ljava/lang/String;

    new-instance v4, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$4;

    invoke-direct {v4, p0, v1}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$4;-><init>(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->verifyPhoneNumber(Ljava/util/HashMap;Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lroboguice/fragment/RoboDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mPhoneId:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mPhoneNumber:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tfa_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mTfaToken:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "country_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mCountryCode:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03004f

    const/4 v5, 0x0

    .line 76
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    .local v0, "baseView":Landroid/view/ViewGroup;
    const v3, 0x7f0d0164

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 80
    .local v2, "codeInput":Landroid/widget/EditText;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700c7

    new-instance v5, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$2;

    invoke-direct {v5, p0, v2}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$2;-><init>(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;Landroid/widget/EditText;)V

    .line 82
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700b4

    new-instance v5, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$1;-><init>(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;)V

    .line 99
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 111
    invoke-super {p0}, Lroboguice/fragment/RoboDialogFragment;->onStart()V

    .line 113
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 114
    .local v1, "okButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 116
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 117
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 118
    return-void
.end method
