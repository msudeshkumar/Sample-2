.class public Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
.super Landroid/view/ViewGroup;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final COLLAPSED_PLUS_ROTATION:F = 0.0f

.field private static final EXPANDED_PLUS_ROTATION:F = 135.0f

.field public static final EXPAND_DOWN:I = 0x1

.field public static final EXPAND_LEFT:I = 0x2

.field public static final EXPAND_RIGHT:I = 0x3

.field public static final EXPAND_UP:I = 0x0

.field public static final LABELS_ON_LEFT_SIDE:I = 0x0

.field public static final LABELS_ON_RIGHT_SIDE:I = 0x1

.field private static sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

.field private static sCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private static sExpandInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

.field private mAddButtonColorNormal:I

.field private mAddButtonColorPressed:I

.field private mAddButtonPlusColor:I

.field private mAddButtonSize:I

.field private mAddButtonStrokeVisible:Z

.field private mButtonSpacing:I

.field private mButtonsCount:I

.field private mCollapseAnimation:Landroid/animation/AnimatorSet;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mExpandDirection:I

.field private mExpanded:Z

.field private mLabelsMargin:I

.field private mLabelsPosition:I

.field private mLabelsStyle:I

.field private mLabelsVerticalOffset:I

.field private mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

.field private mMaxButtonHeight:I

.field private mMaxButtonWidth:I

.field private mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

.field private mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 426
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    .line 427
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 428
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x12c

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 54
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v2, 0x12c

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 54
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 27
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 27
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    return v0
.end method

.method static synthetic access$1000()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 27
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    return v0
.end method

.method static synthetic access$200(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 27
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    return v0
.end method

.method static synthetic access$300(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    return v0
.end method

.method static synthetic access$402(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
    .param p1, "x1"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$900()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private adjustForOvershoot(I)I
    .locals 1
    .param p1, "dimension"    # I

    .prologue
    .line 273
    mul-int/lit8 v0, p1, 0xc

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private collapse(Z)V
    .locals 3
    .param p1, "immediately"    # Z

    .prologue
    const/4 v1, 0x0

    .line 540
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 541
    iput-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 542
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 543
    iget-object v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 544
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 545
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 547
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    invoke-interface {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuCollapsed()V

    .line 551
    :cond_0
    return-void

    .line 543
    :cond_1
    const-wide/16 v0, 0x12c

    goto :goto_0
.end method

.method private createAddButton(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;

    invoke-direct {v0, p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    .line 178
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    sget v1, Lcom/getbase/floatingactionbutton/R$id;->fab_expand_menu_button:I

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setId(I)V

    .line 179
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonSize:I

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setSize(I)V

    .line 180
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    new-instance v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;

    invoke-direct {v1, p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 189
    return-void
.end method

.method private createLabels()V
    .locals 7

    .prologue
    .line 513
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-direct {v1, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 515
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    if-ge v2, v5, :cond_2

    .line 516
    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 517
    .local v0, "button":Lcom/getbase/floatingactionbutton/FloatingActionButton;
    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 519
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v0, v5, :cond_0

    if-eqz v4, :cond_0

    sget v5, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    .line 520
    invoke-virtual {v0, v5}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 515
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    :cond_1
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 523
    .local v3, "label":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 524
    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {p0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;)V

    .line 527
    sget v5, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v0, v5, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 529
    .end local v0    # "button":Lcom/getbase/floatingactionbutton/FloatingActionButton;
    .end local v3    # "label":Landroid/widget/TextView;
    .end local v4    # "title":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private expandsHorizontally()Z
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getColor(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_actions_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    .line 88
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_labels_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    .line 89
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    .line 91
    new-instance v1, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-direct {v1, p0}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    .line 92
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 94
    sget-object v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "attr":Landroid/content/res/TypedArray;
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonPlusIconColor:I

    const v2, 0x106000b

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    .line 96
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorNormal:I

    const v2, 0x1060013

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    .line 97
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorPressed:I

    const v2, 0x1060012

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    .line 98
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonSize:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonSize:I

    .line 99
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonStrokeVisible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    .line 100
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_expandDirection:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    .line 101
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    .line 102
    sget v1, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelsPosition:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Action labels in horizontal expand orientation is not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V

    .line 110
    return-void
.end method


# virtual methods
.method public addButton(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V
    .locals 1
    .param p1, "button"    # Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .prologue
    .line 192
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;I)V

    .line 193
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 195
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    .line 198
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public collapse()V
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse(Z)V

    .line 533
    return-void
.end method

.method public collapseImmediately()V
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse(Z)V

    .line 537
    return-void
.end method

.method public expand()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 562
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-nez v0, :cond_0

    .line 563
    iput-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 564
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 565
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 566
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 568
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    invoke-interface {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuExpanded()V

    .line 572
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 413
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 418
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 502
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 504
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->bringChildToFront(Landroid/view/View;)V

    .line 505
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 507
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    .line 510
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 35
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 404
    :cond_0
    return-void

    .line 281
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    move/from16 v30, v0

    if-nez v30, :cond_3

    const/4 v15, 0x1

    .line 283
    .local v15, "expandUp":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->clearTouchDelegates()V

    .line 287
    :cond_1
    if-eqz v15, :cond_4

    sub-int v30, p5, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v31

    sub-int v8, v30, v31

    .line 289
    .local v8, "addButtonY":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    move/from16 v30, v0

    if-nez v30, :cond_5

    sub-int v30, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v9, v30, v31

    .line 292
    .local v9, "buttonsHorizontalCenter":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    sub-int v5, v9, v30

    .line 293
    .local v5, "addButtonLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v31

    add-int v31, v31, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v32

    add-int v32, v32, v8

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v5, v8, v1, v2}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    move/from16 v31, v0

    add-int v24, v30, v31

    .line 296
    .local v24, "labelsOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    move/from16 v30, v0

    if-nez v30, :cond_6

    sub-int v25, v9, v24

    .line 300
    .local v25, "labelsXNearButton":I
    :goto_3
    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v30, v0

    sub-int v27, v8, v30

    .line 304
    .local v27, "nextY":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    move/from16 v30, v0

    add-int/lit8 v17, v30, -0x1

    .local v17, "i":I
    :goto_5
    if-ltz v17, :cond_0

    .line 305
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 307
    .local v10, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    if-eq v10, v0, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 304
    :cond_2
    :goto_6
    add-int/lit8 v17, v17, -0x1

    goto :goto_5

    .line 281
    .end local v5    # "addButtonLeft":I
    .end local v8    # "addButtonY":I
    .end local v9    # "buttonsHorizontalCenter":I
    .end local v10    # "child":Landroid/view/View;
    .end local v15    # "expandUp":Z
    .end local v17    # "i":I
    .end local v24    # "labelsOffset":I
    .end local v25    # "labelsXNearButton":I
    .end local v27    # "nextY":I
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 287
    .restart local v15    # "expandUp":Z
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 289
    .restart local v8    # "addButtonY":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    move/from16 v30, v0

    div-int/lit8 v9, v30, 0x2

    goto/16 :goto_2

    .line 296
    .restart local v5    # "addButtonLeft":I
    .restart local v9    # "buttonsHorizontalCenter":I
    .restart local v24    # "labelsOffset":I
    :cond_6
    add-int v25, v9, v24

    goto :goto_3

    .line 300
    .restart local v25    # "labelsXNearButton":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    .line 302
    invoke-virtual/range {v30 .. v30}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v30

    add-int v30, v30, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v31, v0

    add-int v27, v30, v31

    goto :goto_4

    .line 309
    .restart local v10    # "child":Landroid/view/View;
    .restart local v17    # "i":I
    .restart local v27    # "nextY":I
    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    div-int/lit8 v30, v30, 0x2

    sub-int v11, v9, v30

    .line 310
    .local v11, "childX":I
    if-eqz v15, :cond_a

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    sub-int v12, v27, v30

    .line 311
    .local v12, "childY":I
    :goto_7
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    add-int v30, v30, v11

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    add-int v31, v31, v12

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v10, v11, v12, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 313
    sub-int v30, v8, v12

    move/from16 v0, v30

    int-to-float v13, v0

    .line 314
    .local v13, "collapsedTranslation":F
    const/16 v16, 0x0

    .line 316
    .local v16, "expandedTranslation":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_b

    move/from16 v30, v16

    :goto_8
    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 317
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_c

    const/high16 v30, 0x3f800000    # 1.0f

    :goto_9
    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    .line 319
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 320
    .local v28, "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;
    invoke-static/range {v28 .. v28}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v16, v31, v32

    const/16 v32, 0x1

    aput v13, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 321
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;
    invoke-static/range {v28 .. v28}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v13, v31, v32

    const/16 v32, 0x1

    aput v16, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 322
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 324
    sget v30, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 325
    .local v18, "label":Landroid/view/View;
    if-eqz v18, :cond_9

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    move/from16 v30, v0

    if-nez v30, :cond_d

    .line 327
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    sub-int v23, v25, v30

    .line 330
    .local v23, "labelXAwayFromButton":I
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    move/from16 v30, v0

    if-nez v30, :cond_e

    move/from16 v19, v23

    .line 334
    .local v19, "labelLeft":I
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    move/from16 v30, v0

    if-nez v30, :cond_f

    move/from16 v21, v25

    .line 338
    .local v21, "labelRight":I
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    move/from16 v30, v0

    sub-int v30, v12, v30

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x2

    add-int v22, v30, v31

    .line 340
    .local v22, "labelTop":I
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    add-int v30, v30, v22

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 342
    new-instance v29, Landroid/graphics/Rect;

    .line 343
    move/from16 v0, v19

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v31, v12, v31

    .line 345
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    add-int v32, v32, v11

    move/from16 v0, v32

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 346
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v33

    add-int v33, v33, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v34, v0

    div-int/lit8 v34, v34, 0x2

    add-int v33, v33, v34

    invoke-direct/range {v29 .. v33}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 347
    .local v29, "touchArea":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    move-object/from16 v30, v0

    new-instance v31, Landroid/view/TouchDelegate;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual/range {v30 .. v31}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->addTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 349
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_10

    move/from16 v30, v16

    :goto_d
    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 350
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_11

    const/high16 v30, 0x3f800000    # 1.0f

    :goto_e
    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 352
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 353
    .local v20, "labelParams":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;
    invoke-static/range {v20 .. v20}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v16, v31, v32

    const/16 v32, 0x1

    aput v13, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 354
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;
    invoke-static/range {v20 .. v20}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v13, v31, v32

    const/16 v32, 0x1

    aput v16, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 355
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 358
    .end local v19    # "labelLeft":I
    .end local v20    # "labelParams":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    .end local v21    # "labelRight":I
    .end local v22    # "labelTop":I
    .end local v23    # "labelXAwayFromButton":I
    .end local v29    # "touchArea":Landroid/graphics/Rect;
    :cond_9
    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v30, v0

    sub-int v27, v12, v30

    .line 360
    :goto_f
    goto/16 :goto_6

    .end local v12    # "childY":I
    .end local v13    # "collapsedTranslation":F
    .end local v16    # "expandedTranslation":F
    .end local v18    # "label":Landroid/view/View;
    .end local v28    # "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :cond_a
    move/from16 v12, v27

    .line 310
    goto/16 :goto_7

    .restart local v12    # "childY":I
    .restart local v13    # "collapsedTranslation":F
    .restart local v16    # "expandedTranslation":F
    :cond_b
    move/from16 v30, v13

    .line 316
    goto/16 :goto_8

    .line 317
    :cond_c
    const/16 v30, 0x0

    goto/16 :goto_9

    .line 328
    .restart local v18    # "label":Landroid/view/View;
    .restart local v28    # "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :cond_d
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    add-int v23, v25, v30

    goto/16 :goto_a

    .restart local v23    # "labelXAwayFromButton":I
    :cond_e
    move/from16 v19, v25

    .line 330
    goto/16 :goto_b

    .restart local v19    # "labelLeft":I
    :cond_f
    move/from16 v21, v23

    .line 334
    goto/16 :goto_c

    .restart local v21    # "labelRight":I
    .restart local v22    # "labelTop":I
    .restart local v29    # "touchArea":Landroid/graphics/Rect;
    :cond_10
    move/from16 v30, v13

    .line 349
    goto :goto_d

    .line 350
    :cond_11
    const/16 v30, 0x0

    goto :goto_e

    .line 360
    .end local v19    # "labelLeft":I
    .end local v21    # "labelRight":I
    .end local v22    # "labelTop":I
    .end local v23    # "labelXAwayFromButton":I
    .end local v29    # "touchArea":Landroid/graphics/Rect;
    :cond_12
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    add-int v30, v30, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v31, v0

    add-int v27, v30, v31

    goto :goto_f

    .line 366
    .end local v5    # "addButtonLeft":I
    .end local v8    # "addButtonY":I
    .end local v9    # "buttonsHorizontalCenter":I
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childX":I
    .end local v12    # "childY":I
    .end local v13    # "collapsedTranslation":F
    .end local v15    # "expandUp":Z
    .end local v16    # "expandedTranslation":F
    .end local v17    # "i":I
    .end local v18    # "label":Landroid/view/View;
    .end local v24    # "labelsOffset":I
    .end local v25    # "labelsXNearButton":I
    .end local v27    # "nextY":I
    .end local v28    # "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    const/4 v14, 0x1

    .line 368
    .local v14, "expandLeft":Z
    :goto_10
    if-eqz v14, :cond_15

    sub-int v30, p4, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v31

    sub-int v7, v30, v31

    .line 370
    .local v7, "addButtonX":I
    :goto_11
    sub-int v30, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v32

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x2

    add-int v6, v30, v31

    .line 371
    .local v6, "addButtonTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v31

    add-int v31, v31, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v32

    add-int v32, v32, v6

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v7, v6, v1, v2}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    .line 373
    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v30, v0

    sub-int v26, v7, v30

    .line 377
    .local v26, "nextX":I
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    move/from16 v30, v0

    add-int/lit8 v17, v30, -0x1

    .restart local v17    # "i":I
    :goto_13
    if-ltz v17, :cond_0

    .line 378
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 380
    .restart local v10    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    if-eq v10, v0, :cond_13

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    .line 377
    :cond_13
    :goto_14
    add-int/lit8 v17, v17, -0x1

    goto :goto_13

    .line 366
    .end local v6    # "addButtonTop":I
    .end local v7    # "addButtonX":I
    .end local v10    # "child":Landroid/view/View;
    .end local v14    # "expandLeft":Z
    .end local v17    # "i":I
    .end local v26    # "nextX":I
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_10

    .line 368
    .restart local v14    # "expandLeft":Z
    :cond_15
    const/4 v7, 0x0

    goto :goto_11

    .line 373
    .restart local v6    # "addButtonTop":I
    .restart local v7    # "addButtonX":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    .line 375
    invoke-virtual/range {v30 .. v30}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v30

    add-int v30, v30, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v31, v0

    add-int v26, v30, v31

    goto :goto_12

    .line 382
    .restart local v10    # "child":Landroid/view/View;
    .restart local v17    # "i":I
    .restart local v26    # "nextX":I
    :cond_17
    if-eqz v14, :cond_18

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    sub-int v11, v26, v30

    .line 383
    .restart local v11    # "childX":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v30

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    sub-int v30, v30, v31

    div-int/lit8 v30, v30, 0x2

    add-int v12, v6, v30

    .line 384
    .restart local v12    # "childY":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    add-int v30, v30, v11

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v31

    add-int v31, v31, v12

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v10, v11, v12, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 386
    sub-int v30, v7, v11

    move/from16 v0, v30

    int-to-float v13, v0

    .line 387
    .restart local v13    # "collapsedTranslation":F
    const/16 v16, 0x0

    .line 389
    .restart local v16    # "expandedTranslation":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_19

    move/from16 v30, v16

    :goto_16
    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 390
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1a

    const/high16 v30, 0x3f800000    # 1.0f

    :goto_17
    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    .line 392
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 393
    .restart local v28    # "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mCollapseDir:Landroid/animation/ObjectAnimator;
    invoke-static/range {v28 .. v28}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v16, v31, v32

    const/16 v32, 0x1

    aput v13, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 394
    # getter for: Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->mExpandDir:Landroid/animation/ObjectAnimator;
    invoke-static/range {v28 .. v28}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v30

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v13, v31, v32

    const/16 v32, 0x1

    aput v16, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 395
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 397
    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v30, v0

    sub-int v26, v11, v30

    .line 399
    :goto_18
    goto/16 :goto_14

    .end local v11    # "childX":I
    .end local v12    # "childY":I
    .end local v13    # "collapsedTranslation":F
    .end local v16    # "expandedTranslation":F
    .end local v28    # "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :cond_18
    move/from16 v11, v26

    .line 382
    goto/16 :goto_15

    .restart local v11    # "childX":I
    .restart local v12    # "childY":I
    .restart local v13    # "collapsedTranslation":F
    .restart local v16    # "expandedTranslation":F
    :cond_19
    move/from16 v30, v13

    .line 389
    goto :goto_16

    .line 390
    :cond_1a
    const/16 v30, 0x0

    goto :goto_17

    .line 399
    .restart local v28    # "params":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;
    :cond_1b
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    add-int v30, v30, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    move/from16 v31, v0

    add-int v26, v30, v31

    goto :goto_18

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->measureChildren(II)V

    .line 215
    const/4 v5, 0x0

    .line 216
    .local v5, "width":I
    const/4 v1, 0x0

    .line 218
    .local v1, "height":I
    iput v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 219
    iput v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    .line 220
    const/4 v4, 0x0

    .line 222
    .local v4, "maxLabelWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    if-ge v2, v7, :cond_2

    .line 223
    invoke-virtual {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 222
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iget v7, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    packed-switch v7, :pswitch_data_0

    .line 242
    :goto_2
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v7

    if-nez v7, :cond_0

    .line 243
    sget v7, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v0, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 244
    .local v3, "label":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 245
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    .line 232
    .end local v3    # "label":Landroid/widget/TextView;
    :pswitch_0
    iget v7, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v1, v7

    .line 234
    goto :goto_2

    .line 237
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    .line 238
    iget v7, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    goto :goto_2

    .line 250
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v7

    if-nez v7, :cond_4

    .line 251
    iget v7, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    if-lez v4, :cond_3

    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr v6, v4

    :cond_3
    add-int v5, v7, v6

    .line 256
    :goto_3
    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    packed-switch v6, :pswitch_data_1

    .line 269
    :goto_4
    invoke-virtual {p0, v5, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setMeasuredDimension(II)V

    .line 270
    return-void

    .line 253
    :cond_4
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    goto :goto_3

    .line 259
    :pswitch_2
    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    iget v7, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 260
    invoke-direct {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v1

    .line 261
    goto :goto_4

    .line 264
    :pswitch_3
    iget v6, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    iget v7, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 265
    invoke-direct {p0, v5}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v5

    goto :goto_4

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 256
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 596
    instance-of v1, p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 597
    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    .line 598
    .local v0, "savedState":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    iget-boolean v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    iput-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 599
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    iget-boolean v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    invoke-virtual {v1, v2}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 601
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    if-eqz v1, :cond_0

    .line 602
    iget-object v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    iget-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x43070000    # 135.0f

    :goto_0
    invoke-virtual {v2, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->setRotation(F)V

    .line 605
    :cond_0
    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 609
    .end local v0    # "savedState":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    :goto_1
    return-void

    .line 602
    .restart local v0    # "savedState":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 607
    .end local v0    # "savedState":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 587
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 588
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    invoke-direct {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 589
    .local v0, "savedState":Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    iget-boolean v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    iput-boolean v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    .line 591
    return-object v0
.end method

.method public removeButton(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V
    .locals 2
    .param p1, "button"    # Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 203
    sget v0, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    .line 204
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 205
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 580
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 582
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setEnabled(Z)V

    .line 583
    return-void
.end method

.method public setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    .line 114
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expand()V

    goto :goto_0
.end method
