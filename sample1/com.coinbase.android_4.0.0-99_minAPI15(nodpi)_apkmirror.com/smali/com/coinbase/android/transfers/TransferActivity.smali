.class public Lcom/coinbase/android/transfers/TransferActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "TransferActivity.java"

# interfaces
.implements Lcom/coinbase/android/transfers/TransferAmountFragment$TransferFragmentListener;


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "TransferActivity_Account"

.field public static final ADDRESS:Ljava/lang/String; = "TransferActivity_Address"

.field public static final AMOUNT:Ljava/lang/String; = "TransferActivity_Amount"

.field public static final BTCAMOUNT:Ljava/lang/String; = "TransferActivity_btcAmoung"

.field public static final CRYPTO_URI:Ljava/lang/String; = "TransferActivity_BitcoinURI"

.field public static final MESSAGE:Ljava/lang/String; = "TransferActivity_Message"

.field public static final TRANSFER_TYPE:Ljava/lang/String; = "TransferActivity_Transfer_Type"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAmount:Ljava/math/BigDecimal;

.field private mMessage:Ljava/lang/String;

.field private mSelectedAccount:Lcom/coinbase/v2/models/account/Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method

.method private parseCryptoUri(Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    invoke-static {p1}, Lcom/coinbase/android/utils/CryptoUri;->parse(Ljava/lang/String;)Lcom/coinbase/android/utils/CryptoUri;

    move-result-object v0

    .line 116
    .local v0, "cryptoUri":Lcom/coinbase/android/utils/CryptoUri;
    invoke-virtual {v0}, Lcom/coinbase/android/utils/CryptoUri;->getAmount()Ljava/math/BigDecimal;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferActivity;->mAmount:Ljava/math/BigDecimal;

    .line 117
    invoke-virtual {v0}, Lcom/coinbase/android/utils/CryptoUri;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferActivity;->mMessage:Ljava/lang/String;

    .line 118
    invoke-virtual {v0}, Lcom/coinbase/android/utils/CryptoUri;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferActivity;->mAddress:Ljava/lang/String;
    :try_end_0
    .catch Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "cryptoUri":Lcom/coinbase/android/utils/CryptoUri;
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferActivity;->mAddress:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 124
    const-string v2, "Coinbase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse URI! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 121
    .local v1, "ex":Lcom/coinbase/android/utils/CryptoUri$InvalidCryptoUriException;
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferActivity;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->finish()V

    .line 144
    const v0, 0x7f04001c

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/transfers/TransferActivity;->overridePendingTransition(II)V

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferActivity;->supportLandscapeOnTablet()V

    .line 44
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v2, 0x7f03002a

    invoke-virtual {p0, v2}, Lcom/coinbase/android/transfers/TransferActivity;->setContentView(I)V

    .line 48
    const v2, 0x7f0d00b1

    invoke-virtual {p0, v2}, Lcom/coinbase/android/transfers/TransferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 49
    .local v1, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v1}, Lcom/coinbase/android/transfers/TransferActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 50
    new-instance v2, Lcom/coinbase/android/transfers/TransferActivity$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/transfers/TransferActivity$1;-><init>(Lcom/coinbase/android/transfers/TransferActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPostResume()V
    .locals 13

    .prologue
    const v12, 0x7f0d00fe

    const/4 v4, 0x0

    .line 72
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onPostResume()V

    .line 75
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 80
    .local v7, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "TransferActivity_Account"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v7, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/account/Data;

    iput-object v1, p0, Lcom/coinbase/android/transfers/TransferActivity;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 82
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "TransferActivity_Transfer_Type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    .line 83
    .local v2, "transferType":Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "TransferActivity_BitcoinURI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "uri":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 87
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "com.coinbase.android.pin.ACTION_CANCEL"

    invoke-interface {v10, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 89
    .local v8, "pinCancelled":Z
    if-eqz v8, :cond_2

    .line 90
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 91
    .local v9, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "com.coinbase.android.pin.ACTION_CANCEL"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferActivity;->finish()V

    .line 97
    .end local v8    # "pinCancelled":Z
    .end local v9    # "preferences":Landroid/content/SharedPreferences;
    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferActivity;->mAmount:Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    .line 98
    const-string v1, "BTC"

    invoke-static {v1}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v1

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferActivity;->mAmount:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 99
    .local v0, "selectedAmount":Lorg/joda/money/BigMoney;
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferActivity;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferActivity;->mAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/coinbase/android/transfers/TransferActivity;->mMessage:Ljava/lang/String;

    move-object v5, v0

    invoke-static/range {v0 .. v5}, Lcom/coinbase/android/transfers/TransferSendFragment;->newInstance(Lorg/joda/money/BigMoney;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;Ljava/lang/String;Ljava/lang/String;Lorg/joda/money/BigMoney;)Lcom/coinbase/android/transfers/TransferSendFragment;

    move-result-object v6

    .line 101
    .local v6, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v12, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 94
    .end local v0    # "selectedAmount":Lorg/joda/money/BigMoney;
    .end local v6    # "f":Landroid/support/v4/app/Fragment;
    .restart local v8    # "pinCancelled":Z
    .restart local v10    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    invoke-direct {p0, v11}, Lcom/coinbase/android/transfers/TransferActivity;->parseCryptoUri(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    .end local v8    # "pinCancelled":Z
    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferActivity;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 108
    invoke-static {v3, v2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->newInstance(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;)Lcom/coinbase/android/transfers/TransferAmountFragment;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0
.end method

.method public showTransferFragment(Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;Lorg/joda/money/BigMoney;Lorg/joda/money/BigMoney;)V
    .locals 7
    .param p1, "type"    # Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;
    .param p2, "selectedAmount"    # Lorg/joda/money/BigMoney;
    .param p3, "selectedBTCAmount"    # Lorg/joda/money/BigMoney;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferActivity;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferActivity;->mAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/coinbase/android/transfers/TransferActivity;->mMessage:Ljava/lang/String;

    move-object v0, p2

    move-object v2, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coinbase/android/transfers/TransferSendFragment;->newInstance(Lorg/joda/money/BigMoney;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;Ljava/lang/String;Ljava/lang/String;Lorg/joda/money/BigMoney;)Lcom/coinbase/android/transfers/TransferSendFragment;

    move-result-object v6

    .line 133
    .local v6, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0d00fe

    .line 135
    invoke-virtual {v0, v1, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "transfer"

    .line 136
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 138
    return-void
.end method
