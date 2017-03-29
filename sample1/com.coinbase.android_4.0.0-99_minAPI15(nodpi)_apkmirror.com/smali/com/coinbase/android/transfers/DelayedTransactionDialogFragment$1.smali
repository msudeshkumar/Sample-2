.class Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$1;
.super Ljava/lang/Object;
.source "DelayedTransactionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment$1;->this$0:Lcom/coinbase/android/transfers/DelayedTransactionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 96
    return-void
.end method
