.class public Lcom/coinbase/android/signin/AcceptTermsActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "AcceptTermsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/signin/AcceptTermsActivity$URLSpanNoUnderline;
    }
.end annotation


# instance fields
.field mBackButton:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00a1
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

.field mTncAgree:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00a9
    .end annotation
.end field

.field mTncCancel:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00a8
    .end annotation
.end field

.field mTncDescription:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00a5
    .end annotation
.end field

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/signin/AcceptTermsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/AcceptTermsActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/coinbase/android/signin/AcceptTermsActivity;->cancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/signin/AcceptTermsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/AcceptTermsActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/coinbase/android/signin/AcceptTermsActivity;->agreeToTerms()V

    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/signin/AcceptTermsActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/AcceptTermsActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/coinbase/android/signin/AcceptTermsActivity;->stripUnderlines(Landroid/widget/TextView;)V

    return-void
.end method

.method private agreeToTerms()V
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    const v1, 0x7f0701d3

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/AcceptTermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 121
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/signin/AcceptTermsActivity$5;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/AcceptTermsActivity$5;-><init>(Lcom/coinbase/android/signin/AcceptTermsActivity;)V

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->acceptUserAgreement(Lretrofit/Callback;)Lretrofit/Call;

    .line 167
    return-void
.end method

.method private cancel()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0702bf

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/AcceptTermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 172
    const v1, 0x7f07019f

    new-instance v2, Lcom/coinbase/android/signin/AcceptTermsActivity$6;

    invoke-direct {v2, p0}, Lcom/coinbase/android/signin/AcceptTermsActivity$6;-><init>(Lcom/coinbase/android/signin/AcceptTermsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    const v1, 0x7f0700b4

    new-instance v2, Lcom/coinbase/android/signin/AcceptTermsActivity$7;

    invoke-direct {v2, p0}, Lcom/coinbase/android/signin/AcceptTermsActivity$7;-><init>(Lcom/coinbase/android/signin/AcceptTermsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 195
    return-void
.end method

.method private setTNCDescription()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity;->mTncDescription:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 92
    const/4 v0, 0x0

    const v1, 0x7f0701d3

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/AcceptTermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 94
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/signin/AcceptTermsActivity$4;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/AcceptTermsActivity$4;-><init>(Lcom/coinbase/android/signin/AcceptTermsActivity;)V

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->getUserAgreement(Lretrofit/Callback;)Lretrofit/Call;

    .line 116
    return-void
.end method

.method private stripUnderlines(Landroid/widget/TextView;)V
    .locals 10
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v7, 0x0

    .line 198
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 199
    .local v1, "s":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v8, Landroid/text/style/URLSpan;

    invoke-interface {v1, v7, v6, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/URLSpan;

    .line 200
    .local v4, "spans":[Landroid/text/style/URLSpan;
    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v2, v4, v6

    .line 201
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {v1, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 202
    .local v5, "start":I
    invoke-interface {v1, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 203
    .local v0, "end":I
    invoke-interface {v1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 204
    new-instance v3, Lcom/coinbase/android/signin/AcceptTermsActivity$URLSpanNoUnderline;

    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, p0, v9}, Lcom/coinbase/android/signin/AcceptTermsActivity$URLSpanNoUnderline;-><init>(Lcom/coinbase/android/signin/AcceptTermsActivity;Ljava/lang/String;)V

    .line 205
    .end local v2    # "span":Landroid/text/style/URLSpan;
    .local v3, "span":Landroid/text/style/URLSpan;
    invoke-interface {v1, v3, v5, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 200
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "end":I
    .end local v3    # "span":Landroid/text/style/URLSpan;
    .end local v5    # "start":I
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/AcceptTermsActivity;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lcom/coinbase/android/signin/AcceptTermsActivity;->setTNCDescription()V

    .line 67
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity;->mTncCancel:Landroid/view/View;

    new-instance v1, Lcom/coinbase/android/signin/AcceptTermsActivity$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/AcceptTermsActivity$1;-><init>(Lcom/coinbase/android/signin/AcceptTermsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity;->mTncAgree:Landroid/view/View;

    new-instance v1, Lcom/coinbase/android/signin/AcceptTermsActivity$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/AcceptTermsActivity$2;-><init>(Lcom/coinbase/android/signin/AcceptTermsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity;->mBackButton:Landroid/view/View;

    new-instance v1, Lcom/coinbase/android/signin/AcceptTermsActivity$3;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/AcceptTermsActivity$3;-><init>(Lcom/coinbase/android/signin/AcceptTermsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onDestroy()V

    .line 224
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 226
    :cond_0
    return-void
.end method
