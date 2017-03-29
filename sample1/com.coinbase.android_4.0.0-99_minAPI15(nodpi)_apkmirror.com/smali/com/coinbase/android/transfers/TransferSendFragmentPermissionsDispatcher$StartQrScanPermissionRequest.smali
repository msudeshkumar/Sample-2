.class final Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher$StartQrScanPermissionRequest;
.super Ljava/lang/Object;
.source "TransferSendFragmentPermissionsDispatcher.java"

# interfaces
.implements Lpermissions/dispatcher/PermissionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartQrScanPermissionRequest"
.end annotation


# instance fields
.field private final weakTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/coinbase/android/transfers/TransferSendFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/coinbase/android/transfers/TransferSendFragment;)V
    .locals 1
    .param p1, "target"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher$StartQrScanPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/transfers/TransferSendFragment;
    .param p2, "x1"    # Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher$StartQrScanPermissionRequest;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher$StartQrScanPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/transfers/TransferSendFragment;

    .line 88
    .local v0, "target":Lcom/coinbase/android/transfers/TransferSendFragment;
    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->showDeniedForCamera()V

    goto :goto_0
.end method

.method public proceed()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher$StartQrScanPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/transfers/TransferSendFragment;

    .line 81
    .local v0, "target":Lcom/coinbase/android/transfers/TransferSendFragment;
    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    # getter for: Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->PERMISSION_STARTQRSCAN:[Ljava/lang/String;
    invoke-static {}, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->access$100()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/transfers/TransferSendFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method
