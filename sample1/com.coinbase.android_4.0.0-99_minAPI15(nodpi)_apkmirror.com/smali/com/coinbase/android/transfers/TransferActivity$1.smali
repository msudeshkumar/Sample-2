.class Lcom/coinbase/android/transfers/TransferActivity$1;
.super Ljava/lang/Object;
.source "TransferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/TransferActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/TransferActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/TransferActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/TransferActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferActivity$1;->this$0:Lcom/coinbase/android/transfers/TransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferActivity$1;->this$0:Lcom/coinbase/android/transfers/TransferActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/transfers/TransferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferActivity$1;->this$0:Lcom/coinbase/android/transfers/TransferActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/transfers/TransferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d00fe

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 55
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/coinbase/android/transfers/TransferSendFragment;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Lcom/coinbase/android/transfers/TransferSendFragment;

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->hideKeyboard()V

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferActivity$1;->this$0:Lcom/coinbase/android/transfers/TransferActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/transfers/TransferActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferActivity$1;->this$0:Lcom/coinbase/android/transfers/TransferActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/transfers/TransferActivity;->finish()V

    goto :goto_0
.end method
