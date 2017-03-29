.class Lcom/coinbase/android/phone/VerifyPhoneHandler$1;
.super Ljava/lang/Object;
.source "VerifyPhoneHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/phone/VerifyPhoneHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/VerifyPhoneHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 72
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$000(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$000(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$000(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 75
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$100(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    move-result-object v2

    invoke-interface {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    iget-object v3, v3, Lcom/coinbase/android/phone/VerifyPhoneHandler;->mSmsReceiver:Lroboguice/receiver/RoboBroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$100(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    move-result-object v2

    invoke-interface {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->getCallerFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 80
    .local v1, "manager":Landroid/support/v4/app/FragmentManager;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mPhoneNumber:Lcom/coinbase/api/internal/models/phoneNumber/Data;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$200(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/coinbase/api/internal/models/phoneNumber/Data;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$100(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    move-result-object v2

    invoke-interface {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mPhoneNumber:Lcom/coinbase/api/internal/models/phoneNumber/Data;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$200(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/coinbase/api/internal/models/phoneNumber/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/phoneNumber/Data;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mEnteredNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$300(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mEnteredToken:Ljava/lang/String;
    invoke-static {v4}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$400(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$1;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mEnteredCountryCode:Ljava/lang/String;
    invoke-static {v5}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$500(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    move-result-object v2

    const-string v3, "verify"

    .line 82
    invoke-virtual {v2, v1, v3}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 87
    :goto_1
    return-void

    .line 76
    .end local v1    # "manager":Landroid/support/v4/app/FragmentManager;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VerifyPhoneHandler"

    const-string v3, "Receiver not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "manager":Landroid/support/v4/app/FragmentManager;
    :cond_1
    const-string v2, "VerifyPhoneHandler"

    const-string v3, "Dialog not shown as app not in foreground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
