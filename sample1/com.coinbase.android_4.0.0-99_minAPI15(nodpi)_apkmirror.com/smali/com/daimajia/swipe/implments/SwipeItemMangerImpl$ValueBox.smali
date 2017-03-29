.class Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;
.super Ljava/lang/Object;
.source "SwipeItemMangerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValueBox"
.end annotation


# instance fields
.field onLayoutListener:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;

.field position:I

.field swipeMemory:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;

.field final synthetic this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;


# direct methods
.method constructor <init>(Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;ILcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "swipeMemory"    # Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;
    .param p4, "onLayoutListener"    # Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p3, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;->swipeMemory:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;

    .line 169
    iput-object p4, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;->onLayoutListener:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;

    .line 170
    iput p2, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$ValueBox;->position:I

    .line 171
    return-void
.end method
