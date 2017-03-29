.class Lcom/coinbase/android/signin/AcceptTermsActivity$6;
.super Ljava/lang/Object;
.source "AcceptTermsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/AcceptTermsActivity;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/AcceptTermsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/AcceptTermsActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$6;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 176
    iget-object v1, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$6;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v1, v1, Lcom/coinbase/android/signin/AcceptTermsActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$6;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v1, v1, Lcom/coinbase/android/signin/AcceptTermsActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->signout()Z

    .line 180
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$6;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    const-class v2, Lcom/coinbase/android/signin/IntroActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$6;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/signin/AcceptTermsActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    iget-object v1, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$6;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/signin/AcceptTermsActivity;->finish()V

    .line 184
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Reject Terms of Service"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 185
    return-void
.end method
