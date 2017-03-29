.class final Lcom/coinbase/android/MainActivityPermissionsDispatcher$StartBarcodeScanPermissionRequest;
.super Ljava/lang/Object;
.source "MainActivityPermissionsDispatcher.java"

# interfaces
.implements Lpermissions/dispatcher/PermissionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/MainActivityPermissionsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartBarcodeScanPermissionRequest"
.end annotation


# instance fields
.field private final weakTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/coinbase/android/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/coinbase/android/MainActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/coinbase/android/MainActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coinbase/android/MainActivityPermissionsDispatcher$StartBarcodeScanPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/MainActivity;Lcom/coinbase/android/MainActivityPermissionsDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/MainActivity;
    .param p2, "x1"    # Lcom/coinbase/android/MainActivityPermissionsDispatcher$1;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/coinbase/android/MainActivityPermissionsDispatcher$StartBarcodeScanPermissionRequest;-><init>(Lcom/coinbase/android/MainActivity;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/coinbase/android/MainActivityPermissionsDispatcher$StartBarcodeScanPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/MainActivity;

    .line 66
    .local v0, "target":Lcom/coinbase/android/MainActivity;
    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/coinbase/android/MainActivity;->showDeniedForCamera()V

    goto :goto_0
.end method

.method public proceed()V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/coinbase/android/MainActivityPermissionsDispatcher$StartBarcodeScanPermissionRequest;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/MainActivity;

    .line 59
    .local v0, "target":Lcom/coinbase/android/MainActivity;
    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    # getter for: Lcom/coinbase/android/MainActivityPermissionsDispatcher;->PERMISSION_STARTBARCODESCAN:[Ljava/lang/String;
    invoke-static {}, Lcom/coinbase/android/MainActivityPermissionsDispatcher;->access$100()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
