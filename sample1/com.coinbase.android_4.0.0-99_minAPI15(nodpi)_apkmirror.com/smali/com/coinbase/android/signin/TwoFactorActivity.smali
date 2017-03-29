.class public Lcom/coinbase/android/signin/TwoFactorActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "TwoFactorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;
    }
.end annotation


# static fields
.field public static PASSWORD:Ljava/lang/String;

.field public static TWO_FACTOR_TOKEN:Ljava/lang/String;

.field public static TYPE:Ljava/lang/String;

.field public static USERNAME:Ljava/lang/String;


# instance fields
.field m2faField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00ea
    .end annotation
.end field

.field m2faTypeTextView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00ec
    .end annotation
.end field

.field mBackButton:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00e9
    .end annotation
.end field

.field protected mPassword:Ljava/lang/String;

.field protected mType:Ljava/lang/String;

.field protected mUsername:Ljava/lang/String;

.field mVerifyButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00eb
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "username"

    sput-object v0, Lcom/coinbase/android/signin/TwoFactorActivity;->USERNAME:Ljava/lang/String;

    .line 80
    const-string v0, "password"

    sput-object v0, Lcom/coinbase/android/signin/TwoFactorActivity;->PASSWORD:Ljava/lang/String;

    .line 81
    const-string v0, "type"

    sput-object v0, Lcom/coinbase/android/signin/TwoFactorActivity;->TYPE:Ljava/lang/String;

    .line 82
    const-string v0, "2fa_token"

    sput-object v0, Lcom/coinbase/android/signin/TwoFactorActivity;->TWO_FACTOR_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method

.method private hideKeyboard()V
    .locals 4

    .prologue
    .line 199
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/coinbase/android/signin/TwoFactorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 201
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/coinbase/android/signin/TwoFactorActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/coinbase/android/signin/TwoFactorActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 203
    .local v1, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 205
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faField:Landroid/widget/EditText;

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 209
    new-instance v0, Lcom/coinbase/android/signin/TwoFactorActivity$6;

    invoke-direct {v0, p0}, Lcom/coinbase/android/signin/TwoFactorActivity$6;-><init>(Lcom/coinbase/android/signin/TwoFactorActivity;)V

    .line 219
    .local v0, "f":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/coinbase/android/signin/TwoFactorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 100
    invoke-virtual {p0, v7}, Lcom/coinbase/android/signin/TwoFactorActivity;->supportRequestWindowFeature(I)Z

    .line 101
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/TwoFactorActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/coinbase/android/signin/TwoFactorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 105
    .local v6, "intent":Landroid/content/Intent;
    sget-object v0, Lcom/coinbase/android/signin/TwoFactorActivity;->USERNAME:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->mUsername:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/coinbase/android/signin/TwoFactorActivity;->PASSWORD:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->mPassword:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/coinbase/android/signin/TwoFactorActivity;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->mType:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faField:Landroid/widget/EditText;

    new-instance v1, Lcom/coinbase/android/signin/TwoFactorActivity$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/TwoFactorActivity$1;-><init>(Lcom/coinbase/android/signin/TwoFactorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 118
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->mVerifyButton:Landroid/widget/Button;

    new-instance v1, Lcom/coinbase/android/signin/TwoFactorActivity$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/TwoFactorActivity$2;-><init>(Lcom/coinbase/android/signin/TwoFactorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->mBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/coinbase/android/signin/TwoFactorActivity$3;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/TwoFactorActivity$3;-><init>(Lcom/coinbase/android/signin/TwoFactorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    new-instance v0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;

    iget-object v3, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->mPassword:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;-><init>(Lcom/coinbase/android/signin/TwoFactorActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->execute()V

    .line 135
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->mType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faTypeTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->mType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    move v5, v0

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 162
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faTypeTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :sswitch_0
    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v2, "authy_application"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v5, v7

    goto :goto_1

    :sswitch_2
    const-string v2, "google_authenticator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faTypeTextView:Landroid/widget/TextView;

    const v1, 0x7f07016e

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/TwoFactorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faTypeTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/coinbase/android/signin/TwoFactorActivity$4;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/TwoFactorActivity$4;-><init>(Lcom/coinbase/android/signin/TwoFactorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faTypeTextView:Landroid/widget/TextView;

    const v1, 0x7f07015c

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/TwoFactorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faTypeTextView:Landroid/widget/TextView;

    const v1, 0x7f07015d

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/TwoFactorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 138
    :sswitch_data_0
    .sparse-switch
        -0x16d1f213 -> :sswitch_2
        0x1bd59 -> :sswitch_0
        0x150c09e2 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onPause()V

    .line 180
    invoke-direct {p0}, Lcom/coinbase/android/signin/TwoFactorActivity;->hideKeyboard()V

    .line 181
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 185
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onResume()V

    .line 187
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 189
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faField:Landroid/widget/EditText;

    new-instance v1, Lcom/coinbase/android/signin/TwoFactorActivity$5;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/TwoFactorActivity$5;-><init>(Lcom/coinbase/android/signin/TwoFactorActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    return-void
.end method

.method protected submit()V
    .locals 4

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, "result":Landroid/content/Intent;
    sget-object v1, Lcom/coinbase/android/signin/TwoFactorActivity;->TWO_FACTOR_TOKEN:Ljava/lang/String;

    iget-object v2, p0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/coinbase/android/signin/TwoFactorActivity;->setResult(ILandroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/coinbase/android/signin/TwoFactorActivity;->finish()V

    .line 174
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Two Step confirm click"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 175
    return-void
.end method
