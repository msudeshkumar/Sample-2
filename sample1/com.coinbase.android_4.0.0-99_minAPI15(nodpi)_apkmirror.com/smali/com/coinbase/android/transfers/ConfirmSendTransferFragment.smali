.class public Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;
.super Lcom/coinbase/android/transfers/ConfirmTransferFragment;
.source "ConfirmSendTransferFragment.java"


# static fields
.field public static final FEE:Ljava/lang/String; = "ConfirmSendTransferFragment_Fee"

.field public static final MESSAGE:Ljava/lang/String; = "MESSAGE"


# instance fields
.field private activity:Landroid/app/Activity;

.field protected confirmationMessageFormat:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f070267
    .end annotation
.end field

.field public dialog:Landroid/app/ProgressDialog;

.field protected feeConfirmationMessageFormat:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f070268
    .end annotation
.end field

.field protected fiatFeeConfirmationMessageFormat:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f070269
    .end annotation
.end field

.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mExchangeId:Ljava/lang/String;

.field protected mFee:Lorg/joda/money/Money;

.field protected mIdem:Ljava/lang/String;

.field protected mIsFiat:Z

.field protected mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->handleRequestError(Ljava/lang/String;)V

    return-void
.end method

.method private handleRequestError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Lorg/joda/money/Money;Lorg/joda/money/Money;Ljava/lang/String;ZLjava/lang/String;)Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;
    .locals 4
    .param p0, "recipientEmail"    # Ljava/lang/String;
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "amount"    # Lorg/joda/money/Money;
    .param p3, "fee"    # Lorg/joda/money/Money;
    .param p4, "notes"    # Ljava/lang/String;
    .param p5, "isFiat"    # Z
    .param p6, "exchangeId"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v1, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    invoke-direct {v1}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;-><init>()V

    .line 80
    .local v1, "dialog":Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ConfirmTransferFragment_Counteryparty"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "ConfirmTransferFragment_Amount"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 83
    const-string v2, "ConfirmSendTransferFragment_Fee"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 84
    const-string v2, "ConfirmTransferFragment_Notes"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "ConfirmTransferFragment_Account"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "ConfirmTransferFragment_Is_Fiat"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    const-string v2, "ConfirmTransferFragment_Exchange_Id"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "ConfirmTransferFragment_Idem_Token"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->setArguments(Landroid/os/Bundle;)V

    .line 93
    return-object v1
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    iget-object v1, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "bitcoinUnits":Ljava/lang/String;
    iget-object v1, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mFee:Lorg/joda/money/Money;

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->confirmationMessageFormat:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mAmount:Lorg/joda/money/Money;

    invoke-static {v3, v0}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mCounterparty:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->feeConfirmationMessageFormat:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mAmount:Lorg/joda/money/Money;

    .line 171
    invoke-static {v3, v0}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mCounterparty:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mFee:Lorg/joda/money/Money;

    .line 173
    invoke-static {v3, v0}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 169
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->onAttach(Landroid/app/Activity;)V

    .line 234
    iput-object p1, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->activity:Landroid/app/Activity;

    .line 235
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ConfirmSendTransferFragment_Fee"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/joda/money/Money;

    iput-object v0, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mFee:Lorg/joda/money/Money;

    .line 181
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ConfirmTransferFragment_Exchange_Id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mExchangeId:Ljava/lang/String;

    .line 183
    :cond_0
    invoke-super {p0, p1}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_0

    .line 100
    invoke-super {p0, p1}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v10

    .line 159
    :goto_0
    return-object v10

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "ConfirmTransferFragment_Is_Fiat"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mIsFiat:Z

    .line 104
    iget-boolean v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mIsFiat:Z

    if-nez v10, :cond_1

    .line 105
    invoke-super {p0, p1}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v10

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "ConfirmTransferFragment_Counteryparty"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mCounterparty:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "ConfirmTransferFragment_Notes"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mNotes:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "ConfirmTransferFragment_Amount"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lorg/joda/money/Money;

    iput-object v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mAmount:Lorg/joda/money/Money;

    .line 112
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "ConfirmTransferFragment_Account"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mAccount:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "ConfirmTransferFragment_Idem_Token"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mIdem:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030049

    const/4 v12, 0x0

    .line 116
    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, "baseView":Landroid/view/View;
    iget-object v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v10}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "bitcoinUnits":Ljava/lang/String;
    const v10, 0x7f0d0155

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 120
    .local v5, "message":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->fiatFeeConfirmationMessageFormat:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mCounterparty:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v10, 0x7f0d0156

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    .local v0, "amountVal":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mAmount:Lorg/joda/money/Money;

    invoke-static {v10, v2}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v10, 0x7f0d0157

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 127
    .local v4, "feeVal":Landroid/widget/TextView;
    const v10, 0x7f0d0158

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 128
    .local v9, "totalVal":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mAmount:Lorg/joda/money/Money;

    iget-object v11, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mAmount:Lorg/joda/money/Money;

    invoke-virtual {v11}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/joda/money/Money;->nonNull(Lorg/joda/money/Money;Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/Money;

    move-result-object v8

    .line 130
    .local v8, "total":Lorg/joda/money/Money;
    iget-object v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mFee:Lorg/joda/money/Money;

    if-eqz v10, :cond_2

    .line 131
    iget-object v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mFee:Lorg/joda/money/Money;

    invoke-static {v10, v2}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v10, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mFee:Lorg/joda/money/Money;

    invoke-virtual {v10}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/joda/money/Money;->plus(Ljava/math/BigDecimal;)Lorg/joda/money/Money;

    move-result-object v8

    .line 135
    :cond_2
    invoke-static {v8, v2}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const v10, 0x7f0d0154

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 138
    .local v6, "profile":Landroid/widget/ImageView;
    const/16 v7, 0x3c

    .line 139
    .local v7, "radius":I
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v10

    iget-object v11, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mCounterparty:Ljava/lang/String;

    .line 140
    invoke-static {v11}, Lcom/coinbase/android/utils/Utils;->getGravatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v10

    const v11, 0x7f02007f

    .line 141
    invoke-virtual {v10, v11}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v10

    const v11, 0x7f02007f

    .line 142
    invoke-virtual {v10, v11}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v10

    new-instance v11, Lcom/coinbase/android/utils/RoundedTransformation;

    const/4 v12, 0x0

    invoke-direct {v11, v7, v12}, Lcom/coinbase/android/utils/RoundedTransformation;-><init>(II)V

    .line 143
    invoke-virtual {v10, v11}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v10

    .line 144
    invoke-virtual {v10, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 146
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0700c7

    new-instance v12, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$2;

    invoke-direct {v12, p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$2;-><init>(Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;)V

    .line 148
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0700b4

    new-instance v12, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$1;

    invoke-direct {v12, p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$1;-><init>(Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;)V

    .line 153
    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public onUserConfirm()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 188
    iget-object v4, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    const v6, 0x7f070276

    invoke-virtual {p0, v6}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->dialog:Landroid/app/ProgressDialog;

    .line 189
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "to"

    iget-object v5, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mCounterparty:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v4, "amount"

    iget-object v5, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mAmount:Lorg/joda/money/Money;

    invoke-virtual {v5}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v4, "currency"

    iget-object v5, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mAmount:Lorg/joda/money/Money;

    invoke-virtual {v5}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v4, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mFee:Lorg/joda/money/Money;

    if-eqz v4, :cond_0

    .line 194
    const-string v4, "fee"

    iget-object v5, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mFee:Lorg/joda/money/Money;

    invoke-virtual {v5}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    const-string v4, "description"

    iget-object v5, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mNotes:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v4, "idem"

    iget-object v5, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mIdem:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v4, "instant_exchange_quote"

    iget-object v5, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mExchangeId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mAmount:Lorg/joda/money/Money;

    invoke-virtual {v5}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v5

    invoke-virtual {v5}, Lorg/joda/money/CurrencyUnit;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mAmount:Lorg/joda/money/Money;

    invoke-virtual {v5}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "amount":Ljava/lang/String;
    const v4, 0x7f0700e3

    invoke-virtual {p0, v4}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mCounterparty:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mAccount:Ljava/lang/String;

    new-instance v6, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;

    invoke-direct {v6, p0, v2}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;-><init>(Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v3, v6}, Lcom/coinbase/api/internal/CoinbaseInternal;->sendMoney(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 226
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v4

    const-string v5, "Event - Confirm Send"

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/coinbase/android/utils/KochavaTracking;->getInstance()Lcom/coinbase/android/utils/KochavaTracking;

    move-result-object v4

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coinbase/android/utils/KochavaTracking;->initializeKochava(Landroid/content/Context;)Lcom/kochava/android/tracker/Feature;

    move-result-object v1

    .line 228
    .local v1, "kFeature":Lcom/kochava/android/tracker/Feature;
    const-string v4, "Transfer"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/kochava/android/tracker/Feature;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method
