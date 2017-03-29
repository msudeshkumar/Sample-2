.class Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;
.super Ljava/lang/Object;
.source "DelayedTransactionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v7, 0x1

    .line 68
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    # getter for: Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;
    invoke-static {v4}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->access$000(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v4

    const-string v5, "pending"

    invoke-virtual {v4, v5}, Lcom/coinbase/v2/models/transactions/Data;->setStatus(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 70
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "format":Ljava/text/DateFormat;
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    # getter for: Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;
    invoke-static {v4}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->access$000(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v4

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coinbase/v2/models/transactions/Data;->setCreatedAt(Ljava/lang/String;)V

    .line 72
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    # getter for: Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;
    invoke-static {v4}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->access$000(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coinbase/v2/models/transactions/Data;->setId(Ljava/lang/String;)V

    .line 73
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    # getter for: Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;
    invoke-static {v4}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->access$000(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coinbase/v2/models/transactions/Data;->setDelayed(Ljava/lang/Boolean;)V

    .line 75
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    # getter for: Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;
    invoke-static {v4}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->access$100(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/coinbase/android/db/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 77
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    # getter for: Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mAccountId:Ljava/lang/String;
    invoke-static {v4}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->access$200(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    # getter for: Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;
    invoke-static {v5}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->access$000(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/coinbase/android/db/TransactionORM;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/coinbase/v2/models/transactions/Data;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    # getter for: Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;
    invoke-static {v4}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->access$100(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/coinbase/android/db/DatabaseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    .line 82
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    # getter for: Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mBus:Lcom/squareup/otto/Bus;
    invoke-static {v4}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->access$300(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/squareup/otto/Bus;

    move-result-object v4

    new-instance v5, Lcom/coinbase/android/event/TransferMadeEvent;

    iget-object v6, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    # getter for: Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mTransaction:Lcom/coinbase/v2/models/transactions/Data;
    invoke-static {v6}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->access$000(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/coinbase/android/event/TransferMadeEvent;-><init>(Lcom/coinbase/v2/models/transactions/Data;)V

    invoke-virtual {v4, v5}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 85
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    invoke-virtual {v4}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 86
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    invoke-virtual {v5}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/coinbase/android/transfers/ConnectivityChangeReceiver;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4, v7, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 90
    iget-object v4, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    invoke-virtual {v4}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 91
    return-void

    .line 79
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$2;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    # getter for: Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->mDbManager:Lcom/coinbase/android/db/DatabaseManager;
    invoke-static {v5}, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->access$100(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)Lcom/coinbase/android/db/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    throw v4
.end method
