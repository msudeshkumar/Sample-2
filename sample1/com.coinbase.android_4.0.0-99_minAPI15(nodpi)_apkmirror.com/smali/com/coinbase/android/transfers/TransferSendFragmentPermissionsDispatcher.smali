.class final Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;
.super Ljava/lang/Object;
.source "TransferSendFragmentPermissionsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher$StartQrScanPermissionRequest;
    }
.end annotation


# static fields
.field private static final PERMISSION_EXECUTEGOOGLESUGGESTIONSTASK:[Ljava/lang/String;

.field private static final PERMISSION_STARTQRSCAN:[Ljava/lang/String;

.field private static final REQUEST_EXECUTEGOOGLESUGGESTIONSTASK:I = 0x2

.field private static final REQUEST_STARTQRSCAN:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->PERMISSION_EXECUTEGOOGLESUGGESTIONSTASK:[Ljava/lang/String;

    .line 17
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    sput-object v0, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->PERMISSION_STARTQRSCAN:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->PERMISSION_STARTQRSCAN:[Ljava/lang/String;

    return-object v0
.end method

.method static executeGoogleSuggestionsTaskWithCheck(Lcom/coinbase/android/transfers/TransferSendFragment;)V
    .locals 2
    .param p0, "target"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->PERMISSION_EXECUTEGOOGLESUGGESTIONSTASK:[Ljava/lang/String;

    invoke-static {v0, v1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->executeGoogleSuggestionsTask()V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->PERMISSION_EXECUTEGOOGLESUGGESTIONSTASK:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static onRequestPermissionsResult(Lcom/coinbase/android/transfers/TransferSendFragment;I[I)V
    .locals 2
    .param p0, "target"    # Lcom/coinbase/android/transfers/TransferSendFragment;
    .param p1, "requestCode"    # I
    .param p2, "grantResults"    # [I

    .prologue
    const/16 v1, 0x17

    .line 43
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 45
    :pswitch_0
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpermissions/dispatcher/PermissionUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->PERMISSION_EXECUTEGOOGLESUGGESTIONSTASK:[Ljava/lang/String;

    invoke-static {v0, v1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->showDeniedForReadContacts()V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->executeGoogleSuggestionsTask()V

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->showDeniedForReadContacts()V

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lpermissions/dispatcher/PermissionUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->PERMISSION_STARTQRSCAN:[Ljava/lang/String;

    invoke-static {v0, v1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->showDeniedForCamera()V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->startQrScan()V

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->showDeniedForCamera()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static startQrScanWithCheck(Lcom/coinbase/android/transfers/TransferSendFragment;)V
    .locals 2
    .param p0, "target"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->PERMISSION_STARTQRSCAN:[Ljava/lang/String;

    invoke-static {v0, v1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->startQrScan()V

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->PERMISSION_STARTQRSCAN:[Ljava/lang/String;

    invoke-static {v0, v1}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher$StartQrScanPermissionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher$StartQrScanPermissionRequest;-><init>(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher$1;)V

    invoke-virtual {p0, v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->showRationaleForCamera(Lpermissions/dispatcher/PermissionRequest;)V

    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lcom/coinbase/android/transfers/TransferSendFragmentPermissionsDispatcher;->PERMISSION_STARTQRSCAN:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method
