.class Lcom/coinbase/android/ui/VerifyIdentityDialogFragment$1;
.super Ljava/lang/Object;
.source "VerifyIdentityDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/ui/VerifyIdentityDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/ui/VerifyIdentityDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/ui/VerifyIdentityDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/ui/VerifyIdentityDialogFragment;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/coinbase/android/ui/VerifyIdentityDialogFragment$1;->this$0:Lcom/coinbase/android/ui/VerifyIdentityDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 29
    return-void
.end method
