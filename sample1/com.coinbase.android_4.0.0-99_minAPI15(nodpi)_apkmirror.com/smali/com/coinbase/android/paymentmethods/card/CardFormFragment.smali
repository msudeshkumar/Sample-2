.class public Lcom/coinbase/android/paymentmethods/card/CardFormFragment;
.super Lroboguice/fragment/RoboFragment;
.source "CardFormFragment.java"

# interfaces
.implements Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$BuySellConfirmationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;
    }
.end annotation


# static fields
.field public static final ADD_BILLING_ADDRESS_REQUEST_CODE:I = 0x67

.field public static final BILLING_LIST_REQUEST_CODE:I = 0x66

.field public static final CDV_REQUEST_CODE:I = 0x68

.field public static final SCAN_REQUEST_CODE:I = 0x65


# instance fields
.field billingId:Ljava/lang/String;

.field billingTextField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0197
    .end annotation
.end field

.field billingTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0196
    .end annotation
.end field

.field buyBTCButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0128
    .end annotation
.end field

.field buyBTCLayout:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0198
    .end annotation
.end field

.field buyCustomSubmit:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0129
    .end annotation
.end field

.field cameraImageView:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0190
    .end annotation
.end field

.field cardNumberTextField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d018f
    .end annotation
.end field

.field coinImageView:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0126
    .end annotation
.end field

.field continueButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c1
    .end annotation
.end field

.field cvvTextField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0195
    .end annotation
.end field

.field private expireTextWatcher:Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;

.field expiryTextField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0193
    .end annotation
.end field

.field formLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d018a
    .end annotation
.end field

.field formatter:Ljava/text/SimpleDateFormat;

.field fullNameTextField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d018c
    .end annotation
.end field

.field private lastInput:Ljava/lang/String;

.field llBottomFields:Landroid/widget/LinearLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0191
    .end annotation
.end field

.field loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field noThanksTextView:Landroid/widget/TextView;

.field paymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

.field progressDialog:Landroid/app/ProgressDialog;

.field requiresBillingAddress:Z

.field requiresCDV:Z

.field zipTextField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00bc
    .end annotation
.end field

.field zipTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00bb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->lastInput:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/yy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->formatter:Ljava/text/SimpleDateFormat;

    .line 121
    iput-boolean v3, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->requiresCDV:Z

    .line 122
    iput-boolean v3, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->requiresBillingAddress:Z

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->submitForm()V

    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->paymentCardSetup()V

    return-void
.end method

.method static synthetic access$300(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;Landroid/text/Editable;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;
    .param p1, "x1"    # Landroid/text/Editable;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->formatExpireDateString(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;Lcom/coinbase/api/internal/models/paymentMethods/Data;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;
    .param p1, "x1"    # Lcom/coinbase/api/internal/models/paymentMethods/Data;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->processPaymentCard(Lcom/coinbase/api/internal/models/paymentMethods/Data;)V

    return-void
.end method

.method static synthetic access$500(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;Lcom/coinbase/api/internal/models/paymentMethods/Data;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;
    .param p1, "x1"    # Lcom/coinbase/api/internal/models/paymentMethods/Data;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->completeSession(Lcom/coinbase/api/internal/models/paymentMethods/Data;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getPaymentMethod(Ljava/lang/String;)V

    return-void
.end method

.method private closeForm()V
    .locals 2

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 628
    .local v0, "fa":Landroid/support/v4/app/FragmentActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 631
    :cond_0
    return-void
.end method

.method private completeSession(Lcom/coinbase/api/internal/models/paymentMethods/Data;)V
    .locals 7
    .param p1, "cardSetup"    # Lcom/coinbase/api/internal/models/paymentMethods/Data;

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getExpireMonth()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "month":Ljava/lang/String;
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getExpireYear()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "year":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 496
    :cond_0
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 532
    :goto_0
    return-void

    .line 500
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 501
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "type"

    const-string v4, "debit_card"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v3, "one_time_token"

    invoke-virtual {p1}, Lcom/coinbase/api/internal/models/paymentMethods/Data;->getOneTimeToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v3, "expiration_month"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v3, "expiration_year"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->billingId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->billingId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 506
    :cond_2
    const-string v3, "postal_code"

    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->zipTextField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :goto_1
    const-string v3, "user_provided_bin"

    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->cardNumberTextField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$10;

    invoke-direct {v4, p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$10;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    invoke-virtual {v3, v1, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->verifyPaymentCard(Ljava/util/HashMap;Lretrofit/Callback;)V

    goto :goto_0

    .line 508
    :cond_3
    const-string v3, "billing_address"

    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->billingId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private formatExpireDateString(Landroid/text/Editable;)V
    .locals 14
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v13, 0xc

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 290
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expireTextWatcher:Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "input":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 295
    .local v2, "expiryDateDate":Ljava/util/Calendar;
    :try_start_0
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->formatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expireTextWatcher:Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 336
    :goto_1
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/text/ParseException;
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, "textFieldString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 300
    .local v5, "month":I
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 307
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    if-ne v8, v12, :cond_1

    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->lastInput:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 308
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 309
    if-gt v5, v13, :cond_0

    .line 310
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "text":Ljava/lang/String;
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 332
    .end local v6    # "text":Ljava/lang/String;
    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->lastInput:Ljava/lang/String;

    goto :goto_0

    .line 301
    :catch_1
    move-exception v1

    .line 302
    .local v1, "exception":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 303
    .local v4, "length":I
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expireTextWatcher:Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 314
    .end local v1    # "exception":Ljava/lang/NumberFormatException;
    .end local v4    # "length":I
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    if-ne v8, v12, :cond_3

    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->lastInput:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 315
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 316
    if-gt v5, v13, :cond_2

    .line 317
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    .line 320
    :cond_2
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    invoke-virtual {v8, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 322
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "Enter a valid month"

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 324
    :cond_3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 325
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 326
    if-le v5, v10, :cond_0

    .line 327
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 328
    .restart local v6    # "text":Ljava/lang/String;
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_2
.end method

.method private getExpireMonth()Ljava/lang/String;
    .locals 3

    .prologue
    .line 351
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "month":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 353
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 354
    const/4 v2, 0x0

    .line 358
    :goto_0
    return-object v2

    .line 356
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 358
    goto :goto_0
.end method

.method private getExpireYear()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 362
    iget-object v7, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, "year":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 364
    .local v3, "index":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_0

    .line 378
    :goto_0
    return-object v6

    .line 368
    :cond_0
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 369
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 371
    .local v4, "twoDigitformat":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 372
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 373
    .local v2, "fourDigitFormat":Ljava/text/DateFormat;
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 375
    .local v6, "yearString":Ljava/lang/String;
    goto :goto_0

    .line 376
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "fourDigitFormat":Ljava/text/DateFormat;
    .end local v6    # "yearString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f070083

    invoke-virtual {p0, v8}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPaymentMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$11;

    invoke-direct {v1, p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$11;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->getPaymentMethod(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 562
    return-void
.end method

.method private isValid()Z
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->cardNumberTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->isValidNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->fullNameTextField:Landroid/widget/EditText;

    .line 340
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    .line 341
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->cvvTextField:Landroid/widget/EditText;

    .line 342
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->zipTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 343
    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->zipTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->zipTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->billingTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    .line 344
    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->billingTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    :cond_1
    const/4 v0, 0x0

    .line 347
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private paymentCardSetup()V
    .locals 3

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f070073

    invoke-virtual {p0, v2}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 385
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$8;

    invoke-direct {v1, p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$8;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->paymentCardSetup(Lretrofit/Callback;)V

    .line 403
    return-void
.end method

.method private processPaymentCard(Lcom/coinbase/api/internal/models/paymentMethods/Data;)V
    .locals 13
    .param p1, "cardSetup"    # Lcom/coinbase/api/internal/models/paymentMethods/Data;

    .prologue
    const v12, 0x7f070083

    const/4 v8, 0x0

    .line 406
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 407
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/coinbase/api/internal/models/paymentMethods/Data;->getMapping()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/paymentMethods/Mapping;

    .line 408
    .local v1, "mapping":Lcom/coinbase/api/internal/models/paymentMethods/Mapping;
    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/paymentMethods/Mapping;->getName()Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/paymentMethods/Mapping;->getId()Ljava/lang/String;

    move-result-object v10

    const/4 v7, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 412
    :pswitch_0
    const-string v0, "Add"

    .line 413
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/paymentMethods/Mapping;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 414
    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/paymentMethods/Mapping;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 415
    :cond_1
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 410
    .end local v0    # "action":Ljava/lang/String;
    :sswitch_0
    const-string v11, "action"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v7, v8

    goto :goto_1

    :sswitch_1
    const-string v11, "one_time_token"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_2
    const-string v11, "card_number"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x2

    goto :goto_1

    :sswitch_3
    const-string v11, "customer_name"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x3

    goto :goto_1

    :sswitch_4
    const-string v11, "expiration_month"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x4

    goto :goto_1

    :sswitch_5
    const-string v11, "expiration_year"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x5

    goto :goto_1

    :sswitch_6
    const-string v11, "card_verification_number"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x6

    goto :goto_1

    .line 420
    :pswitch_1
    invoke-virtual {p1}, Lcom/coinbase/api/internal/models/paymentMethods/Data;->getOneTimeToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 425
    :pswitch_2
    iget-object v7, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->cardNumberTextField:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 430
    :pswitch_3
    iget-object v7, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->fullNameTextField:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 435
    :pswitch_4
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getExpireMonth()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "month":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 437
    iget-object v7, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 438
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p0, v12}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 489
    .end local v1    # "mapping":Lcom/coinbase/api/internal/models/paymentMethods/Mapping;
    .end local v2    # "month":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :goto_2
    return-void

    .line 441
    .restart local v1    # "mapping":Lcom/coinbase/api/internal/models/paymentMethods/Mapping;
    .restart local v2    # "month":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 447
    .end local v2    # "month":Ljava/lang/String;
    :pswitch_5
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getExpireYear()Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, "year":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 449
    iget-object v7, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 450
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {p0, v12}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 453
    :cond_3
    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 459
    .end local v6    # "year":Ljava/lang/String;
    :pswitch_6
    iget-object v7, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->cvvTextField:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 466
    .end local v1    # "mapping":Lcom/coinbase/api/internal/models/paymentMethods/Mapping;
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/coinbase/api/internal/models/paymentMethods/Data;->getProcessUrl()Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, "processUrl":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x2f

    if-ne v7, v9, :cond_5

    .line 468
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 471
    :cond_5
    iget-object v7, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v7}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v7

    new-instance v8, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;

    invoke-direct {v8, p0, p1}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;Lcom/coinbase/api/internal/models/paymentMethods/Data;)V

    invoke-virtual {v7, v5, v4, v8}, Lcom/coinbase/api/internal/CoinbaseInternal;->processPaymentCard(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)V

    goto :goto_2

    .line 410
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fc811b4 -> :sswitch_3
        -0x76d72f10 -> :sswitch_4
        -0x54d081ca -> :sswitch_0
        -0x495921c2 -> :sswitch_6
        -0x6d2d280 -> :sswitch_1
        0x227ccb58 -> :sswitch_2
        0x2dbc4bcd -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private submitForm()V
    .locals 3

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0701cd

    invoke-virtual {p0, v2}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/coinbase/android/utils/Utils;->hideKeyboard(Landroid/app/Activity;)V

    .line 257
    iget-boolean v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->requiresCDV:Z

    if-eqz v1, :cond_1

    .line 258
    new-instance v0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$7;

    invoke-direct {v0, p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$7;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    .line 265
    .local v0, "f":Lcom/coinbase/android/paymentmethods/card/CardCDVDialogFragment;
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "Confirm"

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/paymentmethods/card/CardCDVDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0    # "f":Lcom/coinbase/android/paymentmethods/card/CardCDVDialogFragment;
    :cond_1
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->paymentCardSetup()V

    goto :goto_0
.end method


# virtual methods
.method public buyIfPhoneIsVerified()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$12;

    invoke-direct {v1, p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$12;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->getPhoneNumbers(Lretrofit/Callback;)V

    .line 586
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 595
    invoke-super {p0, p1, p2, p3}, Lroboguice/fragment/RoboFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 597
    packed-switch p1, :pswitch_data_0

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 599
    :pswitch_0
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->closeForm()V

    goto :goto_0

    .line 604
    :pswitch_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 605
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 606
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 607
    const-string v1, "BILLING_ID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BILLING_STRING"

    const-string v3, ""

    .line 608
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-virtual {p0, v1, v2}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->setBillingAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBuySellComplete(Lcom/coinbase/android/event/BuySellMadeEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/BuySellMadeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->closeForm()V

    .line 645
    return-void
.end method

.method public onBuySellConfirmed(Lcom/coinbase/v2/models/transfers/Transfer;)V
    .locals 6
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 635
    new-instance v0, Lcom/coinbase/android/transfers/BuyBitcoinTask;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 636
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->loginManager:Lcom/coinbase/api/LoginManager;

    .line 637
    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getPrimaryAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->paymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    const-string v5, "USD"

    invoke-direct/range {v0 .. v5}, Lcom/coinbase/android/transfers/BuyBitcoinTask;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/paymentMethods/Data;Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0, p1}, Lcom/coinbase/android/transfers/BuyBitcoinTask;->commitBuy(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 640
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 137
    const-string v1, "cdv"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->requiresCDV:Z

    .line 138
    const-string v1, "billing_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->requiresBillingAddress:Z

    .line 140
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    const v0, 0x7f030061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 155
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 176
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->zipTextField:Landroid/widget/EditText;

    new-instance v3, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$1;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 187
    new-instance v2, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;

    invoke-direct {v2, p0, v6}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;Lcom/coinbase/android/paymentmethods/card/CardFormFragment$1;)V

    iput-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expireTextWatcher:Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;

    .line 188
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expiryTextField:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->expireTextWatcher:Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->coinImageView:Landroid/widget/ImageView;

    const v3, 0x7f0200df

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->buyBTCButton:Landroid/widget/Button;

    new-instance v3, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$2;

    invoke-direct {v3, p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$2;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->buyCustomSubmit:Landroid/widget/Button;

    new-instance v3, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$3;

    invoke-direct {v3, p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$3;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->buyBTCLayout:Landroid/view/View;

    const v3, 0x7f0d012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->noThanksTextView:Landroid/widget/TextView;

    .line 214
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->noThanksTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$4;

    invoke-direct {v3, p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$4;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->continueButton:Landroid/widget/Button;

    new-instance v3, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$5;

    invoke-direct {v3, p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$5;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->billingTextField:Landroid/widget/EditText;

    new-instance v3, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$6;

    invoke-direct {v3, p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$6;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-boolean v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->requiresBillingAddress:Z

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->llBottomFields:Landroid/widget/LinearLayout;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 239
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->zipTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v5}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 240
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->billingTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v4}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 247
    :goto_0
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 248
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "account_full_name"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "userName":Ljava/lang/String;
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->fullNameTextField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    return-void

    .line 242
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "userName":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->llBottomFields:Landroid/widget/LinearLayout;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 243
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->zipTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v4}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 244
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->billingTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2, v5}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setBillingAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "billingId"    # Ljava/lang/String;
    .param p2, "billingString"    # Ljava/lang/String;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->billingTextField:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->billingId:Ljava/lang/String;

    .line 591
    return-void
.end method
