.class public Lcom/coinbase/android/MainActivity;
.super Lcom/coinbase/android/CoinbaseDrawerActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/coinbase/android/transactions/TransactionsFragment$Listener;


# annotations
.annotation runtime Lcom/coinbase/android/CoinbaseActivity$RequiresAuthentication;
.end annotation

.annotation runtime Lcom/coinbase/android/CoinbaseActivity$RequiresPIN;
.end annotation


# static fields
.field public static final ACTION_BUY:Ljava/lang/String; = "com.coinbase.MainActivity.ACTION_BUY"

.field public static final ACTION_SCAN:Ljava/lang/String; = "com.siriusapplications.coinbase.MainActivity.ACTION_SCAN"

.field public static final ACTION_TRANSACTIONS:Ljava/lang/String; = "com.siriusapplications.coinbase.MainActivity.ACTION_TRANSACTIONS"

.field public static final ACTION_TRANSFER:Ljava/lang/String; = "com.siriusapplications.coinbase.MainActivity.ACTION_TRANSFER"

.field public static final ACTION_URI_TRANSFER:Ljava/lang/String; = "com.coinbase.MainActivity.ACTION_URI_TRANSFER"

.field public static final FRAGMENT_INDEX_ACCOUNT:I = 0x3

.field public static final FRAGMENT_INDEX_BUY:I = 0x1

.field public static final FRAGMENT_INDEX_CHARTS:I = 0x4

.field public static final FRAGMENT_INDEX_NONE:I = -0x1

.field public static final FRAGMENT_INDEX_SELL:I = 0x2

.field public static final FRAGMENT_INDEX_TRANSACTIONS:I = 0x0

.field private static final KEY_COUNT_LAUNCHES_FOR_INVITE_A_FRIEND:Ljava/lang/String; = "KEY_VISIBLE_FRAGMENT"

.field private static final KEY_IN_TRANSACTION_DETAILS_MODE:Ljava/lang/String; = "KEY_IN_TRANSACTION_DETAILS_MODE"

.field private static final KEY_VISIBLE_FRAGMENT:Ljava/lang/String; = "KEY_VISIBLE_FRAGMENT"

.field public static final NUM_FRAGMENTS:I = 0x5

.field public static final REQUEST_CODE_APP_INVITE:I = 0x3

.field public static final REQUEST_CODE_PIN:I = 0x2

.field public static final REQUEST_CODE_TRANSACTIONS_DETAILS:I = 0x1

.field public static final REQUEST_CODE_TRANSFER:I = 0x0

.field private static final SHOW_INVITE_FRIEND_AFTER_N_LAUNCHES:I = -0x1


# instance fields
.field lastTimeIndex:I

.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mBuyFragment:Lcom/coinbase/android/buysell/BuyFragment;

.field mBuySellFragment:Lcom/coinbase/android/buysell/SellFragment;

.field mChartsFragment:Lcom/coinbase/android/pricechart/ChartsFragment;

.field protected mDbManager:Lcom/coinbase/android/db/DatabaseManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mFragments:[Lcom/coinbase/android/CoinbaseFragment;

.field mInTransactionDetailsMode:Z

.field mPendingPinReturn:Z

.field mSettingsFragment:Lcom/coinbase/android/settings/AccountSettingsFragment;

.field mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mSyncAccountsTask:Lcom/coinbase/android/task/SyncAccountsTask;

.field mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

.field mViewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;-><init>()V

    .line 116
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/coinbase/android/CoinbaseFragment;

    iput-object v0, p0, Lcom/coinbase/android/MainActivity;->mFragments:[Lcom/coinbase/android/CoinbaseFragment;

    .line 126
    iput-boolean v1, p0, Lcom/coinbase/android/MainActivity;->mInTransactionDetailsMode:Z

    .line 127
    iput-boolean v1, p0, Lcom/coinbase/android/MainActivity;->mPendingPinReturn:Z

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/coinbase/android/MainActivity;->lastTimeIndex:I

    return-void
.end method

.method static synthetic access$002(Lcom/coinbase/android/MainActivity;Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/MainActivity;
    .param p1, "x1"    # Lcom/coinbase/android/task/SyncAccountsTask;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/coinbase/android/MainActivity;->mSyncAccountsTask:Lcom/coinbase/android/task/SyncAccountsTask;

    return-object p1
.end method

.method private generateQR(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "receiveAddr"    # Ljava/lang/String;

    .prologue
    .line 682
    :try_start_0
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v3, 0x100

    const/16 v4, 0x100

    invoke-static {p1, v2, v3, v4}, Lcom/coinbase/android/utils/Utils;->createBarcode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 687
    :goto_0
    return-object v0

    .line 683
    :catch_0
    move-exception v1

    .line 684
    .local v1, "e":Lcom/google/zxing/WriterException;
    const-string v2, "Coinbase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create QR code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideSlidingMenu()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/coinbase/android/MainActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/coinbase/android/MainActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 392
    :cond_0
    return-void
.end method

.method private makeKeyboardObeyVisibleFragment()V
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mFragments:[Lcom/coinbase/android/CoinbaseFragment;

    iget-object v2, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/coinbase/android/CoinbaseFragment;->shouldShowKeyboard()Z

    move-result v0

    .line 346
    .local v0, "keyboardPreferredStatus":Z
    if-eqz v0, :cond_0

    .line 347
    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->showKeyboard(Landroid/app/Activity;)V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/coinbase/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0
.end method

.method private onSlidingMenuClosed(Z)V
    .locals 2
    .param p1, "fragmentChanged"    # Z

    .prologue
    .line 334
    if-eqz p1, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/coinbase/android/MainActivity;->makeKeyboardObeyVisibleFragment()V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    const-string v0, "Coinbase"

    const-string v1, "Fragment was not changed when sliding menu closed."

    invoke-static {v0, v1}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDepositWithdraw(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;)V
    .locals 4
    .param p1, "account"    # Lcom/coinbase/v2/models/account/Data;
    .param p2, "type"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    .prologue
    .line 842
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/coinbase/android/deposits/FiatTransactionsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 843
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 844
    .local v0, "gson":Lcom/google/gson/Gson;
    const-string v2, "DepositActivity_Account"

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const-string v2, "DepositActivity_Type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 846
    invoke-virtual {p0, v1}, Lcom/coinbase/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 847
    const v2, 0x7f04000a

    const v3, 0x7f04001c

    invoke-virtual {p0, v2, v3}, Lcom/coinbase/android/MainActivity;->overridePendingTransition(II)V

    .line 848
    return-void
.end method

.method private showRationaleDialog(ILpermissions/dispatcher/PermissionRequest;)V
    .locals 3
    .param p1, "messageResId"    # I
    .param p2, "request"    # Lpermissions/dispatcher/PermissionRequest;

    .prologue
    .line 866
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07009a

    new-instance v2, Lcom/coinbase/android/MainActivity$5;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/android/MainActivity$5;-><init>(Lcom/coinbase/android/MainActivity;Lpermissions/dispatcher/PermissionRequest;)V

    .line 867
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07009b

    new-instance v2, Lcom/coinbase/android/MainActivity$4;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/android/MainActivity$4;-><init>(Lcom/coinbase/android/MainActivity;Lpermissions/dispatcher/PermissionRequest;)V

    .line 873
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 879
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 880
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 881
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 882
    return-void
.end method

.method private showSlidingMenu()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/coinbase/android/MainActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 386
    return-void
.end method

.method private showTransferScreen(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;)V
    .locals 4
    .param p1, "selectedAccount"    # Lcom/coinbase/v2/models/account/Data;
    .param p2, "transferType"    # Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    .prologue
    .line 737
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/coinbase/android/transfers/TransferActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 738
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 739
    .local v0, "gson":Lcom/google/gson/Gson;
    const-string v2, "TransferActivity_Account"

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    const-string v2, "TransferActivity_Transfer_Type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 741
    invoke-virtual {p0, v1}, Lcom/coinbase/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 742
    const v2, 0x7f04000a

    const v3, 0x7f04001c

    invoke-virtual {p0, v2, v3}, Lcom/coinbase/android/MainActivity;->overridePendingTransition(II)V

    .line 743
    return-void
.end method

.method private showTransferScreen(Ljava/lang/String;)V
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 746
    iget-object v6, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v6}, Lcom/coinbase/android/transactions/TransactionsFragment;->getAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v5

    .line 748
    .local v5, "selectedAccount":Lcom/coinbase/v2/models/account/Data;
    const v6, 0x7f0702dc

    invoke-virtual {p0, v6}, Lcom/coinbase/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 749
    iget-object v6, p0, Lcom/coinbase/android/MainActivity;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 751
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v2}, Lcom/coinbase/android/db/AccountORM;->list(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    .line 752
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 753
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0702d9

    invoke-virtual {p0, v8}, Lcom/coinbase/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 754
    move-object v5, v0

    .line 763
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    :cond_1
    iget-object v6, p0, Lcom/coinbase/android/MainActivity;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 767
    .end local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/coinbase/android/transfers/TransferActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 768
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 769
    const-string v6, "TransferActivity_BitcoinURI"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    :cond_3
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 772
    .local v3, "gson":Lcom/google/gson/Gson;
    const-string v6, "TransferActivity_Account"

    invoke-virtual {v3, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const-string v6, "TransferActivity_Transfer_Type"

    sget-object v7, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;->SEND:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0, v4}, Lcom/coinbase/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 775
    const v6, 0x7f04000a

    const v7, 0x7f04001c

    invoke-virtual {p0, v6, v7}, Lcom/coinbase/android/MainActivity;->overridePendingTransition(II)V

    .line 776
    return-void

    .line 760
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v6

    .line 763
    iget-object v6, p0, Lcom/coinbase/android/MainActivity;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    goto :goto_0

    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/coinbase/android/MainActivity;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v7}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    throw v6
.end method

.method private syncAccounts()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/coinbase/android/MainActivity;->mSyncAccountsTask:Lcom/coinbase/android/task/SyncAccountsTask;

    if-nez v0, :cond_0

    .line 780
    new-instance v0, Lcom/coinbase/android/task/SyncAccountsTask;

    new-instance v1, Lcom/coinbase/android/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/coinbase/android/MainActivity$3;-><init>(Lcom/coinbase/android/MainActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/task/SyncAccountsTask;-><init>(Landroid/content/Context;Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;)V

    iput-object v0, p0, Lcom/coinbase/android/MainActivity;->mSyncAccountsTask:Lcom/coinbase/android/task/SyncAccountsTask;

    .line 794
    iget-object v0, p0, Lcom/coinbase/android/MainActivity;->mSyncAccountsTask:Lcom/coinbase/android/task/SyncAccountsTask;

    invoke-virtual {v0}, Lcom/coinbase/android/task/SyncAccountsTask;->syncAccounts()V

    .line 796
    :cond_0
    return-void
.end method

.method private toggleSlidingMenu()V
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->isSlidingMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/coinbase/android/MainActivity;->hideSlidingMenu()V

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/coinbase/android/MainActivity;->showSlidingMenu()V

    goto :goto_0
.end method


# virtual methods
.method public getSelectedSection()Lcom/coinbase/android/ui/Mintent;
    .locals 3

    .prologue
    .line 324
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-static {v1}, Lcom/coinbase/android/utils/Section;->fromIndex(I)Lcom/coinbase/android/utils/Section;

    move-result-object v0

    .line 325
    .local v0, "section":Lcom/coinbase/android/utils/Section;
    new-instance v2, Lcom/coinbase/android/ui/Mintent;

    sget-object v1, Lcom/coinbase/android/utils/Section;->TRANSACTIONS:Lcom/coinbase/android/utils/Section;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    .line 326
    invoke-virtual {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->getAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/coinbase/android/ui/Mintent;-><init>(Lcom/coinbase/android/utils/Section;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 691
    if-nez p1, :cond_2

    .line 695
    if-ne p2, v2, :cond_1

    .line 696
    const-string v1, "SCAN_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "contents":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/coinbase/android/MainActivity;->showTransferScreen(Ljava/lang/String;)V

    .line 724
    .end local v0    # "contents":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    if-nez p2, :cond_0

    .line 701
    const-string v1, "Coinbase"

    const-string v2, "Barcode scan cancelled"

    invoke-static {v1, v2}, Lcom/coinbase/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_2
    if-ne p1, v3, :cond_3

    .line 707
    if-ne p2, v2, :cond_0

    .line 708
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v2}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 710
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    if-ne p2, v2, :cond_4

    .line 712
    iput-boolean v3, p0, Lcom/coinbase/android/MainActivity;->mPendingPinReturn:Z

    goto :goto_0

    .line 713
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 714
    if-ne p2, v2, :cond_5

    .line 715
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - App invite completed"

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 717
    :cond_5
    if-nez p2, :cond_6

    .line 718
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - App invite failed"

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 720
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 722
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 226
    instance-of v0, p1, Lcom/coinbase/android/transactions/TransactionsFragment;

    if-eqz v0, :cond_1

    .line 227
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mFragments:[Lcom/coinbase/android/CoinbaseFragment;

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcom/coinbase/android/CoinbaseFragment;

    aput-object v0, v1, v2

    .line 228
    check-cast p1, Lcom/coinbase/android/transactions/TransactionsFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 229
    .restart local p1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    instance-of v0, p1, Lcom/coinbase/android/buysell/BuyFragment;

    if-eqz v0, :cond_2

    .line 230
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mFragments:[Lcom/coinbase/android/CoinbaseFragment;

    const/4 v2, 0x1

    move-object v0, p1

    check-cast v0, Lcom/coinbase/android/CoinbaseFragment;

    aput-object v0, v1, v2

    .line 231
    check-cast p1, Lcom/coinbase/android/buysell/BuyFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/coinbase/android/MainActivity;->mBuyFragment:Lcom/coinbase/android/buysell/BuyFragment;

    goto :goto_0

    .line 232
    .restart local p1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    instance-of v0, p1, Lcom/coinbase/android/buysell/SellFragment;

    if-eqz v0, :cond_3

    .line 233
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mFragments:[Lcom/coinbase/android/CoinbaseFragment;

    const/4 v2, 0x2

    move-object v0, p1

    check-cast v0, Lcom/coinbase/android/CoinbaseFragment;

    aput-object v0, v1, v2

    .line 234
    check-cast p1, Lcom/coinbase/android/buysell/SellFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/coinbase/android/MainActivity;->mBuySellFragment:Lcom/coinbase/android/buysell/SellFragment;

    goto :goto_0

    .line 235
    .restart local p1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_3
    instance-of v0, p1, Lcom/coinbase/android/settings/AccountSettingsFragment;

    if-eqz v0, :cond_4

    .line 236
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mFragments:[Lcom/coinbase/android/CoinbaseFragment;

    const/4 v2, 0x3

    move-object v0, p1

    check-cast v0, Lcom/coinbase/android/CoinbaseFragment;

    aput-object v0, v1, v2

    .line 237
    check-cast p1, Lcom/coinbase/android/settings/AccountSettingsFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/coinbase/android/MainActivity;->mSettingsFragment:Lcom/coinbase/android/settings/AccountSettingsFragment;

    goto :goto_0

    .line 238
    .restart local p1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_4
    instance-of v0, p1, Lcom/coinbase/android/pricechart/ChartsFragment;

    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mFragments:[Lcom/coinbase/android/CoinbaseFragment;

    const/4 v2, 0x4

    move-object v0, p1

    check-cast v0, Lcom/coinbase/android/CoinbaseFragment;

    aput-object v0, v1, v2

    .line 240
    check-cast p1, Lcom/coinbase/android/pricechart/ChartsFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/coinbase/android/MainActivity;->mChartsFragment:Lcom/coinbase/android/pricechart/ChartsFragment;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->isSlidingMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/coinbase/android/MainActivity;->hideSlidingMenu()V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onBackPressed()V

    goto :goto_0

    .line 379
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coinbase/android/MainActivity;->switchTo(I)V

    goto :goto_0
.end method

.method public onBuySellMade(Lcom/coinbase/android/event/BuySellMadeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/coinbase/android/event/BuySellMadeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lcom/coinbase/android/MainActivity;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 807
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/MainActivity;->switchTo(I)V

    .line 808
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 861
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 862
    invoke-direct {p0}, Lcom/coinbase/android/MainActivity;->hideSlidingMenu()V

    .line 863
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 142
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->supportLandscapeOnTablet()V

    .line 143
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    iget-object v3, p0, Lcom/coinbase/android/MainActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/coinbase/android/MainActivity;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v3, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const v3, 0x7f030027

    invoke-virtual {p0, v3}, Lcom/coinbase/android/MainActivity;->setContentView(I)V

    .line 156
    iget-object v3, p0, Lcom/coinbase/android/MainActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 159
    const v3, 0x7f0d00f3

    invoke-virtual {p0, v3}, Lcom/coinbase/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    iput-object v3, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 161
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/coinbase/android/MainActivity;->switchTo(I)V

    .line 163
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/coinbase/android/MainActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 165
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v3

    const-string v4, "Event - app open"

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/coinbase/android/MainActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->isSignedIn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    iget-object v3, p0, Lcom/coinbase/android/MainActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->needToRefreshAccessToken()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    iget-object v3, p0, Lcom/coinbase/android/MainActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->refreshAccessToken()V

    .line 172
    :cond_2
    new-instance v3, Lcom/coinbase/android/task/RefreshUserTask;

    invoke-direct {v3, p0}, Lcom/coinbase/android/task/RefreshUserTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/coinbase/android/task/RefreshUserTask;->execute()V

    .line 175
    :cond_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 176
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "KEY_VISIBLE_FRAGMENT"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 177
    .local v1, "launchesSinceInstall":I
    if-ge v1, v6, :cond_0

    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 179
    if-lt v1, v6, :cond_4

    .line 180
    const/4 v1, 0x0

    .line 183
    new-instance v0, Lcom/coinbase/android/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/coinbase/android/MainActivity$1;-><init>(Lcom/coinbase/android/MainActivity;)V

    .line 201
    .local v0, "f":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "invite"

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 203
    .end local v0    # "f":Landroid/support/v4/app/DialogFragment;
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "KEY_VISIBLE_FRAGMENT"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public onDepositMoneyClicked(Lcom/coinbase/v2/models/account/Data;)V
    .locals 1
    .param p1, "selectedAccount"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 833
    sget-object v0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    invoke-direct {p0, p1, v0}, Lcom/coinbase/android/MainActivity;->showDepositWithdraw(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;)V

    .line 834
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 539
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onDestroy()V

    .line 541
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 542
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 544
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 545
    return-void
.end method

.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lcom/coinbase/android/MainActivity;->lastTimeIndex:I

    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/coinbase/android/MainActivity;->onSlidingMenuClosed(Z)V

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/coinbase/android/MainActivity;->lastTimeIndex:I

    .line 211
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->updateTitle()V

    .line 212
    invoke-direct {p0}, Lcom/coinbase/android/MainActivity;->makeKeyboardObeyVisibleFragment()V

    .line 213
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrawerOpened()V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->updateTitle()V

    .line 218
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/coinbase/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iput v0, p0, Lcom/coinbase/android/MainActivity;->lastTimeIndex:I

    .line 220
    return-void
.end method

.method public onFinishTransactionsSync()V
    .locals 0

    .prologue
    .line 857
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 468
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 469
    invoke-virtual {p0, p1}, Lcom/coinbase/android/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 471
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 472
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "com.coinbase.MainActivity.ACTION_URI_TRANSFER"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 474
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "bitcoin"

    .line 475
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ethereum"

    .line 476
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 477
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "com.coinbase.MainActivity.ACTION_URI_TRANSFER"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/coinbase/android/MainActivity;->showTransferScreen(Ljava/lang/String;)V

    .line 509
    :cond_1
    :goto_0
    return-void

    .line 481
    :cond_2
    const-string v5, "com.siriusapplications.coinbase.MainActivity.ACTION_SCAN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 483
    invoke-static {p0}, Lcom/coinbase/android/MainActivityPermissionsDispatcher;->startBarcodeScanWithCheck(Lcom/coinbase/android/MainActivity;)V

    goto :goto_0

    .line 484
    :cond_3
    const-string v5, "com.siriusapplications.coinbase.MainActivity.ACTION_TRANSACTIONS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 485
    invoke-virtual {p0, v8}, Lcom/coinbase/android/MainActivity;->switchTo(I)V

    goto :goto_0

    .line 486
    :cond_4
    const-string v5, "com.coinbase.MainActivity.ACTION_BUY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 487
    invoke-virtual {p0, v9}, Lcom/coinbase/android/MainActivity;->switchTo(I)V

    goto :goto_0

    .line 488
    :cond_5
    const-string v5, "drawerIndex"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 489
    const-string v5, "drawerIndex"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 490
    .local v2, "index":I
    if-nez v2, :cond_6

    .line 491
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 492
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v1, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 497
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    :try_start_0
    iget-object v5, p0, Lcom/coinbase/android/MainActivity;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/db/AccountORM;->find(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 499
    .local v4, "validatedAccount":Lcom/coinbase/v2/models/account/Data;
    iget-object v5, p0, Lcom/coinbase/android/MainActivity;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 501
    if-eqz v4, :cond_6

    .line 502
    iget-object v5, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v5, v4}, Lcom/coinbase/android/transactions/TransactionsFragment;->setAccount(Lcom/coinbase/v2/models/account/Data;)V

    .line 506
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "validatedAccount":Lcom/coinbase/v2/models/account/Data;
    :cond_6
    invoke-virtual {p0, v2}, Lcom/coinbase/android/MainActivity;->switchTo(I)V

    goto :goto_0

    .line 499
    .restart local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/coinbase/android/MainActivity;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v6}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    throw v5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 563
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 577
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 565
    :sswitch_0
    invoke-static {p0}, Lcom/coinbase/android/MainActivityPermissionsDispatcher;->startBarcodeScanWithCheck(Lcom/coinbase/android/MainActivity;)V

    goto :goto_0

    .line 568
    :sswitch_1
    invoke-direct {p0}, Lcom/coinbase/android/MainActivity;->toggleSlidingMenu()V

    goto :goto_0

    .line 571
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 572
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/coinbase/android/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 563
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0d0311 -> :sswitch_0
        0x7f0d0312 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 549
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onPause()V

    .line 551
    iput-boolean v2, p0, Lcom/coinbase/android/MainActivity;->mPendingPinReturn:Z

    .line 552
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/coinbase/android/CoinbaseApplication;

    invoke-virtual {v1, p0}, Lcom/coinbase/android/CoinbaseApplication;->removeMainActivity(Lcom/coinbase/android/MainActivity;)V

    .line 556
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/coinbase/android/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 557
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/coinbase/android/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 558
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 728
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onPostResume()V

    .line 730
    iget-boolean v0, p0, Lcom/coinbase/android/MainActivity;->mPendingPinReturn:Z

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/coinbase/android/MainActivity;->mFragments:[Lcom/coinbase/android/CoinbaseFragment;

    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/coinbase/android/CoinbaseFragment;->onPINPromptSuccessfulReturn()V

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/android/MainActivity;->mPendingPinReturn:Z

    .line 734
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v9, 0x7f0d0311

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 428
    iget-object v8, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    if-nez v8, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v7

    .line 431
    :cond_1
    iget-boolean v8, p0, Lcom/coinbase/android/MainActivity;->mInTransactionDetailsMode:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/coinbase/android/MainActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v8, :cond_7

    .line 432
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->isSlidingMenuShowing()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_2
    move v2, v7

    .line 435
    .local v2, "hide":Z
    :goto_1
    iget-object v8, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v8}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v8

    if-eqz v8, :cond_8

    .line 436
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 451
    :cond_3
    :goto_2
    const v8, 0x7f0d0315

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 452
    .local v0, "buyItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    .line 453
    iget-object v8, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v8}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v8

    if-ne v8, v7, :cond_a

    move v8, v7

    :goto_3
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 455
    :cond_4
    const v8, 0x7f0d0317

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 456
    .local v4, "sellItem":Landroid/view/MenuItem;
    if-eqz v4, :cond_5

    .line 457
    iget-object v8, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v8}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    move v8, v7

    :goto_4
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 459
    :cond_5
    const v8, 0x7f0d0312

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 460
    .local v1, "chartItem":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 461
    iget-object v8, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v8}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    move v6, v7

    :cond_6
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0    # "buyItem":Landroid/view/MenuItem;
    .end local v1    # "chartItem":Landroid/view/MenuItem;
    .end local v2    # "hide":Z
    .end local v4    # "sellItem":Landroid/view/MenuItem;
    :cond_7
    move v2, v6

    .line 432
    goto :goto_1

    .line 440
    .restart local v2    # "hide":Z
    :cond_8
    :try_start_0
    iget-object v8, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v8}, Lcom/coinbase/android/transactions/TransactionsFragment;->getAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v8

    invoke-static {v8}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v5

    .line 441
    .local v5, "type":Lcom/coinbase/v2/models/account/Data$Type;
    iget-object v8, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v8}, Lcom/coinbase/android/transactions/TransactionsFragment;->getAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/coinbase/v2/models/account/Data$Type;->WALLET:Lcom/coinbase/v2/models/account/Data$Type;

    if-eq v5, v8, :cond_3

    sget-object v8, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-eq v5, v8, :cond_3

    .line 444
    :cond_9
    const v8, 0x7f0d0311

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 446
    .end local v5    # "type":Lcom/coinbase/v2/models/account/Data$Type;
    :catch_0
    move-exception v3

    .line 447
    .local v3, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "npe":Ljava/lang/NullPointerException;
    .restart local v0    # "buyItem":Landroid/view/MenuItem;
    :cond_a
    move v8, v6

    .line 453
    goto :goto_3

    .restart local v4    # "sellItem":Landroid/view/MenuItem;
    :cond_b
    move v8, v6

    .line 457
    goto :goto_4
.end method

.method public onReceiveAddressUpdated(Lcom/coinbase/android/event/ReceiveAddressUpdatedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/coinbase/android/event/ReceiveAddressUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 626
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    iget-object v2, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    .line 627
    invoke-virtual {v2}, Lcom/coinbase/android/transactions/TransactionsFragment;->getAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    .line 626
    invoke-interface {v1, v2}, Lcom/coinbase/api/LoginManager;->getReceiveAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "receiveAddr":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/coinbase/android/MainActivity;->switchToQRScan(Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method public onReceiveMoneyClicked(Lcom/coinbase/v2/models/account/Data;)V
    .locals 1
    .param p1, "selectedAccount"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 828
    sget-object v0, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;->REQUEST:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    invoke-direct {p0, p1, v0}, Lcom/coinbase/android/MainActivity;->showTransferScreen(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;)V

    .line 829
    return-void
.end method

.method public onRefreshRequested(Lcom/coinbase/android/event/RefreshRequestedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/RefreshRequestedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/coinbase/android/MainActivity;->syncAccounts()V

    .line 813
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 886
    invoke-super {p0, p1, p2, p3}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 887
    invoke-static {p0, p1, p3}, Lcom/coinbase/android/MainActivityPermissionsDispatcher;->onRequestPermissionsResult(Lcom/coinbase/android/MainActivity;I[I)V

    .line 888
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 257
    const-string v0, "KEY_VISIBLE_FRAGMENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/MainActivity;->switchTo(I)V

    .line 258
    const-string v0, "KEY_IN_TRANSACTION_DETAILS_MODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/MainActivity;->setInTransactionDetailsMode(Z)V

    .line 259
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 519
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onResume()V

    .line 522
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/coinbase/android/transfers/DelayedTxSenderService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/coinbase/android/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 524
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 526
    const-string v1, "NOTIFICATION_CHART_FRAGMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/coinbase/android/MainActivity;->switchTo(I)V

    .line 534
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/coinbase/android/MainActivity;->syncAccounts()V

    .line 535
    return-void

    .line 528
    :cond_1
    const-string v1, "NOTIFICATION_BUY_FRAGMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/coinbase/android/MainActivity;->switchTo(I)V

    goto :goto_0

    .line 530
    :cond_2
    const-string v1, "NOTIFICATION_SELL_FRAGMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/coinbase/android/MainActivity;->switchTo(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    const-string v0, "KEY_VISIBLE_FRAGMENT"

    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v0, "KEY_IN_TRANSACTION_DETAILS_MODE"

    iget-boolean v1, p0, Lcom/coinbase/android/MainActivity;->mInTransactionDetailsMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    return-void
.end method

.method public onSendMoneyClicked(Lcom/coinbase/v2/models/account/Data;)V
    .locals 1
    .param p1, "selectedAccount"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 823
    sget-object v0, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;->SEND:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    invoke-direct {p0, p1, v0}, Lcom/coinbase/android/MainActivity;->showTransferScreen(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;)V

    .line 824
    return-void
.end method

.method public onStartTransactionsSync()V
    .locals 0

    .prologue
    .line 853
    return-void
.end method

.method public onTransferMade(Lcom/coinbase/android/event/TransferMadeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/coinbase/android/event/TransferMadeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 800
    iget-object v0, p0, Lcom/coinbase/android/MainActivity;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/MainActivity;->switchTo(I)V

    .line 802
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 363
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onWindowFocusChanged(Z)V

    .line 364
    return-void
.end method

.method public onWithdrawMoneyClicked(Lcom/coinbase/v2/models/account/Data;)V
    .locals 1
    .param p1, "selectedAccount"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 838
    sget-object v0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->WITHDRAW:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    invoke-direct {p0, p1, v0}, Lcom/coinbase/android/MainActivity;->showDepositWithdraw(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;)V

    .line 839
    return-void
.end method

.method public setInTransactionDetailsMode(Z)V
    .locals 0
    .param p1, "inTransactionDetailsMode"    # Z

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/coinbase/android/MainActivity;->mInTransactionDetailsMode:Z

    .line 422
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->updateTitle()V

    .line 423
    return-void
.end method

.method showDeniedForCamera()V
    .locals 2

    .prologue
    .line 620
    const v0, 0x7f0701b1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 621
    return-void
.end method

.method showRationaleForCamera(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 1
    .param p1, "request"    # Lpermissions/dispatcher/PermissionRequest;

    .prologue
    .line 615
    const v0, 0x7f0701b2

    invoke-direct {p0, v0, p1}, Lcom/coinbase/android/MainActivity;->showRationaleDialog(ILpermissions/dispatcher/PermissionRequest;)V

    .line 616
    return-void
.end method

.method public startBarcodeScan()V
    .locals 3

    .prologue
    .line 582
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->getAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v1

    if-nez v1, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->getAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "accountId":Ljava/lang/String;
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/coinbase/android/MainActivity$2;-><init>(Lcom/coinbase/android/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->generateAddress(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    goto :goto_0
.end method

.method public stateDisclosureFinished(Lcom/coinbase/android/signin/StateDisclosureActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/coinbase/android/signin/StateDisclosureActivity;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 817
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

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->signOut()V

    .line 819
    :cond_1
    return-void
.end method

.method public switchTo(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 268
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 269
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->updateTitle()V

    .line 272
    packed-switch p1, :pswitch_data_0

    .line 287
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 288
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 287
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mDropShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->contentArea:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/coinbase/android/MainActivity;->mDropShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mFragments:[Lcom/coinbase/android/CoinbaseFragment;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mFragments:[Lcom/coinbase/android/CoinbaseFragment;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/coinbase/android/CoinbaseFragment;->onSwitchedTo()V

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 305
    :cond_2
    const-string v1, "Coinbase"

    const-string v2, "Keyboard changing immediately"

    invoke-static {v1, v2}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/coinbase/android/MainActivity;->makeKeyboardObeyVisibleFragment()V

    .line 313
    :goto_2
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/coinbase/android/event/SectionSelectedEvent;

    invoke-static {p1}, Lcom/coinbase/android/utils/Section;->fromIndex(I)Lcom/coinbase/android/utils/Section;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/coinbase/android/event/SectionSelectedEvent;-><init>(Lcom/coinbase/android/utils/Section;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 315
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 316
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Navigation drawer buy"

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 320
    :cond_3
    :goto_3
    return-void

    .line 274
    :pswitch_1
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->updateTheme()V

    goto :goto_1

    .line 281
    :pswitch_2
    iget-object v1, p0, Lcom/coinbase/android/MainActivity;->contentArea:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 309
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    :cond_4
    const-string v1, "Coinbase"

    const-string v2, "Keyboard: will be changed once menu closes"

    invoke-static {v1, v2}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/coinbase/android/MainActivity;->hideSlidingMenu()V

    goto :goto_2

    .line 317
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 318
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Navigation drawer sell"

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method switchToQRScan(Ljava/lang/String;)V
    .locals 13
    .param p1, "receiveAddress"    # Ljava/lang/String;

    .prologue
    const v12, 0x7f0702d9

    const/4 v11, 0x0

    .line 633
    const-string v3, ""

    .line 634
    .local v3, "explanationText":Ljava/lang/String;
    iget-object v8, p0, Lcom/coinbase/android/MainActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v8}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 635
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v10}, Lcom/coinbase/android/transactions/TransactionsFragment;->getAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v10

    invoke-virtual {v10}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 636
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v9

    sget-object v10, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v9, v10, :cond_0

    .line 639
    const v8, 0x7f070182

    :try_start_0
    invoke-virtual {p0, v8}, Lcom/coinbase/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 640
    .local v6, "text":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getBalance()Lcom/coinbase/v2/models/account/Balance;

    move-result-object v10

    invoke-virtual {v10}, Lcom/coinbase/v2/models/account/Balance;->getCurrency()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 649
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    .end local v6    # "text":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v8}, Lcom/coinbase/android/transactions/TransactionsFragment;->getAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v12}, Lcom/coinbase/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 650
    new-instance v7, Lcom/coinbase/android/utils/CryptoUri;

    sget-object v8, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->ethereumScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    invoke-direct {v7, v8}, Lcom/coinbase/android/utils/CryptoUri;-><init>(Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;)V

    .line 654
    .local v7, "uri":Lcom/coinbase/android/utils/CryptoUri;
    :goto_1
    invoke-virtual {v7, p1}, Lcom/coinbase/android/utils/CryptoUri;->setAddress(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v7}, Lcom/coinbase/android/utils/CryptoUri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "?"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/coinbase/android/MainActivity;->generateQR(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 656
    .local v5, "qr_image":Landroid/graphics/Bitmap;
    if-nez v5, :cond_3

    .line 677
    :goto_2
    return-void

    .line 652
    .end local v5    # "qr_image":Landroid/graphics/Bitmap;
    .end local v7    # "uri":Lcom/coinbase/android/utils/CryptoUri;
    :cond_2
    new-instance v7, Lcom/coinbase/android/utils/CryptoUri;

    sget-object v8, Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;->bitcoinScheme:Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;

    invoke-direct {v7, v8}, Lcom/coinbase/android/utils/CryptoUri;-><init>(Lcom/coinbase/android/utils/CryptoUri$CryptoCurrency;)V

    .restart local v7    # "uri":Lcom/coinbase/android/utils/CryptoUri;
    goto :goto_1

    .line 659
    .restart local v5    # "qr_image":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 660
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v8, v11, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 661
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 663
    .local v1, "bitmapdata":[B
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/coinbase/zxing/client/android/CaptureActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 664
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "com.coinbase.zxing.client.android.SCAN"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string v8, "SCAN_MODE"

    const-string v9, "QR_CODE_MODE"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const-string v8, "CaptureActivity_QR_Code_Text"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string v8, "CaptureActivity_Explanation_Text"

    invoke-virtual {v4, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    iget-object v8, p0, Lcom/coinbase/android/MainActivity;->mTransactionsFragment:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v8}, Lcom/coinbase/android/transactions/TransactionsFragment;->getAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v12}, Lcom/coinbase/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 670
    const v8, 0x7f0702e6

    invoke-virtual {p0, v8}, Lcom/coinbase/android/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 671
    .restart local v6    # "text":Ljava/lang/String;
    const-string v8, "PROMPT_MESSAGE"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    .end local v6    # "text":Ljava/lang/String;
    :cond_4
    const-string v8, "CaptureActivity_QR_Code_Bitmap"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 675
    invoke-virtual {p0, v4, v11}, Lcom/coinbase/android/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 676
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v8

    const-string v9, "Event - Scan QR"

    new-array v10, v11, [Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 641
    .end local v1    # "bitmapdata":[B
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "qr_image":Landroid/graphics/Bitmap;
    .end local v7    # "uri":Lcom/coinbase/android/utils/CryptoUri;
    .restart local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method public updateTitle()V
    .locals 4

    .prologue
    .line 396
    iget-object v2, p0, Lcom/coinbase/android/MainActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->isSlidingMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    :try_start_0
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->supportInvalidateOptionsMenu()V

    .line 418
    return-void

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 403
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :cond_0
    iget-boolean v2, p0, Lcom/coinbase/android/MainActivity;->mInTransactionDetailsMode:Z

    if-eqz v2, :cond_1

    .line 405
    :try_start_1
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const v3, 0x7f07025d

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 406
    :catch_1
    move-exception v1

    .line 407
    .restart local v1    # "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 410
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/MainActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 412
    .local v0, "index":I
    :try_start_2
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    iget-object v2, p0, Lcom/coinbase/android/MainActivity;->mFragments:[Lcom/coinbase/android/CoinbaseFragment;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    const-string v2, "Error"

    :goto_1
    invoke-virtual {v3, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 413
    :catch_2
    move-exception v1

    .line 414
    .restart local v1    # "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/coinbase/android/MainActivity;->mFragments:[Lcom/coinbase/android/CoinbaseFragment;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/coinbase/android/CoinbaseFragment;->getTitle()Landroid/text/SpannableStringBuilder;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    goto :goto_1
.end method
