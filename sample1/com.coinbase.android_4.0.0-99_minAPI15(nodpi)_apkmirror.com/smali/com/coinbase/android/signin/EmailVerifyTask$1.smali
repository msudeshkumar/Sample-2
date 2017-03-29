.class Lcom/coinbase/android/signin/EmailVerifyTask$1;
.super Ljava/util/TimerTask;
.source "EmailVerifyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/EmailVerifyTask;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/EmailVerifyTask;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/EmailVerifyTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/EmailVerifyTask;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/coinbase/android/signin/EmailVerifyTask$1;->this$0:Lcom/coinbase/android/signin/EmailVerifyTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask$1;->this$0:Lcom/coinbase/android/signin/EmailVerifyTask;

    iget-object v0, v0, Lcom/coinbase/android/signin/EmailVerifyTask;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/coinbase/android/signin/EmailVerifyTask$1$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/EmailVerifyTask$1$1;-><init>(Lcom/coinbase/android/signin/EmailVerifyTask$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method
