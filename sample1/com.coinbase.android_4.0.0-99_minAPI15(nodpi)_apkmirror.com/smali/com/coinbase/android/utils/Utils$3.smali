.class final Lcom/coinbase/android/utils/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/utils/Utils;->getRateNotice(Landroid/content/Context;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$negativeCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/coinbase/android/utils/Utils$3;->val$negativeCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/coinbase/android/utils/Utils$3;->val$negativeCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/coinbase/android/utils/Utils$3;->val$negativeCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 442
    :cond_0
    return-void
.end method
