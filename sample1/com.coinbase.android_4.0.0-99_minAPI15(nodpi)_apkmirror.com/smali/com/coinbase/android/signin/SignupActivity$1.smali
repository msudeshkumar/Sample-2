.class Lcom/coinbase/android/signin/SignupActivity$1;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/SignupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/SignupActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/SignupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/SignupActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/coinbase/android/signin/SignupActivity$1;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity$1;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/SignupActivity;->mValidator:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/Validator;->validate()V

    .line 153
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Sign up page button click"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    return-void
.end method
