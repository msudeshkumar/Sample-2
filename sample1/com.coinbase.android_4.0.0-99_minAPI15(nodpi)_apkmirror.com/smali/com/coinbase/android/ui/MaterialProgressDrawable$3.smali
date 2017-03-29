.class Lcom/coinbase/android/ui/MaterialProgressDrawable$3;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/ui/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/coinbase/android/ui/MaterialProgressDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/ui/MaterialProgressDrawable;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$3;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$3;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->invalidateSelf()V

    .line 379
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 383
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$3;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    invoke-virtual {v0, p2, p3, p4}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 384
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$3;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    invoke-virtual {v0, p2}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method
