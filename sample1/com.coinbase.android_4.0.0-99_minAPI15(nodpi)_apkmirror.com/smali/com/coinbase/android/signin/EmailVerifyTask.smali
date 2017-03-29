.class public Lcom/coinbase/android/signin/EmailVerifyTask;
.super Ljava/lang/Object;
.source "EmailVerifyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;,
        Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;
    }
.end annotation


# static fields
.field private static final RETRY_WAIT_TIME:I = 0x7d0


# instance fields
.field mActivity:Landroid/app/Activity;

.field mEmailVerifyRetryTimer:Ljava/util/Timer;

.field mGetUserTask:Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;

.field mListener:Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask;->mEmailVerifyRetryTimer:Ljava/util/Timer;

    .line 59
    iput-object p1, p0, Lcom/coinbase/android/signin/EmailVerifyTask;->mActivity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/coinbase/android/signin/EmailVerifyTask;->mListener:Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;

    .line 61
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask;->mEmailVerifyRetryTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask;->mEmailVerifyRetryTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask;->mGetUserTask:Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask;->mGetUserTask:Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;->cancel(Z)Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask;->mGetUserTask:Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;

    .line 73
    :cond_1
    return-void
.end method

.method public execute()V
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/coinbase/android/signin/EmailVerifyTask;->cancel()V

    .line 78
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask;->mEmailVerifyRetryTimer:Ljava/util/Timer;

    .line 80
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask;->mEmailVerifyRetryTimer:Ljava/util/Timer;

    new-instance v1, Lcom/coinbase/android/signin/EmailVerifyTask$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/signin/EmailVerifyTask$1;-><init>(Lcom/coinbase/android/signin/EmailVerifyTask;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 92
    return-void
.end method
