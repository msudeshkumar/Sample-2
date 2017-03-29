.class final Lcom/coinbase/android/MainActivityPermissionsDispatcher;
.super Ljava/lang/Object;
.source "MainActivityPermissionsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/MainActivityPermissionsDispatcher$StartBarcodeScanPermissionRequest;
    }
.end annotation


# static fields
.field private static final PERMISSION_STARTBARCODESCAN:[Ljava/lang/String;

.field private static final REQUEST_STARTBARCODESCAN:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/android/MainActivityPermissionsDispatcher;->PERMISSION_STARTBARCODESCAN:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/coinbase/android/MainActivityPermissionsDispatcher;->PERMISSION_STARTBARCODESCAN:[Ljava/lang/String;

    return-object v0
.end method

.method static onRequestPermissionsResult(Lcom/coinbase/android/MainActivity;I[I)V
    .locals 2
    .param p0, "target"    # Lcom/coinbase/android/MainActivity;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 34
    :pswitch_0
    invoke-static {p0}, Lpermissions/dispatcher/PermissionUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/coinbase/android/MainActivityPermissionsDispatcher;->PERMISSION_STARTBARCODESCAN:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->showDeniedForCamera()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->startBarcodeScan()V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->showDeniedForCamera()V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static startBarcodeScanWithCheck(Lcom/coinbase/android/MainActivity;)V
    .locals 2
    .param p0, "target"    # Lcom/coinbase/android/MainActivity;

    .prologue
    .line 20
    sget-object v0, Lcom/coinbase/android/MainActivityPermissionsDispatcher;->PERMISSION_STARTBARCODESCAN:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/coinbase/android/MainActivity;->startBarcodeScan()V

    .line 29
    :goto_0
    return-void

    .line 23
    :cond_0
    sget-object v0, Lcom/coinbase/android/MainActivityPermissionsDispatcher;->PERMISSION_STARTBARCODESCAN:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lcom/coinbase/android/MainActivityPermissionsDispatcher$StartBarcodeScanPermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/MainActivityPermissionsDispatcher$StartBarcodeScanPermissionRequest;-><init>(Lcom/coinbase/android/MainActivity;Lcom/coinbase/android/MainActivityPermissionsDispatcher$1;)V

    invoke-virtual {p0, v0}, Lcom/coinbase/android/MainActivity;->showRationaleForCamera(Lpermissions/dispatcher/PermissionRequest;)V

    goto :goto_0

    .line 26
    :cond_1
    sget-object v0, Lcom/coinbase/android/MainActivityPermissionsDispatcher;->PERMISSION_STARTBARCODESCAN:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
