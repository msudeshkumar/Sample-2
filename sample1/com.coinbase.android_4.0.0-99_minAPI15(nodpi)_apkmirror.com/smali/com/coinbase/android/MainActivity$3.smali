.class Lcom/coinbase/android/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/MainActivity;->syncAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/MainActivity;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/coinbase/android/MainActivity$3;->this$0:Lcom/coinbase/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException()V
    .locals 0

    .prologue
    .line 787
    return-void
.end method

.method public onFinally()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/coinbase/android/MainActivity$3;->this$0:Lcom/coinbase/android/MainActivity;

    const/4 v1, 0x0

    # setter for: Lcom/coinbase/android/MainActivity;->mSyncAccountsTask:Lcom/coinbase/android/task/SyncAccountsTask;
    invoke-static {v0, v1}, Lcom/coinbase/android/MainActivity;->access$002(Lcom/coinbase/android/MainActivity;Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask;

    .line 792
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 783
    return-void
.end method
