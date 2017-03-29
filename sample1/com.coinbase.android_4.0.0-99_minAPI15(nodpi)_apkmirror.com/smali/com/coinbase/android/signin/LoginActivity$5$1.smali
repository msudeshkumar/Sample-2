.class Lcom/coinbase/android/signin/LoginActivity$5$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/LoginActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/signin/LoginActivity$5;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/LoginActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/signin/LoginActivity$5;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/coinbase/android/signin/LoginActivity$5$1;->this$1:Lcom/coinbase/android/signin/LoginActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 477
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$5$1;->this$1:Lcom/coinbase/android/signin/LoginActivity$5;

    iget-object v0, v0, Lcom/coinbase/android/signin/LoginActivity$5;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    new-instance v1, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;

    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$5$1;->this$1:Lcom/coinbase/android/signin/LoginActivity$5;

    iget-object v2, v2, Lcom/coinbase/android/signin/LoginActivity$5;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    iget-object v3, p0, Lcom/coinbase/android/signin/LoginActivity$5$1;->this$1:Lcom/coinbase/android/signin/LoginActivity$5;

    iget-object v3, v3, Lcom/coinbase/android/signin/LoginActivity$5;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-direct {v1, v2, v3}, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;-><init>(Lcom/coinbase/android/signin/LoginActivity;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/coinbase/android/signin/LoginActivity;->mAttemptSigninTask:Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;

    .line 478
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$5$1;->this$1:Lcom/coinbase/android/signin/LoginActivity$5;

    iget-object v0, v0, Lcom/coinbase/android/signin/LoginActivity$5;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/LoginActivity;->mAttemptSigninTask:Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->execute()V

    .line 479
    return-void
.end method
