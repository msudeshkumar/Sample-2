.class public Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "PlaidAccountLoginActivity.java"


# static fields
.field private static final HINT_ANIM_ROTATION:I = 0xf

.field public static final INSTITUTION:Ljava/lang/String; = "PlaidAccountLoginActivity_Institution"

.field public static final MANUAL:Ljava/lang/String; = "manual"


# instance fields
.field mAccountHint:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0109
    .end annotation
.end field

.field mChequeView:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0107
    .end annotation
.end field

.field mOverlay:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0106
    .end annotation
.end field

.field private mOverlayClickListener:Landroid/view/View$OnClickListener;

.field mRoutingHint:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0108
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    .line 188
    new-instance v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity$3;-><init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;)V

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mOverlayClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public hideRoutingDetails()V
    .locals 14

    .prologue
    const v11, 0x7f040001

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e0001

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 147
    .local v8, "duration":I
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mOverlay:Landroid/view/View;

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 148
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity$2;

    invoke-direct {v2, p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity$2;-><init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;)V

    invoke-virtual {v7, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 169
    int-to-long v12, v8

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 170
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 172
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->getHeight(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v10, v1, v1, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 173
    .local v10, "translateAnim":Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x41700000    # 15.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 175
    .local v0, "rotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 176
    .local v9, "set":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 177
    int-to-long v2, v8

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 178
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 179
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 181
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mChequeView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 182
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mRoutingHint:Landroid/view/View;

    invoke-static {p0, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mAccountHint:Landroid/view/View;

    invoke-static {p0, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mOverlay:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-void

    .line 147
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected initToolbar()V
    .locals 4

    .prologue
    const v3, 0x7f0d00b1

    .line 95
    invoke-virtual {p0, v3}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {p0, v3}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 97
    .local v1, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v1}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 98
    new-instance v2, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity$1;-><init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v1    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mOverlay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->hideRoutingDetails()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d00fe

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 202
    .local v0, "f":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    if-eqz v1, :cond_2

    .line 203
    check-cast v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onBackPressed()V

    goto :goto_0

    .line 207
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_2
    instance-of v1, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    if-eqz v1, :cond_0

    .line 208
    check-cast v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 50
    const/4 p1, 0x0

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v6, 0x7f03002c

    invoke-virtual {p0, v6}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->initToolbar()V

    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, "institution":Lcom/coinbase/api/internal/entity/Institution;
    const/4 v5, 0x0

    .line 60
    .local v5, "showManual":Z
    const/4 v4, 0x0

    .line 62
    .local v4, "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 64
    .local v2, "gson":Lcom/google/gson/Gson;
    if-eqz v0, :cond_3

    .line 65
    const-string v6, "PlaidAccountLoginActivity_Institution"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    const-string v6, "PlaidAccountLoginActivity_Institution"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .end local v3    # "institution":Lcom/coinbase/api/internal/entity/Institution;
    check-cast v3, Lcom/coinbase/api/internal/entity/Institution;

    .line 67
    .restart local v3    # "institution":Lcom/coinbase/api/internal/entity/Institution;
    :cond_1
    const-string v6, "payment_method"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    const-string v6, "payment_method"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v2, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    check-cast v4, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 69
    .restart local v4    # "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    :cond_2
    const-string v6, "manual"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 73
    :cond_3
    if-eqz v5, :cond_5

    .line 74
    if-eqz v4, :cond_4

    .line 75
    invoke-static {v4}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->newInstance(Lcom/coinbase/v2/models/paymentMethods/Data;)Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    move-result-object v1

    .line 85
    .local v1, "f":Landroid/support/v4/app/Fragment;
    :goto_0
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    .line 86
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f0d00fe

    .line 87
    invoke-virtual {v6, v7, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 88
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 90
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->supportLandscapeOnTablet()V

    .line 91
    return-void

    .line 78
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_4
    new-instance v1, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-direct {v1}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;-><init>()V

    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 82
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :cond_5
    invoke-static {v3}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->newInstance(Lcom/coinbase/api/internal/entity/Institution;)Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    move-result-object v1

    .restart local v1    # "f":Landroid/support/v4/app/Fragment;
    goto :goto_0
.end method

.method public showManualLogin()V
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0d00fe

    new-instance v2, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-direct {v2}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;-><init>()V

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "manual"

    .line 117
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 119
    return-void
.end method

.method public showRoutingDetails()V
    .locals 14

    .prologue
    const/high16 v11, 0x7f040000

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x10e0001

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 123
    .local v8, "duration":I
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mOverlay:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mOverlay:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 125
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mOverlay:Landroid/view/View;

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 126
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v12, v8

    invoke-virtual {v7, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 127
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 129
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->getHeight(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-direct {v10, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 130
    .local v10, "translateAnim":Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3e900000    # -15.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 132
    .local v0, "rotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 133
    .local v9, "set":Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 134
    int-to-long v2, v8

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 135
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 136
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 138
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mChequeView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mRoutingHint:Landroid/view/View;

    invoke-static {p0, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mAccountHint:Landroid/view/View;

    invoke-static {p0, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mOverlay:Landroid/view/View;

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mOverlayClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void

    .line 125
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
