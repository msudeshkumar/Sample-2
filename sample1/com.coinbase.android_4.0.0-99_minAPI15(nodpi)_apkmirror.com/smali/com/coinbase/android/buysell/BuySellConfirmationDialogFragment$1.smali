.class Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "BuySellConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$1;->this$0:Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 79
    return-void
.end method
