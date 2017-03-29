.class Lcom/coinbase/android/signin/SignupActivity$3;
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
    .line 167
    iput-object p1, p0, Lcom/coinbase/android/signin/SignupActivity$3;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity$3;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    # getter for: Lcom/coinbase/android/signin/SignupActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;
    invoke-static {v0}, Lcom/coinbase/android/signin/SignupActivity;->access$100(Lcom/coinbase/android/signin/SignupActivity;)Lcom/coinbase/api/LoginManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->signout()Z

    .line 171
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity$3;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/SignupActivity;->mEmailInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity$3;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/SignupActivity;->mPasswordInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity$3;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/SignupActivity;->showSignupForm()V

    .line 174
    return-void
.end method
