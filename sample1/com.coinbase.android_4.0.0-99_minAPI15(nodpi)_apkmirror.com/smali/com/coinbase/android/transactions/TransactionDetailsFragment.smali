.class public Lcom/coinbase/android/transactions/TransactionDetailsFragment;
.super Lroboguice/fragment/RoboFragment;
.source "TransactionDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;,
        Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_CHANGE_ID:Ljava/lang/String; = "accountChangeId"

.field public static final ACCOUNT_ID:Ljava/lang/String; = "accountId"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final PAYMENT_METHOD_NAME:Ljava/lang/String; = "paymentMethodName"

.field private static final REQUEST_PIN:I = 0x2711

.field public static final TRANSACTION:Ljava/lang/String; = "transaction"


# instance fields
.field private accountId:Ljava/lang/String;

.field actions:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0268
    .end annotation
.end field

.field amount:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0259
    .end annotation
.end field

.field args:Landroid/os/Bundle;

.field content:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0257
    .end annotation
.end field

.field date:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0258
    .end annotation
.end field

.field exchangeRate:Ljava/math/BigDecimal;

.field fiatAmountTextView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d025a
    .end annotation
.end field

.field from:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d025e
    .end annotation
.end field

.field fromImage:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d025c
    .end annotation
.end field

.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mDbManager:Lcom/coinbase/android/db/DatabaseManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mPinManager:Lcom/coinbase/android/pin/PINManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mPinReturnActionType:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

.field private mPinReturnIsSend:Z

.field private mPinReturnTransactionId:Ljava/lang/String;

.field mView:Landroid/view/ViewGroup;

.field negative:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d026a
    .end annotation
.end field

.field notes:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0267
    .end annotation
.end field

.field notesLabel:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0266
    .end annotation
.end field

.field private paymentMethodName:Ljava/lang/String;

.field positive:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0269
    .end annotation
.end field

.field statusView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d025b
    .end annotation
.end field

.field to:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0264
    .end annotation
.end field

.field toImage:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0262
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionDetailsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->handleTransactionError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionDetailsFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->handleFinish(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/transactions/TransactionDetailsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->handleRequestError()V

    return-void
.end method

.method static synthetic access$300(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Lcom/coinbase/v2/models/transactions/Data;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionDetailsFragment;
    .param p1, "x1"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->fillViewsForTransaction(Lcom/coinbase/v2/models/transactions/Data;)V

    return-void
.end method

.method static synthetic access$400(Lcom/coinbase/android/transactions/TransactionDetailsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionDetailsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getTransaction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transactions/TransactionDetailsFragment;
    .param p1, "x1"    # Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->takeAction(Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;Ljava/lang/String;Z)V

    return-void
.end method

.method private cancelRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    const v3, 0x7f070258

    invoke-virtual {p0, v3}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 186
    .local v1, "dialog":Landroid/app/ProgressDialog;
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->accountId:Ljava/lang/String;

    new-instance v4, Lcom/coinbase/android/transactions/TransactionDetailsFragment$3;

    invoke-direct {v4, p0, v1, v0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$3;-><init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Landroid/app/ProgressDialog;Landroid/content/Context;)V

    invoke-virtual {v2, v3, p1, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->cancelRequest(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 206
    return-void
.end method

.method private completeRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    const v3, 0x7f070258

    invoke-virtual {p0, v3}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 160
    .local v1, "dialog":Landroid/app/ProgressDialog;
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->accountId:Ljava/lang/String;

    new-instance v4, Lcom/coinbase/android/transactions/TransactionDetailsFragment$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$2;-><init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Landroid/app/ProgressDialog;Landroid/content/Context;)V

    invoke-virtual {v2, v3, p1, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->completeRequest(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 180
    return-void
.end method

.method private fillViewsForTransaction(Lcom/coinbase/v2/models/transactions/Data;)V
    .locals 24
    .param p1, "tx"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    if-eqz v20, :cond_0

    if-nez p1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->content:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->accountId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/coinbase/android/db/AccountORM;->find(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 352
    .local v5, "currentAccount":Lcom/coinbase/v2/models/account/Data;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 355
    if-nez v5, :cond_2

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->transactionLoadingFailed()V

    goto :goto_0

    .line 352
    .end local v5    # "currentAccount":Lcom/coinbase/v2/models/account/Data;
    :catchall_0
    move-exception v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    throw v20

    .line 361
    .restart local v5    # "currentAccount":Lcom/coinbase/v2/models/account/Data;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getAmount()Lcom/coinbase/v2/models/transactions/Amount;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/coinbase/android/utils/TransactionUtils;->moneyFromAmount(Lcom/coinbase/v2/models/transactions/Amount;)Lorg/joda/money/BigMoney;

    move-result-object v9

    .line 362
    .local v9, "moneyAmount":Lorg/joda/money/BigMoney;
    invoke-static {v5}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v20

    sget-object v21, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 363
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getNativeAmount()Lcom/coinbase/v2/models/transactions/NativeAmount;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/coinbase/android/utils/TransactionUtils;->moneyFromNativeAmount(Lcom/coinbase/v2/models/transactions/NativeAmount;)Lorg/joda/money/BigMoney;

    move-result-object v10

    .line 364
    .local v10, "nativeAmount":Lorg/joda/money/BigMoney;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->fiatAmountTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    invoke-virtual {v10}, Lorg/joda/money/BigMoney;->abs()Lorg/joda/money/BigMoney;

    move-result-object v20

    sget-object v21, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    invoke-static/range {v20 .. v21}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;)Ljava/lang/String;

    move-result-object v4

    .line 377
    .end local v10    # "nativeAmount":Lorg/joda/money/BigMoney;
    .local v4, "amountText":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->amount:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getStatus()Ljava/lang/String;

    move-result-object v20

    const-string v21, "completed"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    const-string v16, ""

    .line 381
    .local v16, "readable":Ljava/lang/String;
    :goto_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->statusView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->statusView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    const v20, 0x7f07024f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 388
    .local v19, "you":Ljava/lang/String;
    const-string v18, ""

    .line 389
    .local v18, "toText":Ljava/lang/String;
    const-string v7, ""

    .line 390
    .local v7, "fromText":Ljava/lang/String;
    invoke-virtual {v9}, Lorg/joda/money/BigMoney;->isPositive()Z

    move-result v17

    .line 391
    .local v17, "sendToMe":Z
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v20

    if-eqz v20, :cond_b

    .line 392
    if-eqz v17, :cond_a

    .line 393
    move-object/from16 v18, v19

    .line 394
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/coinbase/v2/models/transactions/Entity;->getResource()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->accountFromID(Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v3

    .line 396
    .local v3, "account":Lcom/coinbase/v2/models/account/Data;
    if-nez v3, :cond_9

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/coinbase/android/utils/TransactionUtils;->entityIdentifier(Landroid/content/Context;Lcom/coinbase/v2/models/transactions/Entity;)Ljava/lang/String;

    move-result-object v7

    .line 427
    .end local v3    # "account":Lcom/coinbase/v2/models/account/Data;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->from:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->to:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->from:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->to:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 433
    new-instance v15, Lcom/coinbase/android/ui/AvatarDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f020139

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/coinbase/android/ui/AvatarDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 435
    .local v15, "placeholder":Lcom/coinbase/android/ui/AvatarDrawable;
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v20

    if-eqz v20, :cond_13

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v20

    .line 437
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/coinbase/v2/models/transactions/Entity;->getEmail()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/coinbase/android/utils/Utils;->getGravatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v20

    .line 438
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/squareup/picasso/RequestCreator;->error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v20

    .line 439
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v20

    new-instance v21, Lcom/coinbase/android/utils/RoundedTransformation;

    const/16 v22, 0x50

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/coinbase/android/utils/RoundedTransformation;-><init>(II)V

    .line 440
    invoke-virtual/range {v20 .. v21}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->toImage:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    .line 441
    invoke-virtual/range {v20 .. v21}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 447
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getFrom()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v20

    if-eqz v20, :cond_14

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v20

    .line 449
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getFrom()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/coinbase/v2/models/transactions/Entity;->getEmail()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/coinbase/android/utils/Utils;->getGravatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v20

    .line 450
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/squareup/picasso/RequestCreator;->error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v20

    .line 451
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v20

    new-instance v21, Lcom/coinbase/android/utils/RoundedTransformation;

    const/16 v22, 0x50

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/coinbase/android/utils/RoundedTransformation;-><init>(II)V

    .line 452
    invoke-virtual/range {v20 .. v21}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->fromImage:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    .line 453
    invoke-virtual/range {v20 .. v21}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 460
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getCreatedAt()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_15

    .line 468
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/coinbase/android/utils/TransactionUtils;->createdAtDateFromTransaction(Lcom/coinbase/v2/models/transactions/Data;)Lorg/joda/time/LocalDate;

    move-result-object v8

    .line 469
    .local v8, "localDate":Lorg/joda/time/LocalDate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->date:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string v21, "MMMM dd, yyyy"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/joda/time/LocalDate;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 476
    .end local v8    # "localDate":Lorg/joda/time/LocalDate;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->date:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    const-string v22, "Roboto-Light"

    invoke-static/range {v21 .. v22}, Lcom/coinbase/android/ui/FontManager;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 479
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getDescription()Ljava/lang/String;

    move-result-object v14

    .line 480
    .local v14, "notesText":Ljava/lang/String;
    const-string v20, "null"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    if-eqz v14, :cond_4

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    :cond_4
    const/4 v13, 0x1

    .line 481
    .local v13, "noNotes":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->notes:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v13, :cond_5

    const/4 v14, 0x0

    .end local v14    # "notesText":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->notes:Landroid/widget/TextView;

    move-object/from16 v21, v0

    if-eqz v13, :cond_17

    const/16 v20, 0x8

    :goto_9
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->notesLabel:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v13, :cond_18

    const/16 v20, 0x4

    :goto_a
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getType()Ljava/lang/String;

    move-result-object v20

    const-string v21, "request"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 487
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getStatus()Ljava/lang/String;

    move-result-object v20

    const-string v21, "pending"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->actions:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->positive:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x7f07025b

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->negative:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f070259

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->negative:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/coinbase/android/transactions/TransactionDetailsFragment$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v9}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$5;-><init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Lcom/coinbase/v2/models/transactions/Data;Lorg/joda/money/BigMoney;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->positive:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/coinbase/android/transactions/TransactionDetailsFragment$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v9}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$6;-><init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Lcom/coinbase/v2/models/transactions/Data;Lorg/joda/money/BigMoney;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 368
    .end local v4    # "amountText":Ljava/lang/String;
    .end local v7    # "fromText":Ljava/lang/String;
    .end local v13    # "noNotes":Z
    .end local v15    # "placeholder":Lcom/coinbase/android/ui/AvatarDrawable;
    .end local v16    # "readable":Ljava/lang/String;
    .end local v17    # "sendToMe":Z
    .end local v18    # "toText":Ljava/lang/String;
    .end local v19    # "you":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getNativeAmount()Lcom/coinbase/v2/models/transactions/NativeAmount;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/coinbase/android/utils/TransactionUtils;->moneyFromNativeAmount(Lcom/coinbase/v2/models/transactions/NativeAmount;)Lorg/joda/money/BigMoney;

    move-result-object v12

    .line 369
    .local v12, "nativeMoneyAmount":Lorg/joda/money/BigMoney;
    invoke-virtual {v12}, Lorg/joda/money/BigMoney;->abs()Lorg/joda/money/BigMoney;

    move-result-object v20

    sget-object v21, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    invoke-static/range {v20 .. v21}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;)Ljava/lang/String;

    move-result-object v11

    .line 370
    .local v11, "nativeAmountText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->fiatAmountTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->fiatAmountTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    invoke-virtual {v9}, Lorg/joda/money/BigMoney;->abs()Lorg/joda/money/BigMoney;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    move-object/from16 v21, v0

    .line 374
    invoke-interface/range {v21 .. v21}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 375
    invoke-static/range {v22 .. v22}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v22

    .line 373
    invoke-static/range {v20 .. v22}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "amountText":Ljava/lang/String;
    goto/16 :goto_1

    .line 379
    .end local v11    # "nativeAmountText":Ljava/lang/String;
    .end local v12    # "nativeMoneyAmount":Lorg/joda/money/BigMoney;
    :cond_7
    const v20, 0x7f07022f

    .line 380
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 384
    .restart local v16    # "readable":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->statusView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 399
    .restart local v3    # "account":Lcom/coinbase/v2/models/account/Data;
    .restart local v7    # "fromText":Ljava/lang/String;
    .restart local v17    # "sendToMe":Z
    .restart local v18    # "toText":Ljava/lang/String;
    .restart local v19    # "you":Ljava/lang/String;
    :cond_9
    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 401
    .end local v3    # "account":Lcom/coinbase/v2/models/account/Data;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getTo()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/coinbase/android/utils/TransactionUtils;->entityIdentifier(Landroid/content/Context;Lcom/coinbase/v2/models/transactions/Entity;)Ljava/lang/String;

    move-result-object v18

    .line 402
    move-object/from16 v7, v19

    goto/16 :goto_4

    .line 404
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getFrom()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v20

    if-eqz v20, :cond_d

    .line 405
    if-eqz v17, :cond_c

    .line 406
    move-object/from16 v18, v19

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getFrom()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/coinbase/android/utils/TransactionUtils;->entityIdentifier(Landroid/content/Context;Lcom/coinbase/v2/models/transactions/Entity;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 409
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getFrom()Lcom/coinbase/v2/models/transactions/Entity;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/coinbase/android/utils/TransactionUtils;->entityIdentifier(Landroid/content/Context;Lcom/coinbase/v2/models/transactions/Entity;)Ljava/lang/String;

    move-result-object v18

    .line 410
    move-object/from16 v7, v19

    goto/16 :goto_4

    .line 412
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getBuy()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v20

    if-nez v20, :cond_e

    .line 413
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getFiatDeposit()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v20

    if-nez v20, :cond_e

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getExchangeDeposit()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v20

    if-nez v20, :cond_e

    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getTransfer()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v20

    if-nez v20, :cond_e

    .line 416
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getRequest()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v20

    if-eqz v20, :cond_10

    .line 417
    :cond_e
    move-object/from16 v18, v19

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->paymentMethodName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    const v20, 0x7f07024e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_b
    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->paymentMethodName:Ljava/lang/String;

    goto :goto_b

    .line 419
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getSell()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v20

    if-nez v20, :cond_11

    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getFiatWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v20

    if-nez v20, :cond_11

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getExchangeWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v20

    if-nez v20, :cond_11

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getVaultWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v20

    if-nez v20, :cond_11

    .line 423
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getSend()Lcom/coinbase/v2/models/transactions/Trade;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 424
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->paymentMethodName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_12

    const v20, 0x7f07024e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 425
    :goto_c
    move-object/from16 v7, v19

    goto/16 :goto_4

    .line 424
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->paymentMethodName:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_c

    .line 443
    .restart local v15    # "placeholder":Lcom/coinbase/android/ui/AvatarDrawable;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->toImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/coinbase/android/utils/RoundedTransformation;

    const/16 v22, 0x50

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/coinbase/android/utils/RoundedTransformation;-><init>(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020139

    invoke-static/range {v22 .. v23}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/coinbase/android/utils/RoundedTransformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 455
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->fromImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/coinbase/android/utils/RoundedTransformation;

    const/16 v22, 0x50

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Lcom/coinbase/android/utils/RoundedTransformation;-><init>(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020139

    invoke-static/range {v22 .. v23}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/coinbase/android/utils/RoundedTransformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 470
    :catch_0
    move-exception v6

    .line 471
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->date:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 474
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->date:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 480
    .restart local v14    # "notesText":Ljava/lang/String;
    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 482
    .end local v14    # "notesText":Ljava/lang/String;
    .restart local v13    # "noNotes":Z
    :cond_17
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 483
    :cond_18
    const/16 v20, 0x0

    goto/16 :goto_a

    .line 507
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getType()Ljava/lang/String;

    move-result-object v20

    const-string v21, "request"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 508
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1a

    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/v2/models/transactions/Data;->getStatus()Ljava/lang/String;

    move-result-object v20

    const-string v21, "pending"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->actions:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 513
    invoke-virtual {v9}, Lorg/joda/money/BigMoney;->abs()Lorg/joda/money/BigMoney;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    move-object/from16 v21, v0

    .line 514
    invoke-interface/range {v21 .. v21}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 515
    invoke-static/range {v22 .. v22}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v22

    .line 513
    invoke-static/range {v20 .. v22}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->positive:Landroid/widget/Button;

    move-object/from16 v20, v0

    const v21, 0x7f07025c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v4, v22, v23

    const/16 v23, 0x1

    aput-object v18, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->negative:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f07025a

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->negative:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/coinbase/android/transactions/TransactionDetailsFragment$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v9}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$7;-><init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Lcom/coinbase/v2/models/transactions/Data;Lorg/joda/money/BigMoney;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->positive:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/coinbase/android/transactions/TransactionDetailsFragment$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v9}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$8;-><init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Lcom/coinbase/v2/models/transactions/Data;Lorg/joda/money/BigMoney;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 537
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->actions:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private getTransaction(Ljava/lang/String;)V
    .locals 3
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getActiveAccountId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/transactions/TransactionDetailsFragment$4;

    invoke-direct {v2, p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$4;-><init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->getTransaction(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 254
    return-void
.end method

.method private handleFinish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 211
    instance-of v0, p1, Lcom/coinbase/android/transactions/TransactionDetailsActivity;

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->clearDetails()V

    goto :goto_0
.end method

.method private handleRequestError()V
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070256

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method private handleTransactionError(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070250

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 225
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    return-void
.end method

.method private resendRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "transcationId"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    const v3, 0x7f070258

    invoke-virtual {p0, v3}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 137
    .local v1, "dialog":Landroid/app/ProgressDialog;
    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->accountId:Ljava/lang/String;

    new-instance v4, Lcom/coinbase/android/transactions/TransactionDetailsFragment$1;

    invoke-direct {v4, p0, v1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$1;-><init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3, p1, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->resendRequest(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 155
    return-void
.end method

.method private showPINPrompt()V
    .locals 3

    .prologue
    .line 580
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/coinbase/android/pin/PINPromptActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.coinbase.android.pin.ACTION_PROMPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 583
    return-void
.end method

.method private takeAction(Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "type"    # Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;
    .param p2, "transactionId"    # Ljava/lang/String;
    .param p3, "isSend"    # Z

    .prologue
    .line 553
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mPinManager:Lcom/coinbase/android/pin/PINManager;

    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/coinbase/android/pin/PINManager$AccessType;->SEND_MONEY:Lcom/coinbase/android/pin/PINManager$AccessType;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/pin/PINManager;->isProtected(Landroid/content/Context;Lcom/coinbase/android/pin/PINManager$AccessType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iput-object p2, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mPinReturnTransactionId:Ljava/lang/String;

    .line 555
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mPinReturnActionType:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    .line 557
    iput-boolean p3, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mPinReturnIsSend:Z

    .line 559
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mPinManager:Lcom/coinbase/android/pin/PINManager;

    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/pin/PINManager;->shouldGrantAccess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->showPINPrompt()V

    .line 577
    :goto_0
    return-void

    .line 566
    :cond_0
    sget-object v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$9;->$SwitchMap$com$coinbase$android$transactions$TransactionDetailsFragment$ActionType:[I

    invoke-virtual {p1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 568
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->resendRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->cancelRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->completeRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private transactionLoadingFailed()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 597
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 600
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070256

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 601
    return-void
.end method


# virtual methods
.method public accountFromID(Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/coinbase/android/db/AccountORM;->find(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 546
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 549
    return-object v0

    .line 546
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    throw v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 587
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mPinReturnActionType:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mPinReturnTransactionId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mPinReturnIsSend:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->takeAction(Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;Ljava/lang/String;Z)V

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lroboguice/fragment/RoboFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 277
    const v0, 0x7f030089

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mView:Landroid/view/ViewGroup;

    .line 278
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onDestroyView()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->mView:Landroid/view/ViewGroup;

    .line 270
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 283
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->args:Landroid/os/Bundle;

    .line 287
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->args:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->args:Landroid/os/Bundle;

    const-string v1, "paymentMethodName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->paymentMethodName:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->args:Landroid/os/Bundle;

    const-string v1, "accountId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->accountId:Ljava/lang/String;

    .line 295
    new-instance v0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;

    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;-><init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment$RefreshExchangeRateTask;->execute()V

    goto :goto_0
.end method
