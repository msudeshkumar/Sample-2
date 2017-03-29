.class public Lcom/coinbase/android/accounts/AccountsFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "AccountsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/accounts/AccountsFragment$ParentActivity;
    }
.end annotation


# instance fields
.field protected mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field selectedIndex:I

.field widgetMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/coinbase/android/accounts/AccountsFragment;->widgetMode:Z

    .line 28
    iput v0, p0, Lcom/coinbase/android/accounts/AccountsFragment;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f070065

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 37
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, p0, Lcom/coinbase/android/accounts/AccountsFragment;->widgetMode:Z

    .line 39
    iget-object v5, p0, Lcom/coinbase/android/accounts/AccountsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v1

    .line 40
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    iget-object v5, p0, Lcom/coinbase/android/accounts/AccountsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->getActiveAccountId()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "activeAccountId":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 44
    .local v0, "accountNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 45
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v5}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    iput v4, p0, Lcom/coinbase/android/accounts/AccountsFragment;->selectedIndex:I

    .line 48
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v5}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 37
    .end local v0    # "accountNames":[Ljava/lang/String;
    .end local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    .end local v2    # "activeAccountId":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "widgetMode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 51
    .restart local v0    # "accountNames":[Ljava/lang/String;
    .restart local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    .restart local v2    # "activeAccountId":Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_2
    iget v5, p0, Lcom/coinbase/android/accounts/AccountsFragment;->selectedIndex:I

    new-instance v6, Lcom/coinbase/android/accounts/AccountsFragment$3;

    invoke-direct {v6, p0}, Lcom/coinbase/android/accounts/AccountsFragment$3;-><init>(Lcom/coinbase/android/accounts/AccountsFragment;)V

    invoke-virtual {v3, v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07019f

    new-instance v7, Lcom/coinbase/android/accounts/AccountsFragment$2;

    invoke-direct {v7, p0, v1}, Lcom/coinbase/android/accounts/AccountsFragment$2;-><init>(Lcom/coinbase/android/accounts/AccountsFragment;Ljava/util/List;)V

    .line 58
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0700b4

    new-instance v7, Lcom/coinbase/android/accounts/AccountsFragment$1;

    invoke-direct {v7, p0}, Lcom/coinbase/android/accounts/AccountsFragment$1;-><init>(Lcom/coinbase/android/accounts/AccountsFragment;)V

    .line 67
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
