.class Lcom/coinbase/android/dialog/SpinnerDialogFragment$2;
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

.field final synthetic val$options:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/coinbase/android/dialog/SpinnerDialogFragment;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/dialog/SpinnerDialogFragment;

    .prologue
    .line 43
    .local p0, "this":Lcom/coinbase/android/dialog/SpinnerDialogFragment$2;, "Lcom/coinbase/android/dialog/SpinnerDialogFragment$2;"
    iput-object p1, p0, Lcom/coinbase/android/dialog/SpinnerDialogFragment$2;->this$0:Lcom/coinbase/android/dialog/SpinnerDialogFragment;

    iput-object p2, p0, Lcom/coinbase/android/dialog/SpinnerDialogFragment$2;->val$options:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/coinbase/android/dialog/SpinnerDialogFragment$2;, "Lcom/coinbase/android/dialog/SpinnerDialogFragment$2;"
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 47
    .local v0, "selectedPosition":I
    iget-object v1, p0, Lcom/coinbase/android/dialog/SpinnerDialogFragment$2;->this$0:Lcom/coinbase/android/dialog/SpinnerDialogFragment;

    iget-object v2, p0, Lcom/coinbase/android/dialog/SpinnerDialogFragment$2;->val$options:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/coinbase/android/dialog/SpinnerDialogFragment;->onChosenValue(Ljava/lang/Object;)V

    .line 48
    return-void
.end method
