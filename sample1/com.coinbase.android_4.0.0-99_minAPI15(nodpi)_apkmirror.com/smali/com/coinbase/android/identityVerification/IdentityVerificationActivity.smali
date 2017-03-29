.class public Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "IdentityVerificationActivity.java"

# interfaces
.implements Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;


# static fields
.field public static final EXTRA_ADD_PROFILE:Ljava/lang/String; = "EXTRA_ADD_PROFILE"

.field public static final JUMIO_DOCUMENT_INDEX_KET:Ljava/lang/String; = "jumio_doc_index_key"

.field public static final JUMIO_DOCUMENT_KEY:Ljava/lang/String; = "jumio_doc_key"

.field private static final KEY_BACK_BITMAP:Ljava/lang/String; = "back_bitmap"

.field private static final KEY_FRONT_BITMAP:Ljava/lang/String; = "front_bitmap"

.field public static final SHOULD_NAVIGATE_TO_DEBIT:Ljava/lang/String; = "SHOULD_NAVIGATE_TO_DEBIT"


# instance fields
.field private mBackBitmap:Landroid/graphics/Bitmap;

.field private mFrontBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->updateTitle(Z)V

    return-void
.end method

.method private updateTitle(Z)V
    .locals 2
    .param p1, "isList"    # Z

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f070120

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f07028d

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getBackBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->mBackBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDisplayName(Lcom/coinbase/api/internal/entity/JumioProfileType;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Lcom/coinbase/api/internal/entity/JumioProfileType;

    .prologue
    .line 127
    sget-object v0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$2;->$SwitchMap$com$coinbase$api$internal$entity$JumioProfileType:[I

    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/JumioProfileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 135
    const-string v0, ""

    :goto_0
    return-object v0

    .line 129
    :pswitch_0
    const v0, 0x7f070100

    invoke-virtual {p0, v0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_1
    const v0, 0x7f0701a7

    invoke-virtual {p0, v0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_2
    const v0, 0x7f070116

    invoke-virtual {p0, v0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getFrontBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->mFrontBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->supportLandscapeOnTablet()V

    .line 39
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v5, 0x7f03002a

    invoke-virtual {p0, v5}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->setContentView(I)V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    const-string v5, "front_bitmap"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 44
    const-string v5, "back_bitmap"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->initToolbar()V

    .line 49
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EXTRA_ADD_PROFILE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 50
    .local v0, "addProfile":Z
    if-eqz v0, :cond_2

    new-instance v4, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-direct {v4}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;-><init>()V

    .line 53
    .local v4, "newFragment":Landroid/support/v4/app/Fragment;
    :goto_0
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    .line 54
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f0d00fe

    .line 55
    invoke-virtual {v5, v6, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 56
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 58
    instance-of v2, v4, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    .line 59
    .local v2, "firstIsTitle":Z
    invoke-direct {p0, v2}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->updateTitle(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    new-instance v6, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$1;

    invoke-direct {v6, p0, v2}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$1;-><init>(Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;Z)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    sget-object v5, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->IDENTITY_VERIFICATION_SKIP_SELECTOR:Ljava/lang/String;

    .line 77
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->verificationProfileAction(Landroid/content/Intent;)V

    .line 81
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 50
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "firstIsTitle":Z
    .end local v4    # "newFragment":Landroid/support/v4/app/Fragment;
    :cond_2
    new-instance v4, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    invoke-direct {v4}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;-><init>()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onDestroy()V

    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 88
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SHOULD_NAVIGATE_TO_DEBIT"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "front_bitmap"

    iget-object v1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    const-string v0, "back_bitmap"

    iget-object v1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->mBackBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    return-void
.end method

.method protected setBackBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "mBackBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 161
    return-void
.end method

.method protected setFrontBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "mFrontBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 153
    return-void
.end method

.method public verificationProfileAction(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 103
    .local v7, "nextFragment":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 106
    .local v6, "newClass":Ljava/lang/Class;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 107
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    .line 108
    .local v5, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 109
    .local v4, "extras":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 110
    .local v2, "doc":Lcom/coinbase/api/internal/entity/JumioDocument;
    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v5, v4}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    .line 115
    invoke-virtual {v8}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v8

    const v9, 0x7f0d00fe

    .line 116
    invoke-virtual {v8, v9, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v8

    .line 117
    invoke-virtual {v8, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v8

    .line 118
    invoke-virtual {v8}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 119
    instance-of v8, v5, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    invoke-direct {p0, v8}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->updateTitle(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v2    # "doc":Lcom/coinbase/api/internal/entity/JumioDocument;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v6    # "newClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->finish()V

    goto :goto_0
.end method
