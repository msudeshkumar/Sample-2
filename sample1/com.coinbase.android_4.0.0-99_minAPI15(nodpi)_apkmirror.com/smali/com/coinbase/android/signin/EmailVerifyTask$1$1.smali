.class Lcom/coinbase/android/signin/EmailVerifyTask$1$1;
.super Ljava/lang/Object;
.source "EmailVerifyTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/EmailVerifyTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/signin/EmailVerifyTask$1;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/EmailVerifyTask$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/signin/EmailVerifyTask$1;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/coinbase/android/signin/EmailVerifyTask$1$1;->this$1:Lcom/coinbase/android/signin/EmailVerifyTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask$1$1;->this$1:Lcom/coinbase/android/signin/EmailVerifyTask$1;

    iget-object v0, v0, Lcom/coinbase/android/signin/EmailVerifyTask$1;->this$0:Lcom/coinbase/android/signin/EmailVerifyTask;

    new-instance v1, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;

    iget-object v2, p0, Lcom/coinbase/android/signin/EmailVerifyTask$1$1;->this$1:Lcom/coinbase/android/signin/EmailVerifyTask$1;

    iget-object v2, v2, Lcom/coinbase/android/signin/EmailVerifyTask$1;->this$0:Lcom/coinbase/android/signin/EmailVerifyTask;

    iget-object v3, p0, Lcom/coinbase/android/signin/EmailVerifyTask$1$1;->this$1:Lcom/coinbase/android/signin/EmailVerifyTask$1;

    iget-object v3, v3, Lcom/coinbase/android/signin/EmailVerifyTask$1;->this$0:Lcom/coinbase/android/signin/EmailVerifyTask;

    iget-object v3, v3, Lcom/coinbase/android/signin/EmailVerifyTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;-><init>(Lcom/coinbase/android/signin/EmailVerifyTask;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/coinbase/android/signin/EmailVerifyTask;->mGetUserTask:Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;

    .line 87
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask$1$1;->this$1:Lcom/coinbase/android/signin/EmailVerifyTask$1;

    iget-object v0, v0, Lcom/coinbase/android/signin/EmailVerifyTask$1;->this$0:Lcom/coinbase/android/signin/EmailVerifyTask;

    iget-object v0, v0, Lcom/coinbase/android/signin/EmailVerifyTask;->mGetUserTask:Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;->execute()V

    .line 88
    return-void
.end method
