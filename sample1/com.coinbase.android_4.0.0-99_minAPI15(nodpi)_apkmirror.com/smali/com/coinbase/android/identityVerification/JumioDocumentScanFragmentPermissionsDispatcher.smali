.class final Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher;
.super Ljava/lang/Object;
.source "JumioDocumentScanFragmentPermissionsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher$SetupContinueRetakeButtonPermissionRequest;
    }
.end annotation


# static fields
.field private static final PERMISSION_SETUPCONTINUERETAKEBUTTON:[Ljava/lang/String;

.field private static final REQUEST_SETUPCONTINUERETAKEBUTTON:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher;->PERMISSION_SETUPCONTINUERETAKEBUTTON:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher;->PERMISSION_SETUPCONTINUERETAKEBUTTON:[Ljava/lang/String;

    return-object v0
.end method

.method static onRequestPermissionsResult(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;I[I)V
    .locals 2
    .param p0, "target"    # Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 33
    :pswitch_0
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpermissions/dispatcher/PermissionUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher;->PERMISSION_SETUPCONTINUERETAKEBUTTON:[Ljava/lang/String;

    invoke-static {v0, v1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->showDeniedForCamera()V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->setupContinueRetakeButton()V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->showDeniedForCamera()V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static setupContinueRetakeButtonWithCheck(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;)V
    .locals 2
    .param p0, "target"    # Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher;->PERMISSION_SETUPCONTINUERETAKEBUTTON:[Ljava/lang/String;

    invoke-static {v0, v1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->setupContinueRetakeButton()V

    .line 28
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher;->PERMISSION_SETUPCONTINUERETAKEBUTTON:[Ljava/lang/String;

    invoke-static {v0, v1}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher$SetupContinueRetakeButtonPermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher$SetupContinueRetakeButtonPermissionRequest;-><init>(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher$1;)V

    invoke-virtual {p0, v0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->showRationaleForCamera(Lpermissions/dispatcher/PermissionRequest;)V

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragmentPermissionsDispatcher;->PERMISSION_SETUPCONTINUERETAKEBUTTON:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method
