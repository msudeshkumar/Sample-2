.class Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;
.super Ljava/lang/Object;
.source "SwipeItemMangerImpl.java"

# interfaces
.implements Lcom/daimajia/swipe/SwipeLayout$OnLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnLayoutListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;


# direct methods
.method constructor <init>(Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 178
    iput-object p1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p2, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;->position:I

    .line 180
    return-void
.end method


# virtual methods
.method public onLayout(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 3
    .param p1, "v"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    iget v1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;->position:I

    invoke-virtual {v0, v1}, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->isOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1, v2, v2}, Lcom/daimajia/swipe/SwipeLayout;->open(ZZ)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p1, v2, v2}, Lcom/daimajia/swipe/SwipeLayout;->close(ZZ)V

    goto :goto_0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$OnLayoutListener;->position:I

    .line 184
    return-void
.end method
