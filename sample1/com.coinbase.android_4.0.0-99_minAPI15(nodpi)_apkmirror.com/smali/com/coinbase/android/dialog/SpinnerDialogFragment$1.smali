.class Lcom/coinbase/android/dialog/SpinnerDialogFragment$1;
.super Ljava/lang/Object;
.source "SpinnerDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/dialog/SpinnerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/dialog/SpinnerDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/dialog/SpinnerDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/dialog/SpinnerDialogFragment;

    .prologue
    .line 36
    .local p0, "this":Lcom/coinbase/android/dialog/SpinnerDialogFragment$1;, "Lcom/coinbase/android/dialog/SpinnerDialogFragment$1;"
    iput-object p1, p0, Lcom/coinbase/android/dialog/SpinnerDialogFragment$1;->this$0:Lcom/coinbase/android/dialog/SpinnerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 40
    .local p0, "this":Lcom/coinbase/android/dialog/SpinnerDialogFragment$1;, "Lcom/coinbase/android/dialog/SpinnerDialogFragment$1;"
    return-void
.end method
