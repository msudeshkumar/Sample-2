.class Lcom/coinbase/android/transfers/TransferSendFragment$5;
.super Ljava/lang/Object;
.source "TransferSendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/TransferSendFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

.field final synthetic val$reference:Lcom/coinbase/android/transfers/TransferSendFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/coinbase/android/transfers/TransferSendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$5;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    iput-object p2, p0, Lcom/coinbase/android/transfers/TransferSendFragment$5;->val$reference:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$5;->val$reference:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->startQrScanWithCheck(Lcom/coinbase/android/transfers/TransferSendFragment;)V

    .line 387
    return-void
.end method
