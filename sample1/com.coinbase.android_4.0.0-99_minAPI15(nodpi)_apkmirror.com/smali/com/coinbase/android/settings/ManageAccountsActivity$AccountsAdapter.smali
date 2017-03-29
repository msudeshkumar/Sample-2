.class Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ManageAccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/ManageAccountsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/v2/models/account/Data;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/settings/ManageAccountsActivity;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/settings/ManageAccountsActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/account/Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    iput-object p1, p0, Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;->this$0:Lcom/coinbase/android/settings/ManageAccountsActivity;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 107
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 111
    if-nez p2, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 113
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03001d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 116
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 117
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    const v2, 0x7f0d009d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 118
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountIcon(Lcom/coinbase/v2/models/account/Data;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    const v2, 0x7f0d009e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 121
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const v2, 0x7f0d009f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 126
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;->this$0:Lcom/coinbase/android/settings/ManageAccountsActivity;

    .line 127
    # getter for: Lcom/coinbase/android/settings/ManageAccountsActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;
    invoke-static {v4}, Lcom/coinbase/android/settings/ManageAccountsActivity;->access$000(Lcom/coinbase/android/settings/ManageAccountsActivity;)Lcom/coinbase/api/LoginManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 128
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    .line 125
    invoke-static {v3, v4, v5}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v2, 0x7f0d00a0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 131
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;->this$0:Lcom/coinbase/android/settings/ManageAccountsActivity;

    iget-object v4, v4, Lcom/coinbase/android/settings/ManageAccountsActivity;->mPrimaryAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/coinbase/android/settings/ManageAccountsActivity$AccountsAdapter;->this$0:Lcom/coinbase/android/settings/ManageAccountsActivity;

    const v4, 0x7f0701d5

    invoke-virtual {v3, v4}, Lcom/coinbase/android/settings/ManageAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-object p2

    .line 131
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method
