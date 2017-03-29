.class public Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "AccountSettingsDialogFragment.java"


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "AccountSettingsDialogFragment_Account"


# instance fields
.field bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mAccount:Lcom/coinbase/v2/models/account/Data;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;
    .locals 5
    .param p0, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 51
    new-instance v1, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    invoke-direct {v1}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;-><init>()V

    .line 52
    .local v1, "f":Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 54
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v3, "AccountSettingsDialogFragment_Account"

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method public deleteAccount()V
    .locals 5

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0700ed

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 151
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;-><init>(Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->deleteAccount(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 176
    return-void
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lroboguice/fragment/RoboDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 65
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "AccountSettingsDialogFragment_Account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/account/Data;

    iput-object v1, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    .line 68
    .end local v0    # "gson":Lcom/google/gson/Gson;
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "AccountSettingsDialogFragment needs an Account"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 76
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v10, "active_account_id"

    const/4 v11, 0x0

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "mPrimaryAccountId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 79
    .local v2, "li":Landroid/view/LayoutInflater;
    const v10, 0x7f030057

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 81
    .local v7, "rootView":Landroid/view/View;
    const v10, 0x7f0d0168

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 82
    .local v8, "title":Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v11}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-static {v11}, Lcom/coinbase/android/utils/AccountUtils;->getAccountBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v11

    iget-object v12, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 83
    invoke-interface {v12}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    sget-object v14, Lcom/coinbase/android/utils/MoneyUtils$Options;->INCLUDE_PARENTHESIS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 84
    invoke-static {v13, v14}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v13

    .line 82
    invoke-static {v11, v12, v13}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "titleString":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v10, 0x7f0d0169

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 89
    .local v4, "options":Landroid/widget/RadioGroup;
    const v10, 0x7f0d016a

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 90
    .local v1, "deleteButton":Landroid/widget/RadioButton;
    iget-object v10, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v10}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    .line 91
    invoke-static {v10}, Lcom/coinbase/android/utils/AccountUtils;->getAccountBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v10

    invoke-virtual {v10}, Lorg/joda/money/Money;->isPositive()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    .line 92
    invoke-virtual {v10}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->ETH:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    invoke-virtual {v11}, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v10, 0x1

    .line 90
    :goto_0
    invoke-virtual {v1, v10}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 94
    const v10, 0x7f0d016c

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 95
    .local v6, "primaryButton":Landroid/widget/RadioButton;
    iget-object v10, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v10}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    .line 96
    invoke-static {v10}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v10

    sget-object v11, Lcom/coinbase/v2/models/account/Data$Type;->WALLET:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    .line 97
    invoke-virtual {v10}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->ETH:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    invoke-virtual {v11}, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x1

    .line 95
    :goto_1
    invoke-virtual {v6, v10}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 99
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 101
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 102
    const v10, 0x7f07019f

    new-instance v11, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$1;

    invoke-direct {v11, p0, v4}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$1;-><init>(Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;Landroid/widget/RadioGroup;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    const v10, 0x7f0700b4

    new-instance v11, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$2;

    invoke-direct {v11, p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$2;-><init>(Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    .line 92
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "primaryButton":Landroid/widget/RadioButton;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 97
    .restart local v6    # "primaryButton":Landroid/widget/RadioButton;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Lroboguice/fragment/RoboDialogFragment;->onStart()V

    .line 121
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 122
    .local v1, "okButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 124
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 125
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 126
    return-void
.end method

.method public onSubmit(I)V
    .locals 4
    .param p1, "optionId"    # I

    .prologue
    .line 133
    packed-switch p1, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->deleteAccount()V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v2, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coinbase/android/accounts/RenameAccountFragment;->newInstance(Ljava/lang/String;)Lcom/coinbase/android/accounts/RenameAccountFragment;

    move-result-object v0

    .line 139
    .local v0, "f":Lcom/coinbase/android/accounts/RenameAccountFragment;
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "Rename account"

    invoke-virtual {v0, v2, v3}, Lcom/coinbase/android/accounts/RenameAccountFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v0    # "f":Lcom/coinbase/android/accounts/RenameAccountFragment;
    :pswitch_2
    new-instance v1, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;

    invoke-virtual {p0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    .local v1, "task":Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;
    invoke-virtual {v1}, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->setPrimaryAccount()V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d016a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
