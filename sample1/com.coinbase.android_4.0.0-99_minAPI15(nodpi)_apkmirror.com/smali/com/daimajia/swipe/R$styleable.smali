.class public final Lcom/daimajia/swipe/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SwipeLayout:[I

.field public static final SwipeLayout_bottomEdgeSwipeOffset:I = 0x4

.field public static final SwipeLayout_clickToClose:I = 0x6

.field public static final SwipeLayout_drag_edge:I = 0x0

.field public static final SwipeLayout_leftEdgeSwipeOffset:I = 0x1

.field public static final SwipeLayout_rightEdgeSwipeOffset:I = 0x2

.field public static final SwipeLayout_show_mode:I = 0x5

.field public static final SwipeLayout_topEdgeSwipeOffset:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/daimajia/swipe/R$styleable;->SwipeLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0100b3
        0x7f0100b4
        0x7f0100b5
        0x7f0100b6
        0x7f0100b7
        0x7f0100b8
        0x7f0100b9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
