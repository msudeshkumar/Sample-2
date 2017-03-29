.class Lcom/coinbase/android/pin/PINSettingDialogFragment$2;
.super Ljava/lang/Object;
.source "PINSettingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/pin/PINSettingDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pin/PINSettingDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pin/PINSettingDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/pin/PINSettingDialogFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/coinbase/android/pin/PINSettingDialogFragment$2;->this$0:Lcom/coinbase/android/pin/PINSettingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 111
    return-void
.end method
