.class Lcom/coinbase/android/quickstart/QuickstartManager$3$1;
.super Ljava/lang/Object;
.source "QuickstartManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/quickstart/QuickstartManager$3;->onFinally(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/quickstart/QuickstartManager$3;

.field final synthetic val$method:Lcom/coinbase/v2/models/paymentMethods/Data;


# direct methods
.method constructor <init>(Lcom/coinbase/android/quickstart/QuickstartManager$3;Lcom/coinbase/v2/models/paymentMethods/Data;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/quickstart/QuickstartManager$3;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/coinbase/android/quickstart/QuickstartManager$3$1;->this$1:Lcom/coinbase/android/quickstart/QuickstartManager$3;

    iput-object p2, p0, Lcom/coinbase/android/quickstart/QuickstartManager$3$1;->val$method:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 414
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/coinbase/android/quickstart/QuickstartManager$3$1;->this$1:Lcom/coinbase/android/quickstart/QuickstartManager$3;

    iget-object v2, v2, Lcom/coinbase/android/quickstart/QuickstartManager$3;->val$activity:Landroid/app/Activity;

    const-class v3, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 416
    .local v0, "gson":Lcom/google/gson/Gson;
    const-string v2, "payment_method"

    iget-object v3, p0, Lcom/coinbase/android/quickstart/QuickstartManager$3$1;->val$method:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v2, "manual"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    iget-object v2, p0, Lcom/coinbase/android/quickstart/QuickstartManager$3$1;->this$1:Lcom/coinbase/android/quickstart/QuickstartManager$3;

    iget-object v2, v2, Lcom/coinbase/android/quickstart/QuickstartManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 419
    return-void
.end method
