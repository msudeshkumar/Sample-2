.class final Lcom/coinbase/android/utils/Utils$2;
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
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$positiveCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/coinbase/android/utils/Utils$2;->val$positiveCallback:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/coinbase/android/utils/Utils$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/coinbase/android/utils/Utils$2;->val$positiveCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/coinbase/android/utils/Utils$2;->val$positiveCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/utils/Utils$2;->val$c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.coinbase.android"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 435
    return-void
.end method
