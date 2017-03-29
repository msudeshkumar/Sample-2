.class Lcom/coinbase/android/pricechart/ChartsFragment$6;
.super Ljava/lang/Object;
.source "ChartsFragment.java"

# interfaces
.implements Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/pricechart/ChartsFragment;->onSwitchedTo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pricechart/ChartsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pricechart/ChartsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/pricechart/ChartsFragment;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/coinbase/android/pricechart/ChartsFragment$6;->this$0:Lcom/coinbase/android/pricechart/ChartsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/coinbase/android/pricechart/ChartsFragment$6;->this$0:Lcom/coinbase/android/pricechart/ChartsFragment;

    # invokes: Lcom/coinbase/android/pricechart/ChartsFragment;->addEmptyView()V
    invoke-static {v0}, Lcom/coinbase/android/pricechart/ChartsFragment;->access$100(Lcom/coinbase/android/pricechart/ChartsFragment;)V

    .line 233
    return-void
.end method

.method public onFinally()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/coinbase/android/pricechart/ChartsFragment$6;->this$0:Lcom/coinbase/android/pricechart/ChartsFragment;

    # invokes: Lcom/coinbase/android/pricechart/ChartsFragment;->updateAccounts()V
    invoke-static {v0}, Lcom/coinbase/android/pricechart/ChartsFragment;->access$200(Lcom/coinbase/android/pricechart/ChartsFragment;)V

    .line 238
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method
