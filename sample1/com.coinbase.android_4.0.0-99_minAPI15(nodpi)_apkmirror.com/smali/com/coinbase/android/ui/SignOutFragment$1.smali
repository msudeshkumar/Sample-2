.class Lcom/coinbase/android/ui/SignOutFragment$1;
.super Ljava/lang/Object;
.source "SignOutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/ui/SignOutFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/ui/SignOutFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/ui/SignOutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/ui/SignOutFragment;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/coinbase/android/ui/SignOutFragment$1;->this$0:Lcom/coinbase/android/ui/SignOutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/coinbase/android/ui/SignOutFragment$1;->this$0:Lcom/coinbase/android/ui/SignOutFragment;

    # getter for: Lcom/coinbase/android/ui/SignOutFragment;->mListener:Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;
    invoke-static {v0}, Lcom/coinbase/android/ui/SignOutFragment;->access$000(Lcom/coinbase/android/ui/SignOutFragment;)Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;->onConfirmSignOut()V

    .line 47
    return-void
.end method
