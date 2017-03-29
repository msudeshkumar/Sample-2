.class Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsUpdateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;Lcom/coinbase/android/transactions/TransactionsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/transactions/TransactionsFragment;
    .param p2, "x1"    # Lcom/coinbase/android/transactions/TransactionsFragment$1;

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated(Lcom/coinbase/android/event/AccountsUpdatedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/coinbase/android/event/AccountsUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 285
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mBus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->accountsUpdateObserver:Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->refreshComplete()V
    invoke-static {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$200(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    .line 313
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->refreshComplete()V
    invoke-static {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$200(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    .line 298
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    const v2, 0x7f0700d6

    invoke-virtual {v1, v2}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, p1, Lcom/coinbase/android/event/AccountsUpdatedEvent;->account:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v0, v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->setAccount(Lcom/coinbase/v2/models/account/Data;)V

    .line 306
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mParentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransferButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v0, v3}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->setEnabled(Z)V

    .line 312
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$AccountsUpdateObserver;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->refresh()V

    goto :goto_0
.end method
