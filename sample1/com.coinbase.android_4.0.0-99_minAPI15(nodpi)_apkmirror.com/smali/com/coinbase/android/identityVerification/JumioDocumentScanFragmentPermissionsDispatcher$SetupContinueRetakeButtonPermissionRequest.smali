.class final Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher$SetupContinueRetakeButtonPermissionRequest;
.super Ljava/lang/Object;
.source "JumioDocumentScanFragmentPermissionsDispatcher.java"

# interfaces
.implements Lpermissions/dispatcher/PermissionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetupContinueRetakeButtonPermissionRequest"
.end annotation


# instance fields
.field private final weakTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;)V
    .locals 1
    .param p1, "target"    # Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher$SetupContinueRetakeButtonPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;
    .param p2, "x1"    # Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher$1;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher$SetupContinueRetakeButtonPermissionRequest;-><init>(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher$SetupContinueRetakeButtonPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    .line 65
    .local v0, "target":Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;
    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->showDeniedForCamera()V

    goto :goto_0
.end method

.method public proceed()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher$SetupContinueRetakeButtonPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    .line 58
    .local v0, "target":Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;
    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    # getter for: Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher;->PERMISSION_SETUPCONTINUERETAKEBUTTON:[Ljava/lang/String;
    invoke-static {}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher;->access$100()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method
