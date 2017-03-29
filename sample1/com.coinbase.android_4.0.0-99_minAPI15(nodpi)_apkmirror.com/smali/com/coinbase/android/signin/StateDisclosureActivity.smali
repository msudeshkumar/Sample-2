.class public Lcom/coinbase/android/signin/StateDisclosureActivity;
.super Lroboguice/activity/RoboActionBarActivity;
.source "StateDisclosureActivity.java"


# static fields
.field public static final LOGIN:Ljava/lang/String; = "StateDisclosureActivity_Login"

.field private static final NEW_YORK:Ljava/lang/String; = "New York"

.field private static final NY:Ljava/lang/String; = "NY"

.field public static final SIGNUP:Ljava/lang/String; = "StateDisclosureActivity_SignUp"

.field public static final STATE_UNSUPPORTED:Ljava/lang/String; = "STATE_UNSUPPORTED"

.field public static final TITLE:Ljava/lang/String; = "StateDisclosureActivity_Title"

.field public static final TYPE:Ljava/lang/String; = "StateDisclosureActivity_Type"

.field private static final WYOMING:Ljava/lang/String; = "Wyoming"


# instance fields
.field address1TextField:Landroid/widget/EditText;

.field address2TextField:Landroid/widget/EditText;

.field backImageView:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d011e
    .end annotation
.end field

.field bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field public chosenState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field cityTextField:Landroid/widget/EditText;

.field loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field newYorkContinueButton:Landroid/widget/Button;

.field newYorkView:Landroid/view/View;

.field progressDialog:Landroid/app/ProgressDialog;

.field stateSelectorContainer:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0120
    .end annotation
.end field

.field stateSelectorContinueButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c1
    .end annotation
.end field

.field stateSelectorLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d023a
    .end annotation
.end field

.field stateTextField:Landroid/widget/EditText;

.field stateTextView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d023b
    .end annotation
.end field

.field titleTextView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d011f
    .end annotation
.end field

.field wyomingGoBackButton:Landroid/widget/Button;

.field wyomingLockedGoBackButton:Landroid/widget/Button;

.field wyomingLockedSupportButton:Landroid/widget/Button;

.field wyomingLockedTextView:Landroid/widget/TextView;

.field wyomingLockedView:Landroid/view/View;

.field wyomingTextView:Landroid/widget/TextView;

.field wyomingView:Landroid/view/View;

.field zipTextField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lroboguice/activity/RoboActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/signin/StateDisclosureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->cancel()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/signin/StateDisclosureActivity;Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/coinbase/android/signin/StateDisclosureActivity;->isSignUp(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/coinbase/android/signin/StateDisclosureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->showWyoming()V

    return-void
.end method

.method static synthetic access$300(Lcom/coinbase/android/signin/StateDisclosureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->showWyomingLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/coinbase/android/signin/StateDisclosureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->showNewYork()V

    return-void
.end method

.method static synthetic access$500(Lcom/coinbase/android/signin/StateDisclosureActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/coinbase/android/signin/StateDisclosureActivity;->proceed(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coinbase/android/signin/StateDisclosureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->showStateSelector()V

    return-void
.end method

.method static synthetic access$700(Lcom/coinbase/android/signin/StateDisclosureActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->isValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/coinbase/android/signin/StateDisclosureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->createFullAddress()V

    return-void
.end method

.method private cancel()V
    .locals 3

    .prologue
    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0702be

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 249
    const v1, 0x7f07019f

    new-instance v2, Lcom/coinbase/android/signin/StateDisclosureActivity$8;

    invoke-direct {v2, p0}, Lcom/coinbase/android/signin/StateDisclosureActivity$8;-><init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    const v1, 0x7f0700b4

    new-instance v2, Lcom/coinbase/android/signin/StateDisclosureActivity$9;

    invoke-direct {v2, p0}, Lcom/coinbase/android/signin/StateDisclosureActivity$9;-><init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 265
    return-void
.end method

.method private createFullAddress()V
    .locals 7

    .prologue
    .line 312
    const/4 v0, 0x0

    const v1, 0x7f0701d3

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 313
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->address1TextField:Landroid/widget/EditText;

    .line 314
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->address2TextField:Landroid/widget/EditText;

    .line 315
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->cityTextField:Landroid/widget/EditText;

    .line 316
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NY"

    iget-object v5, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->zipTextField:Landroid/widget/EditText;

    .line 318
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/coinbase/android/signin/StateDisclosureActivity$11;

    invoke-direct {v6, p0}, Lcom/coinbase/android/signin/StateDisclosureActivity$11;-><init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    .line 313
    invoke-virtual/range {v0 .. v6}, Lcom/coinbase/api/internal/CoinbaseInternal;->createAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 338
    return-void
.end method

.method private hideAllForms()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 375
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->stateSelectorContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->newYorkView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->newYorkView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :cond_2
    return-void
.end method

.method private isSignUp(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 239
    const-string v0, "StateDisclosureActivity_SignUp"

    .line 240
    .local v0, "type":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 241
    const-string v1, "StateDisclosureActivity_Type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_0
    const-string v1, "StateDisclosureActivity_SignUp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isValid()Z
    .locals 2

    .prologue
    .line 302
    const-string v0, ""

    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->address1TextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->cityTextField:Landroid/widget/EditText;

    .line 303
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->stateTextField:Landroid/widget/EditText;

    .line 304
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->zipTextField:Landroid/widget/EditText;

    .line 305
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadNewYorkView()V
    .locals 3

    .prologue
    .line 202
    const v1, 0x7f0d0124

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/StateDisclosureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 203
    .local v0, "stub":Landroid/view/ViewStub;
    const v1, 0x7f030078

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 204
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->newYorkView:Landroid/view/View;

    .line 206
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->newYorkView:Landroid/view/View;

    const v2, 0x7f0d00b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->address1TextField:Landroid/widget/EditText;

    .line 207
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->newYorkView:Landroid/view/View;

    const v2, 0x7f0d00b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->address2TextField:Landroid/widget/EditText;

    .line 208
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->newYorkView:Landroid/view/View;

    const v2, 0x7f0d00b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->cityTextField:Landroid/widget/EditText;

    .line 209
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->newYorkView:Landroid/view/View;

    const v2, 0x7f0d00ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->stateTextField:Landroid/widget/EditText;

    .line 210
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->newYorkView:Landroid/view/View;

    const v2, 0x7f0d00bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->zipTextField:Landroid/widget/EditText;

    .line 211
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->newYorkView:Landroid/view/View;

    const v2, 0x7f0d01da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->newYorkContinueButton:Landroid/widget/Button;

    .line 213
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->newYorkContinueButton:Landroid/widget/Button;

    new-instance v2, Lcom/coinbase/android/signin/StateDisclosureActivity$7;

    invoke-direct {v2, p0}, Lcom/coinbase/android/signin/StateDisclosureActivity$7;-><init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    return-void
.end method

.method private loadWyomingLockedView()V
    .locals 3

    .prologue
    .line 174
    const v1, 0x7f0d0122

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/StateDisclosureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 175
    .local v0, "stub":Landroid/view/ViewStub;
    const v1, 0x7f030098

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 176
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedView:Landroid/view/View;

    .line 177
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedView:Landroid/view/View;

    const v2, 0x7f0d02b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedGoBackButton:Landroid/widget/Button;

    .line 178
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedView:Landroid/view/View;

    const v2, 0x7f0d02b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedSupportButton:Landroid/widget/Button;

    .line 179
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedView:Landroid/view/View;

    const v2, 0x7f0d02b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedTextView:Landroid/widget/TextView;

    .line 181
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedGoBackButton:Landroid/widget/Button;

    new-instance v2, Lcom/coinbase/android/signin/StateDisclosureActivity$5;

    invoke-direct {v2, p0}, Lcom/coinbase/android/signin/StateDisclosureActivity$5;-><init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedSupportButton:Landroid/widget/Button;

    new-instance v2, Lcom/coinbase/android/signin/StateDisclosureActivity$6;

    invoke-direct {v2, p0}, Lcom/coinbase/android/signin/StateDisclosureActivity$6;-><init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 199
    return-void
.end method

.method private loadWyomingView()V
    .locals 3

    .prologue
    .line 158
    const v1, 0x7f0d0121

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/StateDisclosureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 159
    .local v0, "stub":Landroid/view/ViewStub;
    const v1, 0x7f030097

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 160
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingView:Landroid/view/View;

    .line 161
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingView:Landroid/view/View;

    const v2, 0x7f0d02b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingGoBackButton:Landroid/widget/Button;

    .line 162
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingView:Landroid/view/View;

    const v2, 0x7f0d02b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingTextView:Landroid/widget/TextView;

    .line 164
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingGoBackButton:Landroid/widget/Button;

    new-instance v2, Lcom/coinbase/android/signin/StateDisclosureActivity$4;

    invoke-direct {v2, p0}, Lcom/coinbase/android/signin/StateDisclosureActivity$4;-><init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 171
    return-void
.end method

.method private proceed(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "completion"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->chosenState:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 271
    :cond_0
    const v0, 0x7f0701d3

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 272
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->chosenState:Ljava/util/HashMap;

    const-string v3, "abbreviation"

    .line 276
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/coinbase/android/signin/StateDisclosureActivity$10;

    invoke-direct {v6, p0, p1}, Lcom/coinbase/android/signin/StateDisclosureActivity$10;-><init>(Lcom/coinbase/android/signin/StateDisclosureActivity;Ljava/lang/Runnable;)V

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    .line 272
    invoke-virtual/range {v0 .. v6}, Lcom/coinbase/api/internal/CoinbaseInternal;->createAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    goto :goto_0
.end method

.method private showNewYork()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->loadNewYorkView()V

    .line 365
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->hideAllForms()V

    .line 367
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->newYorkView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->titleTextView:Landroid/widget/TextView;

    const v1, 0x7f070074

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->stateTextField:Landroid/widget/EditText;

    const-string v1, "NY"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->stateTextField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setClickable(Z)V

    .line 371
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->stateTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 372
    return-void
.end method

.method private showStateSelector()V
    .locals 2

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->hideAllForms()V

    .line 342
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->stateSelectorContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 345
    return-void
.end method

.method private showWyoming()V
    .locals 2

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->loadWyomingView()V

    .line 349
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->hideAllForms()V

    .line 351
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->titleTextView:Landroid/widget/TextView;

    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    return-void
.end method

.method private showWyomingLocked()V
    .locals 2

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->loadWyomingLockedView()V

    .line 357
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->hideAllForms()V

    .line 359
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->wyomingLockedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->titleTextView:Landroid/widget/TextView;

    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 397
    invoke-super {p0}, Lroboguice/activity/RoboActionBarActivity;->onBackPressed()V

    .line 399
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->cancel()V

    .line 400
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lroboguice/activity/RoboActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v2, 0x7f03002f

    invoke-virtual {p0, v2}, Lcom/coinbase/android/signin/StateDisclosureActivity;->setContentView(I)V

    .line 96
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->backImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/coinbase/android/signin/StateDisclosureActivity$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/signin/StateDisclosureActivity$1;-><init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->titleTextView:Landroid/widget/TextView;

    const v3, 0x7f0701ef

    invoke-virtual {p0, v3}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->stateSelectorLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/coinbase/android/signin/StateDisclosureActivity$2;

    invoke-direct {v3, p0}, Lcom/coinbase/android/signin/StateDisclosureActivity$2;-><init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->stateSelectorContinueButton:Landroid/widget/Button;

    new-instance v3, Lcom/coinbase/android/signin/StateDisclosureActivity$3;

    invoke-direct {v3, p0}, Lcom/coinbase/android/signin/StateDisclosureActivity$3;-><init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 143
    .local v1, "stateUnsupported":Z
    if-eqz v0, :cond_0

    .line 144
    const-string v2, "STATE_UNSUPPORTED"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 147
    :cond_0
    if-eqz v1, :cond_2

    .line 148
    invoke-direct {p0, v0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->isSignUp(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->showWyoming()V

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->showWyomingLocked()V

    goto :goto_0

    .line 153
    :cond_2
    invoke-direct {p0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->showStateSelector()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lroboguice/activity/RoboActionBarActivity;->onStart()V

    .line 228
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lroboguice/activity/RoboActionBarActivity;->onStop()V

    .line 235
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public stateChosen(Ljava/util/HashMap;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "state":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 390
    iput-object p1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->chosenState:Ljava/util/HashMap;

    .line 391
    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity;->stateTextView:Landroid/widget/TextView;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :cond_0
    return-void
.end method
