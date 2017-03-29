.class Lcom/coinbase/android/transfers/TransferSendFragment$10;
.super Ljava/lang/Object;
.source "TransferSendFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/TransferSendFragment;->showRationaleDialog(ILpermissions/dispatcher/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

.field final synthetic val$request:Lpermissions/dispatcher/PermissionRequest;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/TransferSendFragment;Lpermissions/dispatcher/PermissionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 978
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$10;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    iput-object p2, p0, Lcom/coinbase/android/transfers/TransferSendFragment$10;->val$request:Lpermissions/dispatcher/PermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 981
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$10;->val$request:Lpermissions/dispatcher/PermissionRequest;

    invoke-interface {v0}, Lpermissions/dispatcher/PermissionRequest;->cancel()V

    .line 982
    return-void
.end method
