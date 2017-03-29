.class Lcom/coinbase/android/accounts/AccountsFragment$3;
.super Ljava/lang/Object;
.source "AccountsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/accounts/AccountsFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/accounts/AccountsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/AccountsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/AccountsFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/coinbase/android/accounts/AccountsFragment$3;->this$0:Lcom/coinbase/android/accounts/AccountsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountsFragment$3;->this$0:Lcom/coinbase/android/accounts/AccountsFragment;

    iput p2, v0, Lcom/coinbase/android/accounts/AccountsFragment;->selectedIndex:I

    .line 56
    return-void
.end method
