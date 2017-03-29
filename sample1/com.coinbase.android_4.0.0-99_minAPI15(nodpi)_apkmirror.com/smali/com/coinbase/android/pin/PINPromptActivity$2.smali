.class Lcom/coinbase/android/pin/PINPromptActivity$2;
.super Ljava/util/TimerTask;
.source "PINPromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/pin/PINPromptActivity;->signout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pin/PINPromptActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pin/PINPromptActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/pin/PINPromptActivity;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/coinbase/android/pin/PINPromptActivity$2;->this$0:Lcom/coinbase/android/pin/PINPromptActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity$2;->this$0:Lcom/coinbase/android/pin/PINPromptActivity;

    iget-object v0, v0, Lcom/coinbase/android/pin/PINPromptActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->signout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity$2;->this$0:Lcom/coinbase/android/pin/PINPromptActivity;

    # getter for: Lcom/coinbase/android/pin/PINPromptActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/coinbase/android/pin/PINPromptActivity;->access$500(Lcom/coinbase/android/pin/PINPromptActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 324
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity$2;->this$0:Lcom/coinbase/android/pin/PINPromptActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/pin/PINPromptActivity;->redirectToLoginPage()V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/pin/PINPromptActivity$2;->this$0:Lcom/coinbase/android/pin/PINPromptActivity;

    # invokes: Lcom/coinbase/android/pin/PINPromptActivity;->signout()V
    invoke-static {v0}, Lcom/coinbase/android/pin/PINPromptActivity;->access$600(Lcom/coinbase/android/pin/PINPromptActivity;)V

    goto :goto_0
.end method
