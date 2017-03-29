.class public Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "DelayedTransactionDialogFragment.java"


# static fields
.field public static ACCOUNT:Ljava/lang/String;

.field public static TRANSACTION:Ljava/lang/String;


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mDbManager:Lcom/coinbase/android/db/DatabaseManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mTransaction:Lcom/coinbase/v2/models/transactions/Data;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "DelayedTransactionDialogFragment_Transaction"

    sput-object v0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->TRANSACTION:Ljava/lang/String;

    .line 37
    const-string v0, "DelayedTransactionDialogFragment_Account"

    sput-object v0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->ACCOUNT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/coinbase/v2/models/transactions/Data;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/coinbase/android/db/DatabaseManager;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/squareup/otto/Bus;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mBus:Lcom/squareup/otto/Bus;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lroboguice/fragment/RoboDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->TRANSACTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "jsonObject":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/transactions/Data;

    iput-object v1, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;

    .line 56
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->ACCOUNT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mAccountId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700e7

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700e5

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700e6

    new-instance v2, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;-><init>(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)V

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$1;-><init>(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)V

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
