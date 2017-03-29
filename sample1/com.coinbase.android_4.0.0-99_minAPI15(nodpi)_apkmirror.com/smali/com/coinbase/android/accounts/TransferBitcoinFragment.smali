.class public Lcom/coinbase/android/accounts/TransferBitcoinFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "TransferBitcoinFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mFromAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mToAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/accounts/TransferBitcoinFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->initToAccounts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/accounts/TransferBitcoinFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getDefaultToAccountPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Ljava/lang/String;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/account/Data;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/accounts/TransferBitcoinFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/coinbase/v2/models/account/Data;
    .param p3, "x3"    # Lcom/coinbase/v2/models/account/Data;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->onSubmit(Ljava/lang/String;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/account/Data;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coinbase/android/accounts/TransferBitcoinFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->onCancel()V

    return-void
.end method

.method static synthetic access$400(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/accounts/TransferBitcoinFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->handleRequestError(Ljava/lang/String;)V

    return-void
.end method

.method private getDefaultToAccountPosition()I
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mToAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {v1}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mToAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/account/Data;

    invoke-static {v1}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v1

    sget-object v2, Lcom/coinbase/v2/models/account/Data$Type;->VAULT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v1, v2, :cond_0

    .line 183
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 178
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getPositiveButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    const v0, 0x7f070264

    invoke-virtual {p0, v0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleRequestError(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f070083

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    return-void
.end method

.method private initFromAccounts()V
    .locals 6

    .prologue
    .line 134
    iget-object v3, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mFromAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    if-nez v3, :cond_2

    .line 135
    new-instance v3, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f030095

    invoke-direct {v3, p0, v4, v5}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;-><init>(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mFromAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    .line 139
    :goto_0
    iget-object v3, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v1

    .line 140
    .local v1, "mAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    iget-object v3, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mFromAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {v3}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->clear()V

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 143
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->ETH:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    invoke-virtual {v5}, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v2

    .line 148
    .local v2, "type":Lcom/coinbase/v2/models/account/Data$Type;
    sget-object v4, Lcom/coinbase/v2/models/account/Data$Type;->WALLET:Lcom/coinbase/v2/models/account/Data$Type;

    if-eq v2, v4, :cond_1

    sget-object v4, Lcom/coinbase/v2/models/account/Data$Type;->MULTISIG:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v2, v4, :cond_0

    .line 150
    :cond_1
    iget-object v4, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mFromAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {v4, v0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 137
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    .end local v1    # "mAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    .end local v2    # "type":Lcom/coinbase/v2/models/account/Data$Type;
    :cond_2
    iget-object v3, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mFromAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {v3}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->clear()V

    goto :goto_0

    .line 153
    .restart local v1    # "mAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    :cond_3
    return-void
.end method

.method private initToAccounts(Ljava/lang/String;)V
    .locals 5
    .param p1, "selectedFromAccountId"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mToAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    if-nez v2, :cond_1

    .line 157
    new-instance v2, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f030095

    invoke-direct {v2, p0, v3, v4}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;-><init>(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mToAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    .line 161
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v1

    .line 162
    .local v1, "mAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    iget-object v2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mToAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {v2}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->clear()V

    .line 165
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 166
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->ETH:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    invoke-virtual {v4}, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v3

    sget-object v4, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-eq v3, v4, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    iget-object v3, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mToAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {v3, v0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 159
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    .end local v1    # "mAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mToAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {v2}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->clear()V

    goto :goto_0

    .line 175
    .restart local v1    # "mAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    :cond_2
    return-void
.end method

.method private onCancel()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method private onSubmit(Ljava/lang/String;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/account/Data;Ljava/lang/String;)V
    .locals 7
    .param p1, "amountEntered"    # Ljava/lang/String;
    .param p2, "fromAccount"    # Lcom/coinbase/v2/models/account/Data;
    .param p3, "toAccount"    # Lcom/coinbase/v2/models/account/Data;
    .param p4, "notes"    # Ljava/lang/String;

    .prologue
    .line 195
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 196
    .local v2, "enteredValue":D
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 197
    .local v0, "amount":Ljava/math/BigDecimal;
    iget-object v4, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bits"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    sget-object v4, Lcom/coinbase/android/utils/MoneyUtils;->BTC_BITS:Ljava/math/BigDecimal;

    const/16 v5, 0x8

    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v4, v5, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 200
    :cond_0
    invoke-virtual {p2}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6, p4}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->transferMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "amount":Ljava/math/BigDecimal;
    .end local v2    # "enteredValue":D
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 204
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f070124

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 202
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 205
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private transferMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "toAccountId"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/String;
    .param p4, "notes"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f07027d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 212
    .local v0, "dialog":Landroid/app/ProgressDialog;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "to"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v2, "amount"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v2, "currency"

    const-string v3, "BTC"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v2, "description"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/accounts/TransferBitcoinFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$4;-><init>(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->transferMoney(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 240
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 67
    .local v9, "li":Landroid/view/LayoutInflater;
    const v0, 0x7f030092

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 69
    .local v10, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->activity:Landroid/app/Activity;

    .line 71
    const v0, 0x7f0d0298

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 72
    .local v7, "amountLabel":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bits"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f07007e

    .line 73
    invoke-virtual {p0, v0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "label":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v0, 0x7f0d0299

    .line 78
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 80
    .local v2, "amountInput":Landroid/widget/EditText;
    const v0, 0x7f0d029b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 82
    .local v5, "notesInput":Landroid/widget/EditText;
    invoke-direct {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->initFromAccounts()V

    .line 83
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mFromAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mFromAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->initToAccounts(Ljava/lang/String;)V

    .line 87
    :cond_0
    const v0, 0x7f0d0295

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 88
    .local v3, "fromSpinner":Landroid/widget/Spinner;
    const v0, 0x7f0d0297

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 90
    .local v4, "toSpinner":Landroid/widget/Spinner;
    new-instance v0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$1;

    invoke-direct {v0, p0, v4}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$1;-><init>(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 102
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mFromAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 103
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mToAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 105
    invoke-direct {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getDefaultToAccountPosition()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 107
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    .local v6, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-direct {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-direct {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;-><init>(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;)V

    invoke-virtual {v6, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    const v0, 0x7f0700b4

    new-instance v1, Lcom/coinbase/android/accounts/TransferBitcoinFragment$3;

    invoke-direct {v1, p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$3;-><init>(Lcom/coinbase/android/accounts/TransferBitcoinFragment;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 73
    .end local v2    # "amountInput":Landroid/widget/EditText;
    .end local v3    # "fromSpinner":Landroid/widget/Spinner;
    .end local v4    # "toSpinner":Landroid/widget/Spinner;
    .end local v5    # "notesInput":Landroid/widget/EditText;
    .end local v6    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "label":Ljava/lang/String;
    :cond_1
    const v0, 0x7f07007f

    .line 74
    invoke-virtual {p0, v0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 293
    invoke-super {p0}, Lroboguice/fragment/RoboDialogFragment;->onStart()V

    .line 295
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 296
    .local v1, "okButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 298
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 299
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 300
    return-void
.end method
