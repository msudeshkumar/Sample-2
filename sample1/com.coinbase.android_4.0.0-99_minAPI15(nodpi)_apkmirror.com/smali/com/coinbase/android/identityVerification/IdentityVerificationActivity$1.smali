.class Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$1;
.super Ljava/lang/Object;
.source "IdentityVerificationActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

.field final synthetic val$firstIsTitle:Z


# direct methods
.method constructor <init>(Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$1;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    iput-boolean p2, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$1;->val$firstIsTitle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 4

    .prologue
    .line 64
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$1;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    invoke-virtual {v2}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$1;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    iget-boolean v3, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$1;->val$firstIsTitle:Z

    # invokes: Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->updateTitle(Z)V
    invoke-static {v2, v3}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->access$000(Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;Z)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$1;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    invoke-virtual {v2}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$1;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    invoke-virtual {v3}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v2

    invoke-interface {v2}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$1;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    invoke-virtual {v2}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 70
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity$1;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    instance-of v3, v0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    # invokes: Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->updateTitle(Z)V
    invoke-static {v2, v3}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->access$000(Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;Z)V

    goto :goto_0
.end method
