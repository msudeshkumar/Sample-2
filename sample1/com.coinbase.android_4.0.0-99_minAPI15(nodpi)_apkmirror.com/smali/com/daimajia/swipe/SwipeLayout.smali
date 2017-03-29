.class public Lcom/daimajia/swipe/SwipeLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/daimajia/swipe/SwipeLayout$4;,
        Lcom/daimajia/swipe/SwipeLayout$DoubleClickListener;,
        Lcom/daimajia/swipe/SwipeLayout$Status;,
        Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;,
        Lcom/daimajia/swipe/SwipeLayout$OnLayout;,
        Lcom/daimajia/swipe/SwipeLayout$OnRevealListener;,
        Lcom/daimajia/swipe/SwipeLayout$SwipeDenier;,
        Lcom/daimajia/swipe/SwipeLayout$SwipeListener;,
        Lcom/daimajia/swipe/SwipeLayout$ShowMode;,
        Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    }
.end annotation


# static fields
.field private static final DefaultDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;


# instance fields
.field clickListener:Landroid/view/View$OnClickListener;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hitSurfaceRect:Landroid/graphics/Rect;

.field longClickListener:Landroid/view/View$OnLongClickListener;

.field private mClickToClose:Z

.field private mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

.field private mDoubleClickListener:Lcom/daimajia/swipe/SwipeLayout$DoubleClickListener;

.field private mDragDistance:I

.field private mDragEdges:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$DragEdge;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mEdgeSwipesOffset:[F

.field private mEventCounter:I

.field private mIsBeingDragged:Z

.field private mOnLayoutListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$OnLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mRevealListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$OnRevealListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShowEntirely:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

.field private mSwipeDeniers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$SwipeDenier;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeEnabled:Z

.field private mSwipeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$SwipeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipesEnabled:[Z

.field private mTouchSlop:I

.field private sX:F

.field private sY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout;->DefaultDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/daimajia/swipe/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/daimajia/swipe/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout;->DefaultDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    iput-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    .line 45
    iput v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    .line 46
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    .line 49
    new-array v3, v8, [F

    iput-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mEdgeSwipesOffset:[F

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipeDeniers:Ljava/util/List;

    .line 53
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    .line 54
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    .line 58
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipeEnabled:Z

    .line 59
    new-array v3, v8, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipesEnabled:[Z

    .line 60
    iput-boolean v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mClickToClose:Z

    .line 214
    new-instance v3, Lcom/daimajia/swipe/SwipeLayout$1;

    invoke-direct {v3, p0}, Lcom/daimajia/swipe/SwipeLayout$1;-><init>(Lcom/daimajia/swipe/SwipeLayout;)V

    iput-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 482
    iput v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mEventCounter:I

    .line 881
    iput v5, p0, Lcom/daimajia/swipe/SwipeLayout;->sX:F

    iput v5, p0, Lcom/daimajia/swipe/SwipeLayout;->sY:F

    .line 1073
    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;

    invoke-direct {v5, p0}, Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;-><init>(Lcom/daimajia/swipe/SwipeLayout;)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 84
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p0, v3}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 85
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mTouchSlop:I

    .line 87
    sget-object v3, Lcom/daimajia/swipe/R$styleable;->SwipeLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/daimajia/swipe/R$styleable;->SwipeLayout_drag_edge:I

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 89
    .local v1, "dragEdgeChoices":I
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mEdgeSwipesOffset:[F

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v4}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v4

    sget v5, Lcom/daimajia/swipe/R$styleable;->SwipeLayout_leftEdgeSwipeOffset:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    aput v5, v3, v4

    .line 90
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mEdgeSwipesOffset:[F

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v4}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v4

    sget v5, Lcom/daimajia/swipe/R$styleable;->SwipeLayout_rightEdgeSwipeOffset:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    aput v5, v3, v4

    .line 91
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mEdgeSwipesOffset:[F

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v4}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v4

    sget v5, Lcom/daimajia/swipe/R$styleable;->SwipeLayout_topEdgeSwipeOffset:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    aput v5, v3, v4

    .line 92
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mEdgeSwipesOffset:[F

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v4}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v4

    sget v5, Lcom/daimajia/swipe/R$styleable;->SwipeLayout_bottomEdgeSwipeOffset:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    aput v5, v3, v4

    .line 93
    sget v3, Lcom/daimajia/swipe/R$styleable;->SwipeLayout_clickToClose:I

    iget-boolean v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mClickToClose:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/daimajia/swipe/SwipeLayout;->setClickToClose(Z)V

    .line 95
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 96
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v3, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    and-int/lit8 v3, v1, 0x4

    if-ne v3, v8, :cond_1

    .line 99
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v3, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 102
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v3, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_2
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 105
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v3, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_3
    sget v3, Lcom/daimajia/swipe/R$styleable;->SwipeLayout_show_mode:I

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    invoke-virtual {v4}, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->ordinal()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 108
    .local v2, "ordinal":I
    invoke-static {}, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->values()[Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v3

    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void

    .line 59
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    return-object v0
.end method

.method static synthetic access$100(Lcom/daimajia/swipe/SwipeLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 31
    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    return v0
.end method

.method static synthetic access$200(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$ShowMode;
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/daimajia/swipe/SwipeLayout;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/daimajia/swipe/SwipeLayout;Lcom/daimajia/swipe/SwipeLayout$DragEdge;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/swipe/SwipeLayout;
    .param p1, "x1"    # Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->computeBottomLayDown(Lcom/daimajia/swipe/SwipeLayout$DragEdge;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->performAdapterViewItemClick()V

    return-void
.end method

.method static synthetic access$600(Lcom/daimajia/swipe/SwipeLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->performAdapterViewItemLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/daimajia/swipe/SwipeLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mClickToClose:Z

    return v0
.end method

.method static synthetic access$800(Lcom/daimajia/swipe/SwipeLayout;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/swipe/SwipeLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->isTouchOnSurface(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DoubleClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mDoubleClickListener:Lcom/daimajia/swipe/SwipeLayout$DoubleClickListener;

    return-object v0
.end method

.method private checkCanDrag(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 758
    iget-boolean v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    if-eqz v7, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$Status;

    move-result-object v7

    sget-object v8, Lcom/daimajia/swipe/SwipeLayout$Status;->Middle:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v7, v8, :cond_2

    .line 760
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 763
    :cond_2
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$Status;

    move-result-object v5

    .line 764
    .local v5, "status":Lcom/daimajia/swipe/SwipeLayout$Status;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v8, p0, Lcom/daimajia/swipe/SwipeLayout;->sX:F

    sub-float v1, v7, v8

    .line 765
    .local v1, "distanceX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v8, p0, Lcom/daimajia/swipe/SwipeLayout;->sY:F

    sub-float v2, v7, v8

    .line 766
    .local v2, "distanceY":F
    div-float v7, v2, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 767
    .local v0, "angle":F
    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 768
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$Status;

    move-result-object v7

    sget-object v8, Lcom/daimajia/swipe/SwipeLayout$Status;->Close:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v7, v8, :cond_3

    .line 770
    const/high16 v7, 0x42340000    # 45.0f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_19

    .line 771
    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-lez v7, :cond_18

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->isLeftSwipeEnabled()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 772
    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    .line 784
    .local v4, "dragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    :goto_1
    invoke-direct {p0, v4}, Lcom/daimajia/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/daimajia/swipe/SwipeLayout$DragEdge;)V

    .line 787
    .end local v4    # "dragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    :cond_3
    const/4 v3, 0x0

    .line 788
    .local v3, "doNothing":Z
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v8, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v7, v8, :cond_8

    .line 789
    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Open:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v5, v7, :cond_4

    iget v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-gtz v7, :cond_5

    :cond_4
    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Close:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v5, v7, :cond_1b

    iget v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mTouchSlop:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_1b

    :cond_5
    const/4 v6, 0x1

    .line 791
    .local v6, "suitable":Z
    :goto_2
    if-nez v6, :cond_6

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Middle:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v5, v7, :cond_1c

    :cond_6
    const/4 v6, 0x1

    .line 793
    :goto_3
    const/high16 v7, 0x41f00000    # 30.0f

    cmpl-float v7, v0, v7

    if-gtz v7, :cond_7

    if-nez v6, :cond_8

    .line 794
    :cond_7
    const/4 v3, 0x1

    .line 798
    .end local v6    # "suitable":Z
    :cond_8
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v8, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v7, v8, :cond_d

    .line 799
    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Open:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v5, v7, :cond_9

    iget v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mTouchSlop:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, v1, v7

    if-ltz v7, :cond_a

    :cond_9
    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Close:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v5, v7, :cond_1d

    iget v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_1d

    :cond_a
    const/4 v6, 0x1

    .line 801
    .restart local v6    # "suitable":Z
    :goto_4
    if-nez v6, :cond_b

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Middle:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v5, v7, :cond_1e

    :cond_b
    const/4 v6, 0x1

    .line 803
    :goto_5
    const/high16 v7, 0x41f00000    # 30.0f

    cmpl-float v7, v0, v7

    if-gtz v7, :cond_c

    if-nez v6, :cond_d

    .line 804
    :cond_c
    const/4 v3, 0x1

    .line 808
    .end local v6    # "suitable":Z
    :cond_d
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v8, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v7, v8, :cond_12

    .line 809
    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Open:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v5, v7, :cond_e

    iget v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mTouchSlop:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-ltz v7, :cond_f

    :cond_e
    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Close:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v5, v7, :cond_1f

    iget v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v2, v7

    if-lez v7, :cond_1f

    :cond_f
    const/4 v6, 0x1

    .line 811
    .restart local v6    # "suitable":Z
    :goto_6
    if-nez v6, :cond_10

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Middle:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v5, v7, :cond_20

    :cond_10
    const/4 v6, 0x1

    .line 813
    :goto_7
    const/high16 v7, 0x42700000    # 60.0f

    cmpg-float v7, v0, v7

    if-ltz v7, :cond_11

    if-nez v6, :cond_12

    .line 814
    :cond_11
    const/4 v3, 0x1

    .line 818
    .end local v6    # "suitable":Z
    :cond_12
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v8, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v7, v8, :cond_17

    .line 819
    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Open:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v5, v7, :cond_13

    iget v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v2, v7

    if-gtz v7, :cond_14

    :cond_13
    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Close:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v5, v7, :cond_21

    iget v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mTouchSlop:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_21

    :cond_14
    const/4 v6, 0x1

    .line 821
    .restart local v6    # "suitable":Z
    :goto_8
    if-nez v6, :cond_15

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Middle:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v5, v7, :cond_22

    :cond_15
    const/4 v6, 0x1

    .line 823
    :goto_9
    const/high16 v7, 0x42700000    # 60.0f

    cmpg-float v7, v0, v7

    if-ltz v7, :cond_16

    if-nez v6, :cond_17

    .line 824
    :cond_16
    const/4 v3, 0x1

    .line 827
    .end local v6    # "suitable":Z
    :cond_17
    if-nez v3, :cond_23

    const/4 v7, 0x1

    :goto_a
    iput-boolean v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    goto/16 :goto_0

    .line 773
    .end local v3    # "doNothing":Z
    :cond_18
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->isRightSwipeEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 774
    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    .restart local v4    # "dragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    goto/16 :goto_1

    .line 778
    .end local v4    # "dragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    :cond_19
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_1a

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->isTopSwipeEnabled()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 779
    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    .restart local v4    # "dragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    goto/16 :goto_1

    .line 780
    .end local v4    # "dragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    :cond_1a
    const/4 v7, 0x0

    cmpg-float v7, v2, v7

    if-gez v7, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->isBottomSwipeEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 781
    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    .restart local v4    # "dragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    goto/16 :goto_1

    .line 789
    .end local v4    # "dragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    .restart local v3    # "doNothing":Z
    :cond_1b
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 791
    .restart local v6    # "suitable":Z
    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 799
    .end local v6    # "suitable":Z
    :cond_1d
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 801
    .restart local v6    # "suitable":Z
    :cond_1e
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 809
    .end local v6    # "suitable":Z
    :cond_1f
    const/4 v6, 0x0

    goto :goto_6

    .line 811
    .restart local v6    # "suitable":Z
    :cond_20
    const/4 v6, 0x0

    goto :goto_7

    .line 819
    .end local v6    # "suitable":Z
    :cond_21
    const/4 v6, 0x0

    goto :goto_8

    .line 821
    .restart local v6    # "suitable":Z
    :cond_22
    const/4 v6, 0x0

    goto :goto_9

    .line 827
    .end local v6    # "suitable":Z
    :cond_23
    const/4 v7, 0x0

    goto :goto_a
.end method

.method private computeBottomLayDown(Lcom/daimajia/swipe/SwipeLayout$DragEdge;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "dragEdge"    # Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v1

    .local v1, "bl":I
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    .line 1404
    .local v3, "bt":I
    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne p1, v4, :cond_2

    .line 1405
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    sub-int v1, v4, v5

    .line 1409
    :cond_0
    :goto_0
    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-eq p1, v4, :cond_1

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne p1, v4, :cond_3

    .line 1410
    :cond_1
    iget v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    add-int v2, v1, v4

    .line 1411
    .local v2, "br":I
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 1416
    .local v0, "bb":I
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 1406
    .end local v0    # "bb":I
    .end local v2    # "br":I
    :cond_2
    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne p1, v4, :cond_0

    .line 1407
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    sub-int v3, v4, v5

    goto :goto_0

    .line 1413
    :cond_3
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 1414
    .restart local v2    # "br":I
    iget v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    add-int v0, v3, v4

    .restart local v0    # "bb":I
    goto :goto_1
.end method

.method private computeBottomLayoutAreaViaSurface(Lcom/daimajia/swipe/SwipeLayout$ShowMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "mode"    # Lcom/daimajia/swipe/SwipeLayout$ShowMode;
    .param p2, "surfaceArea"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 1367
    move-object v5, p2

    .line 1368
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v2

    .line 1370
    .local v2, "bottomView":Landroid/view/View;
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .local v1, "bl":I
    iget v4, v5, Landroid/graphics/Rect;->top:I

    .local v4, "bt":I
    iget v3, v5, Landroid/graphics/Rect;->right:I

    .local v3, "br":I
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 1371
    .local v0, "bb":I
    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne p1, v7, :cond_8

    .line 1372
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v8, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v7, v8, :cond_2

    .line 1373
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    sub-int v1, v7, v8

    .line 1380
    :goto_0
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v8, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v8, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v7, v8, :cond_6

    .line 1381
    :cond_0
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 1382
    if-nez v2, :cond_5

    :goto_1
    add-int v3, v1, v6

    .line 1397
    :cond_1
    :goto_2
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6

    .line 1374
    :cond_2
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v8, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v7, v8, :cond_3

    .line 1375
    iget v1, v5, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1376
    :cond_3
    iget-object v7, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v8, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v7, v8, :cond_4

    .line 1377
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    sub-int v4, v7, v8

    goto :goto_0

    .line 1378
    :cond_4
    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1382
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    goto :goto_1

    .line 1384
    :cond_6
    if-nez v2, :cond_7

    :goto_3
    add-int v0, v4, v6

    .line 1385
    iget v3, v5, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 1384
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    goto :goto_3

    .line 1387
    :cond_8
    sget-object v6, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->LayDown:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne p1, v6, :cond_1

    .line 1388
    iget-object v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v6, v7, :cond_9

    .line 1389
    iget v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    add-int v3, v1, v6

    goto :goto_2

    .line 1390
    :cond_9
    iget-object v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v6, v7, :cond_a

    .line 1391
    iget v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    sub-int v1, v3, v6

    goto :goto_2

    .line 1392
    :cond_a
    iget-object v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v6, v7, :cond_b

    .line 1393
    iget v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    add-int v0, v4, v6

    goto :goto_2

    .line 1394
    :cond_b
    iget v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    sub-int v4, v0, v6

    goto :goto_2
.end method

.method private computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;
    .locals 5
    .param p1, "open"    # Z

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    .local v0, "l":I
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v1

    .line 1354
    .local v1, "t":I
    if-eqz p1, :cond_0

    .line 1355
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_1

    .line 1356
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    add-int v0, v2, v3

    .line 1363
    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 1357
    :cond_1
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_2

    .line 1358
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    sub-int v0, v2, v3

    goto :goto_0

    .line 1359
    :cond_2
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_3

    .line 1360
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    add-int v1, v2, v3

    goto :goto_0

    .line 1361
    :cond_3
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    sub-int v1, v2, v3

    goto :goto_0
.end method

.method private dp2px(F)I
    .locals 2
    .param p1, "dp"    # F

    .prologue
    .line 1428
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getAdapterView()Landroid/widget/AdapterView;
    .locals 2

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 979
    .local v0, "t":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 980
    check-cast v0, Landroid/widget/AdapterView;

    .line 982
    .end local v0    # "t":Landroid/view/ViewParent;
    :goto_0
    return-object v0

    .restart local v0    # "t":Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentOffset()F
    .locals 2

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1492
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mEdgeSwipesOffset:[F

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private insideAdapterView()Z
    .locals 1

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->getAdapterView()Landroid/widget/AdapterView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchOnSurface(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    .line 1064
    .local v0, "surfaceView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1065
    const/4 v1, 0x0

    .line 1071
    :goto_0
    return v1

    .line 1067
    :cond_0
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->hitSurfaceRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 1068
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->hitSurfaceRect:Landroid/graphics/Rect;

    .line 1070
    :cond_1
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->hitSurfaceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1071
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->hitSurfaceRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    goto :goto_0
.end method

.method private performAdapterViewItemClick()V
    .locals 6

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$Status;

    move-result-object v3

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$Status;->Close:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-eq v3, v4, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 988
    .local v1, "t":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/widget/AdapterView;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 989
    check-cast v2, Landroid/widget/AdapterView;

    .line 990
    .local v2, "view":Landroid/widget/AdapterView;
    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 991
    .local v0, "p":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 992
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method private performAdapterViewItemLongClick()Z
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 998
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$Status;

    move-result-object v0

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$Status;->Close:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-eq v0, v2, :cond_1

    move v7, v10

    .line 1023
    :cond_0
    :goto_0
    return v7

    .line 999
    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 1000
    .local v9, "t":Landroid/view/ViewParent;
    instance-of v0, v9, Landroid/widget/AdapterView;

    if-eqz v0, :cond_4

    move-object v1, v9

    .line 1001
    check-cast v1, Landroid/widget/AdapterView;

    .line 1002
    .local v1, "view":Landroid/widget/AdapterView;
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1003
    .local v3, "p":I
    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    move v7, v10

    goto :goto_0

    .line 1004
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 1005
    .local v4, "vId":J
    const/4 v7, 0x0

    .line 1007
    .local v7, "handled":Z
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v2, "performLongPress"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/view/View;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v0, v2, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1008
    .local v8, "m":Ljava/lang/reflect/Method;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1009
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v0, v2

    const/4 v2, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v0, v2

    invoke-virtual {v8, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 1011
    .end local v8    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    .line 1012
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1014
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1015
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v7

    .line 1017
    :cond_3
    if-eqz v7, :cond_0

    .line 1018
    invoke-virtual {v1, v10}, Landroid/widget/AdapterView;->performHapticFeedback(I)Z

    goto :goto_0

    .end local v1    # "view":Landroid/widget/AdapterView;
    .end local v3    # "p":I
    .end local v4    # "vId":J
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "handled":Z
    :cond_4
    move v7, v10

    .line 1023
    goto :goto_0
.end method

.method private safeBottomView()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 541
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$Status;

    move-result-object v4

    .line 542
    .local v4, "status":Lcom/daimajia/swipe/SwipeLayout$Status;
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v1

    .line 544
    .local v1, "bottoms":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$Status;->Close:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v4, v5, :cond_1

    .line 545
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 546
    .local v0, "bottom":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 547
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 551
    .end local v0    # "bottom":Landroid/view/View;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v2

    .line 552
    .local v2, "currentBottomView":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 553
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 556
    .end local v2    # "currentBottomView":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setCurrentDragEdge(Lcom/daimajia/swipe/SwipeLayout$DragEdge;)V
    .locals 1
    .param p1, "dragEdge"    # Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-eq v0, p1, :cond_0

    .line 1497
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    .line 1498
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->updateBottomViews()V

    .line 1500
    :cond_0
    return-void
.end method

.method private updateBottomViews()V
    .locals 3

    .prologue
    .line 1503
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    .line 1504
    .local v0, "currentBottomView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1505
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v1, v2, :cond_3

    .line 1506
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentOffset()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/daimajia/swipe/SwipeLayout;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    .line 1511
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v1, v2, :cond_4

    .line 1512
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->layoutPullOut()V

    .line 1515
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->safeBottomView()V

    .line 1516
    return-void

    .line 1508
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentOffset()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/daimajia/swipe/SwipeLayout;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    goto :goto_0

    .line 1513
    :cond_4
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->LayDown:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->layoutLayDown()V

    goto :goto_1
.end method


# virtual methods
.method public addDrag(Lcom/daimajia/swipe/SwipeLayout$DragEdge;Landroid/view/View;)V
    .locals 1
    .param p1, "dragEdge"    # Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/daimajia/swipe/SwipeLayout;->addDrag(Lcom/daimajia/swipe/SwipeLayout$DragEdge;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    return-void
.end method

.method public addDrag(Lcom/daimajia/swipe/SwipeLayout$DragEdge;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "dragEdge"    # Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 662
    if-nez p3, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    .line 665
    :cond_0
    invoke-virtual {p0, p3}, Lcom/daimajia/swipe/SwipeLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 666
    invoke-virtual {p0, p3}, Lcom/daimajia/swipe/SwipeLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 668
    :cond_1
    const/4 v0, -0x1

    .line 669
    .local v0, "gravity":I
    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$4;->$SwitchMap$com$daimajia$swipe$SwipeLayout$DragEdge:[I

    invoke-virtual {p1}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 675
    :goto_0
    instance-of v1, p3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_2

    move-object v1, p3

    .line 676
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 678
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p3}, Lcom/daimajia/swipe/SwipeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 679
    return-void

    .line 670
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 671
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 672
    :pswitch_2
    const/16 v0, 0x30

    goto :goto_0

    .line 673
    :pswitch_3
    const/16 v0, 0x50

    goto :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addOnLayoutListener(Lcom/daimajia/swipe/SwipeLayout$OnLayout;)V
    .locals 1
    .param p1, "l"    # Lcom/daimajia/swipe/SwipeLayout$OnLayout;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    return-void
.end method

.method public addSwipeListener(Lcom/daimajia/swipe/SwipeLayout$SwipeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/daimajia/swipe/SwipeLayout$SwipeListener;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 682
    const/4 v2, 0x0

    .line 684
    .local v2, "gravity":I
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "gravity"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 689
    :goto_0
    if-lez v2, :cond_5

    .line 690
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 692
    and-int/lit8 v4, v2, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 693
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v4, v5, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_0
    and-int/lit8 v4, v2, 0x5

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 696
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v4, v5, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_1
    and-int/lit8 v4, v2, 0x30

    const/16 v5, 0x30

    if-ne v4, v5, :cond_2

    .line 699
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v4, v5, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_2
    and-int/lit8 v4, v2, 0x50

    const/16 v5, 0x50

    if-ne v4, v5, :cond_3

    .line 702
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v4, v5, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v4, p0, :cond_7

    .line 717
    :cond_4
    :goto_2
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 705
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 706
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/daimajia/swipe/SwipeLayout$DragEdge;Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    .line 708
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 716
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/daimajia/swipe/SwipeLayout$DragEdge;Landroid/view/View;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1301
    invoke-virtual {p0, v0, v0}, Lcom/daimajia/swipe/SwipeLayout;->close(ZZ)V

    .line 1302
    return-void
.end method

.method public close(ZZ)V
    .locals 8
    .param p1, "smooth"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v3

    .line 1316
    .local v3, "surface":Landroid/view/View;
    if-nez v3, :cond_0

    .line 1335
    :goto_0
    return-void

    .line 1320
    :cond_0
    if-eqz p1, :cond_1

    .line 1321
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1334
    :goto_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->invalidate()V

    goto :goto_0

    .line 1323
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/daimajia/swipe/SwipeLayout;->computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 1324
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v0, v4, v5

    .line 1325
    .local v0, "dx":I
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v1, v4, v5

    .line 1326
    .local v1, "dy":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1327
    if-eqz p2, :cond_2

    .line 1328
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/daimajia/swipe/SwipeLayout;->dispatchRevealEvent(IIII)V

    .line 1329
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/daimajia/swipe/SwipeLayout;->dispatchSwipeEvent(IIII)V

    goto :goto_1

    .line 1331
    :cond_2
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->safeBottomView()V

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 634
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 635
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 638
    :cond_0
    return-void
.end method

.method protected dispatchRevealEvent(IIII)V
    .locals 14
    .param p1, "surfaceLeft"    # I
    .param p2, "surfaceTop"    # I
    .param p3, "surfaceRight"    # I
    .param p4, "surfaceBottom"    # I

    .prologue
    .line 560
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    :cond_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 562
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/util/ArrayList<Lcom/daimajia/swipe/SwipeLayout$OnRevealListener;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 563
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->getRelativePosition(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 564
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-object v0, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/daimajia/swipe/SwipeLayout;->isViewShowing(Landroid/view/View;Landroid/graphics/Rect;Lcom/daimajia/swipe/SwipeLayout$DragEdge;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 566
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const/4 v8, 0x0

    .line 568
    .local v8, "distance":I
    const/4 v10, 0x0

    .line 569
    .local v10, "fraction":F
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->LayDown:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v0, v3, :cond_5

    .line 570
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$4;->$SwitchMap$com$daimajia$swipe$SwipeLayout$DragEdge:[I

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 609
    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/daimajia/swipe/SwipeLayout$OnRevealListener;

    .line 610
    .local v13, "l":Lcom/daimajia/swipe/SwipeLayout$OnRevealListener;
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-interface {v13, v1, v0, v3, v8}, Lcom/daimajia/swipe/SwipeLayout$OnRevealListener;->onReveal(Landroid/view/View;Lcom/daimajia/swipe/SwipeLayout$DragEdge;FI)V

    .line 611
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    .line 612
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 572
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "l":Lcom/daimajia/swipe/SwipeLayout$OnRevealListener;
    :pswitch_0
    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v0, p1

    .line 573
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 574
    goto :goto_0

    .line 576
    :pswitch_1
    iget v0, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v0, p3

    .line 577
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 578
    goto :goto_0

    .line 580
    :pswitch_2
    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int v8, v0, p2

    .line 581
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 582
    goto :goto_0

    .line 584
    :pswitch_3
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v0, p4

    .line 585
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    goto :goto_0

    .line 588
    :cond_5
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v0, v3, :cond_3

    .line 589
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$4;->$SwitchMap$com$daimajia$swipe$SwipeLayout$DragEdge:[I

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 599
    :pswitch_4
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    sub-int v8, v0, v3

    .line 600
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 601
    goto/16 :goto_0

    .line 591
    :pswitch_5
    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v3

    sub-int v8, v0, v3

    .line 592
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 593
    goto/16 :goto_0

    .line 595
    :pswitch_6
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getWidth()I

    move-result v3

    sub-int v8, v0, v3

    .line 596
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 597
    goto/16 :goto_0

    .line 603
    :pswitch_7
    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getHeight()I

    move-result v3

    sub-int v8, v0, v3

    .line 604
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    goto/16 :goto_0

    .line 617
    .end local v8    # "distance":I
    .end local v10    # "fraction":F
    :cond_6
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-object v0, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/daimajia/swipe/SwipeLayout;->isViewTotallyFirstShowed(Landroid/view/View;Landroid/graphics/Rect;Lcom/daimajia/swipe/SwipeLayout$DragEdge;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/daimajia/swipe/SwipeLayout$OnRevealListener;

    .line 621
    .restart local v13    # "l":Lcom/daimajia/swipe/SwipeLayout$OnRevealListener;
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v0, v3, :cond_8

    .line 623
    :cond_7
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-interface {v13, v1, v0, v3, v4}, Lcom/daimajia/swipe/SwipeLayout$OnRevealListener;->onReveal(Landroid/view/View;Lcom/daimajia/swipe/SwipeLayout$DragEdge;FI)V

    goto :goto_2

    .line 625
    :cond_8
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-interface {v13, v1, v0, v3, v4}, Lcom/daimajia/swipe/SwipeLayout$OnRevealListener;->onReveal(Landroid/view/View;Lcom/daimajia/swipe/SwipeLayout$DragEdge;FI)V

    goto :goto_2

    .line 570
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 589
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected dispatchSwipeEvent(IIII)V
    .locals 3
    .param p1, "surfaceLeft"    # I
    .param p2, "surfaceTop"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getDragEdge()Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v0

    .line 486
    .local v0, "edge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    const/4 v1, 0x1

    .line 487
    .local v1, "open":Z
    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v0, v2, :cond_1

    .line 488
    if-gez p3, :cond_0

    const/4 v1, 0x0

    .line 497
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/daimajia/swipe/SwipeLayout;->dispatchSwipeEvent(IIZ)V

    .line 498
    return-void

    .line 489
    :cond_1
    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v0, v2, :cond_2

    .line 490
    if-lez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 491
    :cond_2
    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v0, v2, :cond_3

    .line 492
    if-gez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 493
    :cond_3
    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v0, v2, :cond_0

    .line 494
    if-lez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchSwipeEvent(IIZ)V
    .locals 8
    .param p1, "surfaceLeft"    # I
    .param p2, "surfaceTop"    # I
    .param p3, "open"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 501
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->safeBottomView()V

    .line 502
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$Status;

    move-result-object v3

    .line 504
    .local v3, "status":Lcom/daimajia/swipe/SwipeLayout$Status;
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 505
    iget v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mEventCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mEventCounter:I

    .line 506
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/daimajia/swipe/SwipeLayout$SwipeListener;

    .line 507
    .local v2, "l":Lcom/daimajia/swipe/SwipeLayout$SwipeListener;
    iget v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mEventCounter:I

    if-ne v4, v7, :cond_0

    .line 508
    if-eqz p3, :cond_1

    .line 509
    invoke-interface {v2, p0}, Lcom/daimajia/swipe/SwipeLayout$SwipeListener;->onStartOpen(Lcom/daimajia/swipe/SwipeLayout;)V

    .line 514
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v5

    sub-int v5, p2, v5

    invoke-interface {v2, p0, v4, v5}, Lcom/daimajia/swipe/SwipeLayout$SwipeListener;->onUpdate(Lcom/daimajia/swipe/SwipeLayout;II)V

    goto :goto_0

    .line 511
    :cond_1
    invoke-interface {v2, p0}, Lcom/daimajia/swipe/SwipeLayout$SwipeListener;->onStartClose(Lcom/daimajia/swipe/SwipeLayout;)V

    goto :goto_1

    .line 517
    .end local v2    # "l":Lcom/daimajia/swipe/SwipeLayout$SwipeListener;
    :cond_2
    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$Status;->Close:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v3, v4, :cond_4

    .line 518
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/daimajia/swipe/SwipeLayout$SwipeListener;

    .line 519
    .restart local v2    # "l":Lcom/daimajia/swipe/SwipeLayout$SwipeListener;
    invoke-interface {v2, p0}, Lcom/daimajia/swipe/SwipeLayout$SwipeListener;->onClose(Lcom/daimajia/swipe/SwipeLayout;)V

    goto :goto_2

    .line 521
    .end local v2    # "l":Lcom/daimajia/swipe/SwipeLayout$SwipeListener;
    :cond_3
    iput v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mEventCounter:I

    .line 524
    :cond_4
    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$Status;->Open:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v3, v4, :cond_7

    .line 525
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, "currentBottomView":Landroid/view/View;
    if-eqz v0, :cond_5

    .line 527
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 529
    :cond_5
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/daimajia/swipe/SwipeLayout$SwipeListener;

    .line 530
    .restart local v2    # "l":Lcom/daimajia/swipe/SwipeLayout$SwipeListener;
    invoke-interface {v2, p0}, Lcom/daimajia/swipe/SwipeLayout$SwipeListener;->onOpen(Lcom/daimajia/swipe/SwipeLayout;)V

    goto :goto_3

    .line 532
    .end local v2    # "l":Lcom/daimajia/swipe/SwipeLayout$SwipeListener;
    :cond_6
    iput v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mEventCounter:I

    .line 535
    .end local v0    # "currentBottomView":Landroid/view/View;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method public getBottomViews()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v1, "bottoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->values()[Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v0

    .local v0, "arr$":[Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 1158
    .local v2, "dragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    iget-object v5, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1160
    .end local v2    # "dragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    :cond_0
    return-object v1
.end method

.method public getCurrentBottomView()Landroid/view/View;
    .locals 3

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v0

    .line 1147
    .local v0, "bottoms":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1150
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDragDistance()I
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    return v0
.end method

.method public getDragEdge()Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    return-object v0
.end method

.method public getDragEdgeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$DragEdge;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getDragEdges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$DragEdge;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1455
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$Status;
    .locals 5

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v2

    .line 1177
    .local v2, "surfaceView":Landroid/view/View;
    if-nez v2, :cond_0

    .line 1178
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$Status;->Close:Lcom/daimajia/swipe/SwipeLayout$Status;

    .line 1188
    :goto_0
    return-object v3

    .line 1180
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1181
    .local v0, "surfaceLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1182
    .local v1, "surfaceTop":I
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v3

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    if-ne v1, v3, :cond_1

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$Status;->Close:Lcom/daimajia/swipe/SwipeLayout$Status;

    goto :goto_0

    .line 1184
    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    sub-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    add-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    add-int/2addr v3, v4

    if-ne v1, v3, :cond_3

    .line 1186
    :cond_2
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$Status;->Open:Lcom/daimajia/swipe/SwipeLayout$Status;

    goto :goto_0

    .line 1188
    :cond_3
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$Status;->Middle:Lcom/daimajia/swipe/SwipeLayout$Status;

    goto :goto_0
.end method

.method protected getRelativePosition(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 469
    move-object v1, p1

    .line 470
    .local v1, "t":Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-direct {v0, v2, v3, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 471
    .local v0, "r":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 472
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1    # "t":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 473
    .restart local v1    # "t":Landroid/view/View;
    if-ne v1, p0, :cond_1

    .line 477
    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 478
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 479
    return-object v0

    .line 474
    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 475
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getShowMode()Lcom/daimajia/swipe/SwipeLayout$ShowMode;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1140
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isBottomSwipeEnabled()Z
    .locals 3

    .prologue
    .line 965
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 966
    .local v0, "bottomView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipesEnabled:[Z

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLeftSwipeEnabled()Z
    .locals 3

    .prologue
    .line 935
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 936
    .local v0, "bottomView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipesEnabled:[Z

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRightSwipeEnabled()Z
    .locals 3

    .prologue
    .line 945
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 946
    .local v0, "bottomView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipesEnabled:[Z

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipeEnabled:Z

    return v0
.end method

.method public isTopSwipeEnabled()Z
    .locals 3

    .prologue
    .line 955
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 956
    .local v0, "bottomView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipesEnabled:[Z

    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isViewShowing(Landroid/view/View;Landroid/graphics/Rect;Lcom/daimajia/swipe/SwipeLayout$DragEdge;IIII)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativePosition"    # Landroid/graphics/Rect;
    .param p3, "availableEdge"    # Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    .param p4, "surfaceLeft"    # I
    .param p5, "surfaceTop"    # I
    .param p6, "surfaceRight"    # I
    .param p7, "surfaceBottom"    # I

    .prologue
    const/4 v4, 0x1

    .line 422
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 423
    .local v1, "childLeft":I
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 424
    .local v2, "childRight":I
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 425
    .local v3, "childTop":I
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 426
    .local v0, "childBottom":I
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v5

    sget-object v6, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->LayDown:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v5, v6, :cond_1

    .line 427
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$4;->$SwitchMap$com$daimajia$swipe$SwipeLayout$DragEdge:[I

    invoke-virtual {p3}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 465
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 429
    :pswitch_0
    if-le p6, v1, :cond_0

    if-gt p6, v2, :cond_0

    goto :goto_1

    .line 434
    :pswitch_1
    if-ge p4, v2, :cond_0

    if-lt p4, v1, :cond_0

    goto :goto_1

    .line 439
    :pswitch_2
    if-lt p5, v3, :cond_0

    if-ge p5, v0, :cond_0

    goto :goto_1

    .line 444
    :pswitch_3
    if-le p7, v3, :cond_0

    if-gt p7, v0, :cond_0

    goto :goto_1

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v5

    sget-object v6, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v5, v6, :cond_0

    .line 450
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$4;->$SwitchMap$com$daimajia$swipe$SwipeLayout$DragEdge:[I

    invoke-virtual {p3}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 458
    :pswitch_4
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v5

    if-lt v0, v5, :cond_0

    goto :goto_1

    .line 452
    :pswitch_5
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getWidth()I

    move-result v5

    if-gt v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_0

    goto :goto_1

    .line 455
    :pswitch_6
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v5

    if-lt v2, v5, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v5

    if-ge v1, v5, :cond_0

    goto :goto_1

    .line 461
    :pswitch_7
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getHeight()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v5

    if-lt v3, v5, :cond_0

    goto :goto_1

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 450
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected isViewTotallyFirstShowed(Landroid/view/View;Landroid/graphics/Rect;Lcom/daimajia/swipe/SwipeLayout$DragEdge;IIII)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativePosition"    # Landroid/graphics/Rect;
    .param p3, "edge"    # Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    .param p4, "surfaceLeft"    # I
    .param p5, "surfaceTop"    # I
    .param p6, "surfaceRight"    # I
    .param p7, "surfaceBottom"    # I

    .prologue
    .line 400
    iget-object v5, p0, Lcom/daimajia/swipe/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    .line 417
    :cond_0
    :goto_0
    return v4

    .line 401
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 402
    .local v1, "childLeft":I
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 403
    .local v2, "childRight":I
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 404
    .local v3, "childTop":I
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 405
    .local v0, "childBottom":I
    const/4 v4, 0x0

    .line 406
    .local v4, "r":Z
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v5

    sget-object v6, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->LayDown:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v5, v6, :cond_6

    .line 407
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_2

    if-le p6, v1, :cond_5

    :cond_2
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_3

    if-ge p4, v2, :cond_5

    :cond_3
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_4

    if-ge p5, v0, :cond_5

    :cond_4
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_0

    if-gt p7, v3, :cond_0

    .line 410
    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    .line 411
    :cond_6
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v5

    sget-object v6, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v5, v6, :cond_0

    .line 412
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_7

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_a

    :cond_7
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_8

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v5

    if-ge v1, v5, :cond_a

    :cond_8
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_9

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v5

    if-ge v3, v5, :cond_a

    :cond_9
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_0

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getHeight()I

    move-result v5

    if-gt v0, v5, :cond_0

    .line 415
    :cond_a
    const/4 v4, 0x1

    goto :goto_0
.end method

.method layoutLayDown()V
    .locals 7

    .prologue
    .line 743
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/daimajia/swipe/SwipeLayout;->computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 744
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v2

    .line 745
    .local v2, "surfaceView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 746
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 747
    invoke-virtual {p0, v2}, Lcom/daimajia/swipe/SwipeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 749
    :cond_0
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->LayDown:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    invoke-direct {p0, v3, v1}, Lcom/daimajia/swipe/SwipeLayout;->computeBottomLayoutAreaViaSurface(Lcom/daimajia/swipe/SwipeLayout$ShowMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 750
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    .line 751
    .local v0, "currentBottomView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 752
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 754
    :cond_1
    return-void
.end method

.method layoutPullOut()V
    .locals 7

    .prologue
    .line 729
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/daimajia/swipe/SwipeLayout;->computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 730
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v2

    .line 731
    .local v2, "surfaceView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 732
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 733
    invoke-virtual {p0, v2}, Lcom/daimajia/swipe/SwipeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 735
    :cond_0
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    invoke-direct {p0, v3, v1}, Lcom/daimajia/swipe/SwipeLayout;->computeBottomLayoutAreaViaSurface(Lcom/daimajia/swipe/SwipeLayout$ShowMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 736
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    .line 737
    .local v0, "currentBottomView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 738
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 740
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1027
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1028
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->insideAdapterView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->clickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$2;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$2;-><init>(Lcom/daimajia/swipe/SwipeLayout;)V

    invoke-virtual {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->longClickListener:Landroid/view/View$OnLongClickListener;

    if-nez v0, :cond_1

    .line 1038
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$3;

    invoke-direct {v0, p0}, Lcom/daimajia/swipe/SwipeLayout$3;-><init>(Lcom/daimajia/swipe/SwipeLayout;)V

    invoke-virtual {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1047
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 831
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->isSwipeEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 878
    :goto_0
    return v4

    .line 834
    :cond_0
    iget-boolean v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mClickToClose:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$Status;

    move-result-object v6

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$Status;->Open:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v6, v7, :cond_1

    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->isTouchOnSurface(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 835
    goto :goto_0

    .line 837
    :cond_1
    iget-object v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipeDeniers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/daimajia/swipe/SwipeLayout$SwipeDenier;

    .line 838
    .local v1, "denier":Lcom/daimajia/swipe/SwipeLayout$SwipeDenier;
    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/daimajia/swipe/SwipeLayout$SwipeDenier;->shouldDenySwipe(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 843
    .end local v1    # "denier":Lcom/daimajia/swipe/SwipeLayout$SwipeDenier;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 876
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 878
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 845
    :pswitch_0
    iget-object v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 846
    iput-boolean v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    .line 847
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lcom/daimajia/swipe/SwipeLayout;->sX:F

    .line 848
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/daimajia/swipe/SwipeLayout;->sY:F

    .line 850
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$Status;

    move-result-object v4

    sget-object v6, Lcom/daimajia/swipe/SwipeLayout$Status;->Middle:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v4, v6, :cond_4

    .line 851
    iput-boolean v5, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    goto :goto_1

    .line 855
    :pswitch_1
    iget-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    .line 856
    .local v0, "beforeCheck":Z
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->checkCanDrag(Landroid/view/MotionEvent;)V

    .line 857
    iget-boolean v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    if-eqz v6, :cond_5

    .line 858
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 859
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_5

    .line 860
    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 863
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_5
    if-nez v0, :cond_4

    iget-boolean v5, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_4

    goto :goto_0

    .line 872
    .end local v0    # "beforeCheck":Z
    :pswitch_2
    iput-boolean v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    .line 873
    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 843
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->updateBottomViews()V

    .line 723
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/daimajia/swipe/SwipeLayout$OnLayout;

    invoke-interface {v1, p0}, Lcom/daimajia/swipe/SwipeLayout$OnLayout;->onLayout(Lcom/daimajia/swipe/SwipeLayout;)V

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 885
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->isSwipeEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 916
    :cond_0
    :goto_0
    return v1

    .line 887
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 888
    .local v0, "action":I
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 890
    packed-switch v0, :pswitch_data_0

    .line 913
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 916
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 892
    :pswitch_0
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/daimajia/swipe/SwipeLayout;->sX:F

    .line 894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/daimajia/swipe/SwipeLayout;->sY:F

    .line 899
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->checkCanDrag(Landroid/view/MotionEvent;)V

    .line 900
    iget-boolean v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 901
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 902
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 908
    :pswitch_2
    iput-boolean v1, p0, Lcom/daimajia/swipe/SwipeLayout;->mIsBeingDragged:Z

    .line 909
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1442
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1443
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/daimajia/swipe/SwipeLayout$DragEdge;Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1444
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1447
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/daimajia/swipe/SwipeLayout$DragEdge;Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1246
    invoke-virtual {p0, v0, v0}, Lcom/daimajia/swipe/SwipeLayout;->open(ZZ)V

    .line 1247
    return-void
.end method

.method public open(ZZ)V
    .locals 10
    .param p1, "smooth"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v5

    .local v5, "surface":Landroid/view/View;
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v1

    .line 1255
    .local v1, "bottom":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1259
    :cond_0
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/daimajia/swipe/SwipeLayout;->computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 1260
    .local v4, "rect":Landroid/graphics/Rect;
    if-eqz p1, :cond_1

    .line 1261
    iget-object v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v5, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1279
    :goto_1
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->invalidate()V

    goto :goto_0

    .line 1263
    :cond_1
    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v2, v6, v7

    .line 1264
    .local v2, "dx":I
    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v3, v6, v7

    .line 1265
    .local v3, "dy":I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1266
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getShowMode()Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v6

    sget-object v7, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v6, v7, :cond_2

    .line 1267
    sget-object v6, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    invoke-direct {p0, v6, v4}, Lcom/daimajia/swipe/SwipeLayout;->computeBottomLayoutAreaViaSurface(Lcom/daimajia/swipe/SwipeLayout$ShowMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1268
    .local v0, "bRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 1269
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1272
    .end local v0    # "bRect":Landroid/graphics/Rect;
    :cond_2
    if-eqz p2, :cond_3

    .line 1273
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/daimajia/swipe/SwipeLayout;->dispatchRevealEvent(IIII)V

    .line 1274
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/daimajia/swipe/SwipeLayout;->dispatchSwipeEvent(IIII)V

    goto :goto_1

    .line 1276
    :cond_3
    invoke-direct {p0}, Lcom/daimajia/swipe/SwipeLayout;->safeBottomView()V

    goto :goto_1
.end method

.method protected processHandRelease(FFZ)V
    .locals 7
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F
    .param p3, "isCloseBeforeDragged"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1200
    iget-object v5, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->getMinVelocity()F

    move-result v1

    .line 1201
    .local v1, "minVelocity":F
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v3

    .line 1202
    .local v3, "surfaceView":Landroid/view/View;
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    .line 1203
    .local v0, "currentDragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    if-eqz p3, :cond_2

    const/high16 v4, 0x3e800000    # 0.25f

    .line 1207
    .local v4, "willOpenPercent":F
    :goto_1
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v0, v5, :cond_6

    .line 1208
    cmpl-float v5, p1, v1

    if-lez v5, :cond_3

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->open()V

    goto :goto_0

    .line 1206
    .end local v4    # "willOpenPercent":F
    :cond_2
    const/high16 v4, 0x3f400000    # 0.75f

    goto :goto_1

    .line 1209
    .restart local v4    # "willOpenPercent":F
    :cond_3
    neg-float v5, v1

    cmpg-float v5, p1, v5

    if-gez v5, :cond_4

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->close()V

    goto :goto_0

    .line 1211
    :cond_4
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1212
    .local v2, "openPercent":F
    cmpl-float v5, v2, v4

    if-lez v5, :cond_5

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->open()V

    goto :goto_0

    .line 1213
    :cond_5
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->close()V

    goto :goto_0

    .line 1215
    .end local v2    # "openPercent":F
    :cond_6
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v0, v5, :cond_a

    .line 1216
    cmpl-float v5, p1, v1

    if-lez v5, :cond_7

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->close()V

    goto :goto_0

    .line 1217
    :cond_7
    neg-float v5, v1

    cmpg-float v5, p1, v5

    if-gez v5, :cond_8

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->open()V

    goto :goto_0

    .line 1219
    :cond_8
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1220
    .restart local v2    # "openPercent":F
    cmpl-float v5, v2, v4

    if-lez v5, :cond_9

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->open()V

    goto :goto_0

    .line 1221
    :cond_9
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->close()V

    goto :goto_0

    .line 1223
    .end local v2    # "openPercent":F
    :cond_a
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v0, v5, :cond_e

    .line 1224
    cmpl-float v5, p2, v1

    if-lez v5, :cond_b

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->open()V

    goto :goto_0

    .line 1225
    :cond_b
    neg-float v5, v1

    cmpg-float v5, p2, v5

    if-gez v5, :cond_c

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->close()V

    goto :goto_0

    .line 1227
    :cond_c
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1228
    .restart local v2    # "openPercent":F
    cmpl-float v5, v2, v4

    if-lez v5, :cond_d

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->open()V

    goto/16 :goto_0

    .line 1229
    :cond_d
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->close()V

    goto/16 :goto_0

    .line 1231
    .end local v2    # "openPercent":F
    :cond_e
    sget-object v5, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v0, v5, :cond_0

    .line 1232
    cmpl-float v5, p2, v1

    if-lez v5, :cond_f

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->close()V

    goto/16 :goto_0

    .line 1233
    :cond_f
    neg-float v5, v1

    cmpg-float v5, p2, v5

    if-gez v5, :cond_10

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->open()V

    goto/16 :goto_0

    .line 1235
    :cond_10
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1236
    .restart local v2    # "openPercent":F
    cmpl-float v5, v2, v4

    if-lez v5, :cond_11

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->open()V

    goto/16 :goto_0

    .line 1237
    :cond_11
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->close()V

    goto/16 :goto_0
.end method

.method public setBottomSwipeEnabled(Z)V
    .locals 2
    .param p1, "bottomSwipeEnabled"    # Z

    .prologue
    .line 971
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipesEnabled:[Z

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    .line 972
    return-void
.end method

.method public setBottomViewIds(IIII)V
    .locals 2
    .param p1, "leftId"    # I
    .param p2, "rightId"    # I
    .param p3, "topId"    # I
    .param p4, "bottomId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1484
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/daimajia/swipe/SwipeLayout;->addDrag(Lcom/daimajia/swipe/SwipeLayout$DragEdge;Landroid/view/View;)V

    .line 1485
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {p0, p2}, Lcom/daimajia/swipe/SwipeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/daimajia/swipe/SwipeLayout;->addDrag(Lcom/daimajia/swipe/SwipeLayout$DragEdge;Landroid/view/View;)V

    .line 1486
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {p0, p3}, Lcom/daimajia/swipe/SwipeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/daimajia/swipe/SwipeLayout;->addDrag(Lcom/daimajia/swipe/SwipeLayout$DragEdge;Landroid/view/View;)V

    .line 1487
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {p0, p4}, Lcom/daimajia/swipe/SwipeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/daimajia/swipe/SwipeLayout;->addDrag(Lcom/daimajia/swipe/SwipeLayout$DragEdge;Landroid/view/View;)V

    .line 1488
    return-void
.end method

.method public setClickToClose(Z)V
    .locals 0
    .param p1, "mClickToClose"    # Z

    .prologue
    .line 923
    iput-boolean p1, p0, Lcom/daimajia/swipe/SwipeLayout;->mClickToClose:Z

    .line 924
    return-void
.end method

.method public setDragDistance(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 1108
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1109
    :cond_0
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I

    .line 1110
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->requestLayout()V

    .line 1111
    return-void
.end method

.method public setDragEdge(Lcom/daimajia/swipe/SwipeLayout$DragEdge;)V
    .locals 2
    .param p1, "dragEdge"    # Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1435
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    :cond_0
    invoke-direct {p0, p1}, Lcom/daimajia/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/daimajia/swipe/SwipeLayout$DragEdge;)V

    .line 1439
    return-void
.end method

.method public setDragEdges(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/daimajia/swipe/SwipeLayout$DragEdge;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1461
    .local p1, "dragEdges":Ljava/util/List;, "Ljava/util/List<Lcom/daimajia/swipe/SwipeLayout$DragEdge;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1462
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    .line 1463
    .local v0, "dragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout;->mDragEdges:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v1}, Lcom/daimajia/swipe/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1465
    .end local v0    # "dragEdge":Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout;->DefaultDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1466
    :cond_1
    sget-object v3, Lcom/daimajia/swipe/SwipeLayout;->DefaultDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-direct {p0, v3}, Lcom/daimajia/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/daimajia/swipe/SwipeLayout$DragEdge;)V

    .line 1470
    :goto_1
    return-void

    .line 1468
    :cond_2
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-direct {p0, v3}, Lcom/daimajia/swipe/SwipeLayout;->setCurrentDragEdge(Lcom/daimajia/swipe/SwipeLayout$DragEdge;)V

    goto :goto_1
.end method

.method public varargs setDragEdges([Lcom/daimajia/swipe/SwipeLayout$DragEdge;)V
    .locals 1
    .param p1, "mDragEdges"    # [Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1475
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/daimajia/swipe/SwipeLayout;->setDragEdges(Ljava/util/List;)V

    .line 1476
    return-void
.end method

.method public setLeftSwipeEnabled(Z)V
    .locals 2
    .param p1, "leftSwipeEnabled"    # Z

    .prologue
    .line 941
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipesEnabled:[Z

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    .line 942
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1051
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1052
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->clickListener:Landroid/view/View$OnClickListener;

    .line 1053
    return-void
.end method

.method public setOnDoubleClickListener(Lcom/daimajia/swipe/SwipeLayout$DoubleClickListener;)V
    .locals 0
    .param p1, "doubleClickListener"    # Lcom/daimajia/swipe/SwipeLayout$DoubleClickListener;

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->mDoubleClickListener:Lcom/daimajia/swipe/SwipeLayout$DoubleClickListener;

    .line 1421
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 1057
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1058
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 1059
    return-void
.end method

.method public setRightSwipeEnabled(Z)V
    .locals 2
    .param p1, "rightSwipeEnabled"    # Z

    .prologue
    .line 951
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipesEnabled:[Z

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    .line 952
    return-void
.end method

.method public setShowMode(Lcom/daimajia/swipe/SwipeLayout$ShowMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout;->mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    .line 1122
    invoke-virtual {p0}, Lcom/daimajia/swipe/SwipeLayout;->requestLayout()V

    .line 1123
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 927
    iput-boolean p1, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipeEnabled:Z

    .line 928
    return-void
.end method

.method public setTopSwipeEnabled(Z)V
    .locals 2
    .param p1, "topSwipeEnabled"    # Z

    .prologue
    .line 961
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout;->mSwipesEnabled:[Z

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aput-boolean p1, v0, v1

    .line 962
    return-void
.end method
