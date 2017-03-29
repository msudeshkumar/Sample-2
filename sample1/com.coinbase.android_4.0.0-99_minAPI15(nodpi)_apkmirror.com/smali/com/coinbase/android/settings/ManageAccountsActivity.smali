.class public Lcom/coinbase/android/settings/ManageAccountsActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "ManageAccountsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x102000a
    .end annotation
.end field

.field mNewAccountButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00fd
    .end annotation
.end field

.field mPrimaryAccountId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/settings/ManageAccountsActivity;)Lcom/coinbase/api/LoginManager;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/settings/ManageAccountsActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    return-object v0
.end method

.method private initOptions()V
    .locals 3

    .prologue
    .line 94
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "active_account_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mPrimaryAccountId:Ljava/lang/String;

    .line 97
    new-instance v1, Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;

    iget-object v2, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;-><init>(Lcom/coinbase/android/settings/ManageAccountsActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mAdapter:Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;

    .line 99
    iget-object v1, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mAdapter:Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v1, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onAccountsUpdated(Lcom/coinbase/android/event/AccountsUpdatedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/coinbase/android/event/AccountsUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 182
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 183
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "active_account_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mPrimaryAccountId:Ljava/lang/String;

    .line 185
    iget-object v2, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mAdapter:Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;

    invoke-virtual {v2}, Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;->clear()V

    .line 186
    iget-object v2, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 187
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    iget-object v3, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mAdapter:Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;

    invoke-virtual {v3, v0}, Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mAdapter:Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;

    invoke-virtual {v2}, Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/coinbase/android/settings/ManageAccountsActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/coinbase/android/settings/ManageAccountsActivity;->initToolbar()V

    .line 66
    invoke-direct {p0}, Lcom/coinbase/android/settings/ManageAccountsActivity;->initOptions()V

    .line 68
    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, v3}, Lcom/coinbase/android/settings/ManageAccountsActivity;->setRequestedOrientation(I)V

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mNewAccountButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    new-instance v1, Lcom/coinbase/android/settings/ManageAccountsActivity$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/settings/ManageAccountsActivity$1;-><init>(Lcom/coinbase/android/settings/ManageAccountsActivity;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0, v3}, Lcom/coinbase/android/settings/ManageAccountsActivity;->setRequestedOrientation(I)V

    .line 91
    :goto_1
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0, v2}, Lcom/coinbase/android/settings/ManageAccountsActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0, v2}, Lcom/coinbase/android/settings/ManageAccountsActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/coinbase/android/settings/ManageAccountsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 147
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mAdapter:Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;

    invoke-virtual {v2, p3}, Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 140
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-static {v0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->newInstance(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    move-result-object v1

    .line 141
    .local v1, "f":Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;
    invoke-virtual {p0}, Lcom/coinbase/android/settings/ManageAccountsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "Account Settings"

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 159
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 154
    :pswitch_0
    new-instance v0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    invoke-direct {v0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;-><init>()V

    .line 155
    .local v0, "f":Lcom/coinbase/android/accounts/TransferBitcoinFragment;
    invoke-virtual {p0}, Lcom/coinbase/android/settings/ManageAccountsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "Transfer Bitcoin"

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Transfer Bitcoin"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 157
    const/4 v1, 0x1

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x7f0d0313
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onPause()V

    .line 171
    iget-object v0, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public onRefreshRequested(Lcom/coinbase/android/event/RefreshRequestedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/coinbase/android/event/RefreshRequestedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lcom/coinbase/android/task/SyncAccountsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/task/SyncAccountsTask;-><init>(Landroid/content/Context;Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;)V

    .line 177
    .local v0, "task":Lcom/coinbase/android/task/SyncAccountsTask;
    invoke-virtual {v0}, Lcom/coinbase/android/task/SyncAccountsTask;->syncAccounts()V

    .line 178
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onResume()V

    .line 165
    iget-object v0, p0, Lcom/coinbase/android/settings/ManageAccountsActivity;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 166
    return-void
.end method
