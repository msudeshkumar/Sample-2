.class Lcom/coinbase/android/signin/LoginActivity$5;
.super Ljava/util/TimerTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/LoginActivity;->onUnconfirmedDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/LoginActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/LoginActivity;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/coinbase/android/signin/LoginActivity$5;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$5;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    new-instance v1, Lcom/coinbase/android/signin/LoginActivity$5$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/LoginActivity$5$1;-><init>(Lcom/coinbase/android/signin/LoginActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/coinbase/android/signin/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method
