.class Lcom/coinbase/android/signin/IntroActivity$2;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/IntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/IntroActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/IntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/IntroActivity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/coinbase/android/signin/IntroActivity$2;->this$0:Lcom/coinbase/android/signin/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coinbase/android/signin/IntroActivity$2;->this$0:Lcom/coinbase/android/signin/IntroActivity;

    const-class v2, Lcom/coinbase/android/signin/SignupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "signupIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/coinbase/android/signin/IntroActivity$2;->this$0:Lcom/coinbase/android/signin/IntroActivity;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/signin/IntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Sign up button click"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    return-void
.end method
