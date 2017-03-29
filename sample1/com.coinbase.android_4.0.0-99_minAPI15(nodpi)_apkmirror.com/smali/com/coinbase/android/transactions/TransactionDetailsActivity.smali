.class public Lcom/coinbase/android/transactions/TransactionDetailsActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "TransactionDetailsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->finish()V

    .line 64
    const v0, 0x7f04001c

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->overridePendingTransition(II)V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x7f0d00fe

    .line 15
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v10, 0x7f03002a

    invoke-virtual {p0, v10}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->setContentView(I)V

    .line 18
    const v10, 0x7f0d00b1

    invoke-virtual {p0, v10}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/Toolbar;

    .line 19
    .local v7, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v7}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 20
    invoke-virtual {p0, v12}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 21
    .local v3, "content":Landroid/widget/FrameLayout;
    if-eqz v3, :cond_0

    .line 22
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_0
    new-instance v10, Lcom/coinbase/android/transactions/TransactionDetailsActivity$1;

    invoke-direct {v10, p0}, Lcom/coinbase/android/transactions/TransactionDetailsActivity$1;-><init>(Lcom/coinbase/android/transactions/TransactionDetailsActivity;)V

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    if-nez p1, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "transaction"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, "transaction":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 40
    .local v9, "transactionId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "accountId"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "accountId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "accountChangeId"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "accountChangeId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "paymentMethodName"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "paymentMethodName":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v2, "args":Landroid/os/Bundle;
    const-string v10, "transaction"

    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v10, "id"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v10, "accountId"

    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v10, "accountChangeId"

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v10, "paymentMethodName"

    invoke-virtual {v2, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v4, Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    invoke-direct {v4}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;-><init>()V

    .line 51
    .local v4, "fragment":Lcom/coinbase/android/transactions/TransactionDetailsFragment;
    invoke-virtual {v4, v2}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    .line 54
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    .line 55
    invoke-virtual {v10, v12, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    .line 56
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 58
    .end local v0    # "accountChangeId":Ljava/lang/String;
    .end local v1    # "accountId":Ljava/lang/String;
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v4    # "fragment":Lcom/coinbase/android/transactions/TransactionDetailsFragment;
    .end local v6    # "paymentMethodName":Ljava/lang/String;
    .end local v8    # "transaction":Ljava/lang/String;
    .end local v9    # "transactionId":Ljava/lang/String;
    :cond_1
    return-void

    .line 33
    :catch_0
    move-exception v5

    .line 34
    .local v5, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
