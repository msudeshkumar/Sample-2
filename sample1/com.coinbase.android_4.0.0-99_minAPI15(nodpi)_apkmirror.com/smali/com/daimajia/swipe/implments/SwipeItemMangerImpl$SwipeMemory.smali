.class Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;
.super Lcom/daimajia/swipe/SimpleSwipeListener;
.source "SwipeItemMangerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeMemory"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;


# direct methods
.method constructor <init>(Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 201
    iput-object p1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    invoke-direct {p0}, Lcom/daimajia/swipe/SimpleSwipeListener;-><init>()V

    .line 202
    iput p2, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->position:I

    .line 203
    return-void
.end method


# virtual methods
.method public onClose(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    # getter for: Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mode:Lcom/daimajia/swipe/util/Attributes$Mode;
    invoke-static {v0}, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->access$000(Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;)Lcom/daimajia/swipe/util/Attributes$Mode;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/util/Attributes$Mode;->Multiple:Lcom/daimajia/swipe/util/Attributes$Mode;

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    iget-object v0, v0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    iget v1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    const/4 v1, -0x1

    iput v1, v0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_0
.end method

.method public onOpen(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    # getter for: Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mode:Lcom/daimajia/swipe/util/Attributes$Mode;
    invoke-static {v0}, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->access$000(Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;)Lcom/daimajia/swipe/util/Attributes$Mode;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/util/Attributes$Mode;->Multiple:Lcom/daimajia/swipe/util/Attributes$Mode;

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    iget-object v0, v0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    iget v1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->closeAllExcept(Lcom/daimajia/swipe/SwipeLayout;)V

    .line 227
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    iget v1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->position:I

    iput v1, v0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_0
.end method

.method public onStartOpen(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/daimajia/swipe/SwipeLayout;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    # getter for: Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->mode:Lcom/daimajia/swipe/util/Attributes$Mode;
    invoke-static {v0}, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->access$000(Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;)Lcom/daimajia/swipe/util/Attributes$Mode;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/util/Attributes$Mode;->Single:Lcom/daimajia/swipe/util/Attributes$Mode;

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->this$0:Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl;->closeAllExcept(Lcom/daimajia/swipe/SwipeLayout;)V

    .line 219
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/daimajia/swipe/implments/SwipeItemMangerImpl$SwipeMemory;->position:I

    .line 233
    return-void
.end method
