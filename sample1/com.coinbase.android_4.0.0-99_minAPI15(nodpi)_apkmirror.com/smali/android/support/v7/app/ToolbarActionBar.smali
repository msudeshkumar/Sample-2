.class Landroid/support/v7/app/ToolbarActionBar;
.super Landroid/support/v7/app/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;,
        Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;,
        Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;,
        Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;
    }
.end annotation


# instance fields
.field private mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

.field private mLastMenuVisibility:Z

.field private mListMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbarMenuPrepared:Z

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/support/v7/app/ToolbarActionBar$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ToolbarActionBar$1;-><init>(Landroid/support/v7/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Landroid/support/v7/app/ToolbarActionBar$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ToolbarActionBar$2;-><init>(Landroid/support/v7/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mMenuClicker:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    .line 73
    new-instance v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/ToolbarWidgetWrapper;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    .line 74
    new-instance v0, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;

    invoke-direct {v0, p0, p3}, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;-><init>(Landroid/support/v7/app/ToolbarActionBar;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 75
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 76
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mMenuClicker:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 77
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p2}, Landroid/support/v7/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/ToolbarActionBar;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/app/ToolbarActionBar;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/ToolbarActionBar;

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return v0
.end method

.method static synthetic access$202(Landroid/support/v7/app/ToolbarActionBar;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/app/ToolbarActionBar;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/support/v7/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    return p1
.end method

.method static synthetic access$300(Landroid/support/v7/app/ToolbarActionBar;)Landroid/support/v7/widget/DecorToolbar;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/ToolbarActionBar;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/app/ToolbarActionBar;Landroid/view/Menu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/app/ToolbarActionBar;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/support/v7/app/ToolbarActionBar;->getListMenuView(Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private ensureListMenuPresenter(Landroid/view/Menu;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    .line 511
    iget-object v5, p0, Landroid/support/v7/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    if-nez v5, :cond_1

    instance-of v5, p1, Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v5, :cond_1

    move-object v2, p1

    .line 512
    check-cast v2, Landroid/support/v7/view/menu/MenuBuilder;

    .line 514
    .local v2, "mb":Landroid/support/v7/view/menu/MenuBuilder;
    iget-object v5, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v5}, Landroid/support/v7/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 515
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 516
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 517
    .local v4, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 520
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 521
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_0

    .line 522
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 526
    :cond_0
    sget v5, Landroid/support/v7/appcompat/R$attr;->panelMenuListTheme:I

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 527
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_2

    .line 528
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 533
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 534
    .end local v0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 537
    new-instance v5, Landroid/support/v7/view/menu/ListMenuPresenter;

    sget v6, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v5, v1, v6}, Landroid/support/v7/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/support/v7/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    .line 538
    iget-object v5, p0, Landroid/support/v7/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    new-instance v6, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/ToolbarActionBar;Landroid/support/v7/app/ToolbarActionBar$1;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 539
    iget-object v5, p0, Landroid/support/v7/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v5}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 541
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "mb":Landroid/support/v7/view/menu/MenuBuilder;
    .end local v3    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_1
    return-void

    .line 530
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "mb":Landroid/support/v7/view/menu/MenuBuilder;
    .restart local v3    # "outValue":Landroid/util/TypedValue;
    .restart local v4    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_2
    sget v5, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method private getListMenuView(Landroid/view/Menu;)Landroid/view/View;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 498
    invoke-direct {p0, p1}, Landroid/support/v7/app/ToolbarActionBar;->ensureListMenuPresenter(Landroid/view/Menu;)V

    .line 500
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    if-nez v1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-object v0

    .line 504
    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 505
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mListMenuPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 573
    iget-boolean v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mMenuCallbackSet:Z

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    new-instance v1, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/ToolbarActionBar;Landroid/support/v7/app/ToolbarActionBar$1;)V

    new-instance v2, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Landroid/support/v7/app/ToolbarActionBar;Landroid/support/v7/app/ToolbarActionBar$1;)V

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/DecorToolbar;->setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mMenuCallbackSet:Z

    .line 578
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->collapseActionView()V

    .line 430
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 486
    iget-boolean v2, p0, Landroid/support/v7/app/ToolbarActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 495
    :cond_0
    return-void

    .line 489
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/app/ToolbarActionBar;->mLastMenuVisibility:Z

    .line 491
    iget-object v2, p0, Landroid/support/v7/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 492
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 493
    iget-object v2, p0, Landroid/support/v7/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedWindowCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/support/v7/widget/DecorToolbar;->setVisibility(I)V

    .line 407
    return-void
.end method

.method public invalidateOptionsMenu()Z
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 422
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 191
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 464
    invoke-direct {p0}, Landroid/support/v7/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 465
    .local v1, "menu":Landroid/view/Menu;
    if-eqz v1, :cond_0

    .line 466
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 468
    .local v0, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    if-eq v2, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 469
    invoke-interface {v1, p1, p2, v4}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 474
    .end local v0    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_0
    return v3

    .line 466
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .restart local v0    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_2
    move v2, v4

    .line 468
    goto :goto_1
.end method

.method populateOptionsMenu()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 436
    invoke-direct {p0}, Landroid/support/v7/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 437
    .local v1, "menu":Landroid/view/Menu;
    instance-of v2, v1, Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/support/v7/view/menu/MenuBuilder;

    move-object v0, v2

    .line 438
    .local v0, "mb":Landroid/support/v7/view/menu/MenuBuilder;
    :cond_0
    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 442
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 443
    iget-object v2, p0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 445
    :cond_2
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :cond_3
    if-eqz v0, :cond_4

    .line 449
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 452
    :cond_4
    return-void

    .line 448
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_5

    .line 449
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    throw v2
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 268
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 269
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 252
    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 253
    .local v0, "currentOptions":I
    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/support/v7/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 254
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 141
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 181
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 186
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 227
    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroid/support/v7/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v7/widget/DecorToolbar;->setVisibility(I)V

    .line 400
    return-void
.end method
