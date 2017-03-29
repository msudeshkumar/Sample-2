.class public abstract Lcom/coinbase/android/CoinbaseDrawerActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "CoinbaseDrawerActivity.java"

# interfaces
.implements Lcom/coinbase/android/ui/IToolbarDropShadow;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field contentArea:Landroid/view/ViewGroup;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00da
    .end annotation
.end field

.field protected mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field protected mDropShadow:Landroid/graphics/drawable/Drawable;

.field protected mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

.field protected mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mToolbarOverlay:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/coinbase/android/CoinbaseDrawerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/coinbase/android/CoinbaseDrawerActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/CoinbaseDrawerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/CoinbaseDrawerActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mToolbarOverlay:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public abstract getSelectedSection()Lcom/coinbase/android/ui/Mintent;
.end method

.method protected initDrawer()V
    .locals 15

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 105
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "account_first_launch"

    const/4 v1, 0x1

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 106
    .local v9, "firstLaunch":Z
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account_first_launch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    const v0, 0x7f0d00d8

    invoke-virtual {p0, v0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    .line 109
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f0200c8

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 111
    new-instance v0, Lcom/coinbase/android/CoinbaseDrawerActivity$1;

    iget-object v3, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    iget-object v4, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v5, 0x7f0700ff

    const v6, 0x7f0700fe

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/coinbase/android/CoinbaseDrawerActivity$1;-><init>(Lcom/coinbase/android/CoinbaseDrawerActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 124
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 127
    if-eqz v9, :cond_0

    .line 128
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d00db

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v13

    .line 133
    .local v13, "slidingDrawer":Landroid/support/v4/app/Fragment;
    invoke-virtual {v13}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v14

    .line 134
    .local v14, "slidingDrawerView":Landroid/view/View;
    sget-boolean v0, Lcom/coinbase/android/CoinbaseDrawerActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez v14, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    .end local v9    # "firstLaunch":Z
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    .end local v13    # "slidingDrawer":Landroid/support/v4/app/Fragment;
    .end local v14    # "slidingDrawerView":Landroid/view/View;
    :catch_0
    move-exception v10

    .line 101
    .local v10, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v10    # "npe":Ljava/lang/NullPointerException;
    .restart local v9    # "firstLaunch":Z
    .restart local v11    # "prefs":Landroid/content/SharedPreferences;
    .restart local v13    # "slidingDrawer":Landroid/support/v4/app/Fragment;
    .restart local v14    # "slidingDrawerView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 136
    .local v12, "shortestWidth":I
    int-to-double v0, v12

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int v7, v0

    .line 137
    .local v7, "dWidthCalc":I
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 138
    .local v8, "dWidthMax":I
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    return-void
.end method

.method protected isSlidingMenuShowing()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mSlidingMenu:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030023

    invoke-super {p0, v0}, Lcom/coinbase/android/CoinbaseActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f0d00b1

    invoke-virtual {p0, v0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 52
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mToolbarOverlay:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 55
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->initDrawer()V

    .line 57
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->contentArea:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mDropShadow:Landroid/graphics/drawable/Drawable;

    .line 58
    return-void
.end method

.method protected onDrawerClosed()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public onDrawerItemClicked(Lcom/coinbase/android/ui/Mintent;)V
    .locals 9
    .param p1, "mintent"    # Lcom/coinbase/android/ui/Mintent;

    .prologue
    const/4 v8, 0x0

    .line 184
    sget-object v3, Lcom/coinbase/android/ui/Mintent;->BANK_ACCOUNT:Lcom/coinbase/android/ui/Mintent;

    if-ne p1, v3, :cond_0

    .line 185
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/coinbase/android/CoinbaseDrawerActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v3

    const-string v4, "Event - Payment methods from navigation bar"

    new-array v5, v8, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 188
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    sget-object v3, Lcom/coinbase/android/ui/Mintent;->INVITE_FRIENDS:Lcom/coinbase/android/ui/Mintent;

    if-ne p1, v3, :cond_2

    .line 190
    const v3, 0x7f070086

    invoke-virtual {p0, v3}, Lcom/coinbase/android/CoinbaseDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x60

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    :cond_1
    new-instance v3, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;

    const v4, 0x7f070129

    invoke-virtual {p0, v4}, Lcom/coinbase/android/CoinbaseDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v3, v2}, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f070085

    .line 196
    invoke-virtual {p0, v5}, Lcom/coinbase/android/CoinbaseDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 197
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "user_id"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->setDeepLink(Landroid/net/Uri;)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;

    move-result-object v3

    .line 198
    invoke-virtual {v3}, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    .line 199
    .restart local v1    # "intent":Landroid/content/Intent;
    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/coinbase/android/CoinbaseDrawerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 200
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v3

    const-string v4, "Event - App invite initiated"

    new-array v5, v8, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "message":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/coinbase/android/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    const-string v3, "drawerIndex"

    iget-object v4, p1, Lcom/coinbase/android/ui/Mintent;->section:Lcom/coinbase/android/utils/Section;

    invoke-virtual {v4}, Lcom/coinbase/android/utils/Section;->getIndex()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    iget-object v3, p1, Lcom/coinbase/android/ui/Mintent;->section:Lcom/coinbase/android/utils/Section;

    invoke-virtual {v3}, Lcom/coinbase/android/utils/Section;->getIndex()I

    move-result v3

    if-nez v3, :cond_3

    .line 206
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 207
    .local v0, "gson":Lcom/google/gson/Gson;
    const-string v3, "data"

    iget-object v4, p1, Lcom/coinbase/android/ui/Mintent;->data:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    .end local v0    # "gson":Lcom/google/gson/Gson;
    :cond_3
    invoke-virtual {p0, v1}, Lcom/coinbase/android/CoinbaseDrawerActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onDrawerOpened()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 168
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 169
    return-void
.end method

.method public setActionBarOverlayVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mToolbarOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 144
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mToolbarOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mToolbarOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 147
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mToolbarOverlay:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/coinbase/android/utils/Utils;->setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V

    .line 157
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mToolbarOverlay:Landroid/view/View;

    new-instance v1, Lcom/coinbase/android/CoinbaseDrawerActivity$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/CoinbaseDrawerActivity$2;-><init>(Lcom/coinbase/android/CoinbaseDrawerActivity;)V

    invoke-static {v0, v2, v3, v1}, Lcom/coinbase/android/utils/Utils;->setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 92
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 93
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->contentArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    return-void
.end method

.method public setToolbarDropShadowVisibility()V
    .locals 6

    .prologue
    .line 62
    iget-object v4, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mDropShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 66
    .local v0, "getOrient":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 68
    .local v2, "size":Landroid/graphics/Point;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-lt v4, v5, :cond_1

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 74
    :goto_0
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_2

    .line 88
    .end local v0    # "getOrient":Landroid/view/Display;
    .end local v2    # "size":Landroid/graphics/Point;
    :cond_0
    :goto_1
    return-void

    .line 71
    .restart local v0    # "getOrient":Landroid/view/Display;
    .restart local v2    # "size":Landroid/graphics/Point;
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 72
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 78
    :cond_2
    const v4, 0x7f0d027f

    invoke-virtual {p0, v4}, Lcom/coinbase/android/CoinbaseDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 79
    .local v3, "vw":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    iget-object v4, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->contentArea:Landroid/view/ViewGroup;

    check-cast v4, Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 86
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_3
    iget-object v4, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->contentArea:Landroid/view/ViewGroup;

    check-cast v4, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/coinbase/android/CoinbaseDrawerActivity;->mDropShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
