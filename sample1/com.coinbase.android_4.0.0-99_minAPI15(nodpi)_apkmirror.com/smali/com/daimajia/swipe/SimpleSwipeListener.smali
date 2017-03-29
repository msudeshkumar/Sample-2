.class public Lcom/daimajia/swipe/SimpleSwipeListener;
.super Ljava/lang/Object;
.source "SimpleSwipeListener.java"

# interfaces
.implements Lcom/daimajia/swipe/SwipeLayout$SwipeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 19
    return-void
.end method

.method public onHandRelease(Lcom/daimajia/swipe/SwipeLayout;FF)V
    .locals 0
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 27
    return-void
.end method

.method public onOpen(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 11
    return-void
.end method

.method public onStartClose(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 15
    return-void
.end method

.method public onStartOpen(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 7
    return-void
.end method

.method public onUpdate(Lcom/daimajia/swipe/SwipeLayout;II)V
    .locals 0
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;
    .param p2, "leftOffset"    # I
    .param p3, "topOffset"    # I

    .prologue
    .line 23
    return-void
.end method
