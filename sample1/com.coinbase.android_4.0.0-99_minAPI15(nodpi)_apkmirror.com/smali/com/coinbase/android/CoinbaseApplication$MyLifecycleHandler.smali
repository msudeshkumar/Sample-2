.class public Lcom/coinbase/android/CoinbaseApplication$MyLifecycleHandler;
.super Ljava/lang/Object;
.source "CoinbaseApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/CoinbaseApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLifecycleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/CoinbaseApplication;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/CoinbaseApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/CoinbaseApplication;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/coinbase/android/CoinbaseApplication$MyLifecycleHandler;->this$0:Lcom/coinbase/android/CoinbaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    # ++operator for: Lcom/coinbase/android/CoinbaseApplication;->paused:I
    invoke-static {}, Lcom/coinbase/android/CoinbaseApplication;->access$104()I

    .line 93
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    # ++operator for: Lcom/coinbase/android/CoinbaseApplication;->resumed:I
    invoke-static {}, Lcom/coinbase/android/CoinbaseApplication;->access$004()I

    .line 87
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 101
    # ++operator for: Lcom/coinbase/android/CoinbaseApplication;->started:I
    invoke-static {}, Lcom/coinbase/android/CoinbaseApplication;->access$204()I

    .line 103
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 107
    # ++operator for: Lcom/coinbase/android/CoinbaseApplication;->stopped:I
    invoke-static {}, Lcom/coinbase/android/CoinbaseApplication;->access$304()I

    .line 109
    invoke-static {}, Lcom/coinbase/android/CoinbaseApplication;->isApplicationVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coinbase/android/pin/PINManager;->setPinEntered(Landroid/content/Context;Z)V

    .line 113
    :cond_0
    return-void
.end method
