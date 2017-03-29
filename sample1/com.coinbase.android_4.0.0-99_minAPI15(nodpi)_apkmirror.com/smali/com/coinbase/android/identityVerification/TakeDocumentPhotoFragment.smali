.class public Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;
.super Lroboguice/fragment/RoboFragment;
.source "TakeDocumentPhotoFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final EXTRA_TAKING_BACK:Ljava/lang/String; = "EXTRA_TAKING_BACK"

.field private static final VIEWFINDER_ASPECT_RATIO:D = 1.586


# instance fields
.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mButton:Landroid/widget/ImageButton;

.field mCamera:Landroid/hardware/Camera;

.field mCameraOrientation:I

.field mDocTypeIndex:I

.field mFlashIcon:Landroid/graphics/drawable/Drawable;

.field mFlashlightButton:Landroid/widget/ImageButton;

.field mIsFlashlight:Z

.field mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

.field mJumioType:Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mPreviewRunning:Z

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mSurfaceView:Lcom/coinbase/android/identityVerification/CustomSurfaceView;

.field mTakingBack:Z

.field mViewfinderCropHeight:D

.field mViewfinderCropWidth:D

.field mViewfinderCropX:D

.field mViewfinderCropY:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;[BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/hardware/Camera;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getPhotoBitmap([BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->doGingerbreadAutoFocus()V

    return-void
.end method

.method private doGingerbreadAutoFocus()V
    .locals 4

    .prologue
    .line 435
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;

    invoke-direct {v1, p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;-><init>(Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 450
    return-void
.end method

.method private getPhotoBitmap([BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 225
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 226
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 227
    const v2, 0x8000

    new-array v2, v2, [B

    iput-object v2, v8, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 228
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 229
    array-length v2, p1

    invoke-static {p1, v1, v2, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    .local v0, "bMap":Landroid/graphics/Bitmap;
    iget v9, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCameraOrientation:I

    .line 234
    .local v9, "orientation":I
    if-eqz v9, :cond_0

    .line 235
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 236
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, v9

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 237
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 238
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 237
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 243
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .local v7, "bMapRotate":Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .line 240
    .end local v7    # "bMapRotate":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 240
    invoke-static {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7    # "bMapRotate":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getSystemHeightResource(Ljava/lang/String;)I
    .locals 5
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 218
    :cond_0
    return v1
.end method

.method private setDisplayOrientation(Landroid/hardware/Camera;)Z
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 453
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 454
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v5, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 455
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 456
    .local v3, "rotation":I
    const/4 v0, 0x0

    .line 457
    .local v0, "degrees":I
    packed-switch v3, :pswitch_data_0

    .line 473
    :goto_0
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v4, :cond_0

    .line 474
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v6, v0

    rem-int/lit16 v2, v6, 0x168

    .line 475
    .local v2, "result":I
    rsub-int v6, v2, 0x168

    rem-int/lit16 v2, v6, 0x168

    .line 479
    :goto_1
    iput v2, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCameraOrientation:I

    .line 480
    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 481
    div-int/lit8 v6, v2, 0x5a

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v4, :cond_1

    :goto_2
    return v4

    .line 459
    .end local v2    # "result":I
    :pswitch_0
    const/4 v0, 0x0

    .line 460
    goto :goto_0

    .line 462
    :pswitch_1
    const/16 v0, 0x5a

    .line 463
    goto :goto_0

    .line 465
    :pswitch_2
    const/16 v0, 0xb4

    .line 466
    goto :goto_0

    .line 468
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 477
    :cond_0
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v6, v0

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v2, v6, 0x168

    .restart local v2    # "result":I
    goto :goto_1

    :cond_1
    move v4, v5

    .line 481
    goto :goto_2

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setFullscreen(Z)V
    .locals 5
    .param p1, "fullscreen"    # Z

    .prologue
    const/high16 v4, 0x8000000

    const/high16 v3, 0x4000000

    .line 523
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 525
    .local v0, "w":Landroid/view/Window;
    if-eqz p1, :cond_1

    .line 526
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 527
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 528
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 536
    .end local v0    # "w":Landroid/view/Window;
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 537
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 538
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 543
    :goto_1
    return-void

    .line 530
    .restart local v0    # "w":Landroid/view/Window;
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 531
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 532
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 540
    .end local v0    # "w":Landroid/view/Window;
    :cond_2
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->show()V

    .line 541
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_1
.end method


# virtual methods
.method public captureImage(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 495
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 497
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$5;

    invoke-direct {v1, p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$5;-><init>(Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "jumio_doc_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/entity/JumioDocument;

    iput-object v2, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    .line 87
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    if-nez v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v2, "jumio_doc_index_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mDocTypeIndex:I

    .line 92
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioDocument;->getSupportedIdTypes()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "docIds":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;>;"
    iget v2, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mDocTypeIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    iput-object v2, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mJumioType:Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    .line 94
    const-string v2, "EXTRA_TAKING_BACK"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mTakingBack:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    const v12, 0x7f030086

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 102
    .local v11, "vw":Landroid/view/View;
    const v12, 0x7f0d024b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/coinbase/android/identityVerification/CustomSurfaceView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mSurfaceView:Lcom/coinbase/android/identityVerification/CustomSurfaceView;

    .line 103
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mSurfaceView:Lcom/coinbase/android/identityVerification/CustomSurfaceView;

    invoke-virtual {v12}, Lcom/coinbase/android/identityVerification/CustomSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v13, 0x3

    invoke-interface {v12, v13}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.camera.flash"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 108
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mIsFlashlight:Z

    .line 111
    :cond_0
    const v12, 0x7f0d024f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mButton:Landroid/widget/ImageButton;

    .line 112
    const v12, 0x7f0d0254

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mFlashlightButton:Landroid/widget/ImageButton;

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mFlashlightButton:Landroid/widget/ImageButton;

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/16 v13, 0x9b

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mFlashlightButton:Landroid/widget/ImageButton;

    new-instance v13, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$1;-><init>(Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020152

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mFlashIcon:Landroid/graphics/drawable/Drawable;

    .line 134
    new-instance v12, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;-><init>(Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 168
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x13

    if-lt v12, v13, :cond_1

    .line 171
    const-string v12, "status_bar_height"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getSystemHeightResource(Ljava/lang/String;)I

    move-result v6

    .line 172
    .local v6, "statusBarHeight":I
    const-string v12, "navigation_bar_height"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getSystemHeightResource(Ljava/lang/String;)I

    move-result v5

    .line 174
    .local v5, "navigationBarHeight":I
    const v12, 0x7f0d0251

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 175
    .local v8, "titleBar":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 176
    .local v9, "titleBarParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v6, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 177
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    const v12, 0x7f0d024e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 180
    .local v2, "buttonsContainer":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    .local v3, "buttonsContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 182
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .end local v2    # "buttonsContainer":Landroid/view/View;
    .end local v3    # "buttonsContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "navigationBarHeight":I
    .end local v6    # "statusBarHeight":I
    .end local v8    # "titleBar":Landroid/view/View;
    .end local v9    # "titleBarParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v4, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 187
    .local v4, "displayWidth":I
    const v12, 0x7f0d024c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 188
    .local v10, "viewfinder":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    int-to-float v13, v4

    float-to-double v14, v13

    const-wide v16, 0x3ff9604189374bc7L    # 1.586

    div-double v14, v14, v16

    double-to-int v13, v14

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 189
    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 192
    const v12, 0x7f0d0253

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 193
    .local v7, "title":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mJumioType:Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    invoke-virtual {v12}, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;->getType()Lcom/coinbase/api/internal/entity/JumioProfileType;

    move-result-object v12

    sget-object v13, Lcom/coinbase/api/internal/entity/JumioProfileType;->PASSPORT:Lcom/coinbase/api/internal/entity/JumioProfileType;

    if-ne v12, v13, :cond_2

    .line 194
    const v12, 0x7f070140

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    .line 202
    :goto_0
    const v12, 0x7f0d0252

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    new-instance v13, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$3;-><init>(Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-object v11

    .line 195
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mTakingBack:Z

    if-eqz v12, :cond_3

    .line 196
    const v12, 0x7f07013e

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 198
    :cond_3
    const v12, 0x7f07013f

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 510
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStart()V

    .line 511
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 512
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->setFullscreen(Z)V

    .line 513
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 517
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStop()V

    .line 518
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 519
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->setFullscreen(Z)V

    .line 520
    return-void
.end method

.method public refreshCamera()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 260
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mPreviewRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 266
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mPreviewRunning:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0

    .line 262
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->refreshCamera()V

    .line 274
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 44
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 278
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v39, v0

    if-nez v39, :cond_1

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v14

    .line 280
    .local v14, "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 287
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/Display;->getRotation()I

    move-result v24

    .line 288
    .local v24, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->setDisplayOrientation(Landroid/hardware/Camera;)Z

    move-result v15

    .line 290
    .local v15, "isRotated":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v22

    .line 294
    .local v22, "param":Landroid/hardware/Camera$Parameters;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 295
    .local v4, "acceptableAspectRatios":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Double;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :goto_1
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_2

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/hardware/Camera$Size;

    .line 296
    .local v26, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 300
    .end local v26    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v27

    .line 301
    .local v27, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v10, 0x0

    .local v10, "bestSize":Landroid/hardware/Camera$Size;
    const/16 v16, 0x0

    .line 302
    .local v16, "largestSize":Landroid/hardware/Camera$Size;
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getView()Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getWidth()I

    move-result v37

    .local v37, "windowWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getView()Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getHeight()I

    move-result v35

    .line 303
    .local v35, "windowHeight":I
    if-eqz v15, :cond_4

    move/from16 v30, v35

    .line 304
    .local v30, "targetWidth":I
    :goto_2
    const/16 v19, 0x7d0

    .line 305
    .local v19, "maxSize":I
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_3
    :goto_3
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_9

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/hardware/Camera$Size;

    .line 306
    .restart local v26    # "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    .line 311
    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 312
    .local v8, "aspectRatio":Ljava/lang/Double;
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_5

    .line 313
    const-string v40, "Coinbase"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Size rejected because "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v8    # "aspectRatio":Ljava/lang/Double;
    .end local v19    # "maxSize":I
    .end local v26    # "size":Landroid/hardware/Camera$Size;
    .end local v30    # "targetWidth":I
    :cond_4
    move/from16 v30, v37

    .line 303
    goto :goto_2

    .line 319
    .restart local v8    # "aspectRatio":Ljava/lang/Double;
    .restart local v19    # "maxSize":I
    .restart local v26    # "size":Landroid/hardware/Camera$Size;
    .restart local v30    # "targetWidth":I
    :cond_5
    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v30

    if-le v0, v1, :cond_7

    .line 320
    if-eqz v10, :cond_6

    iget v0, v10, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_7

    .line 321
    :cond_6
    move-object/from16 v10, v26

    .line 324
    :cond_7
    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_3

    .line 325
    :cond_8
    move-object/from16 v16, v26

    goto/16 :goto_3

    .line 329
    .end local v8    # "aspectRatio":Ljava/lang/Double;
    .end local v26    # "size":Landroid/hardware/Camera$Size;
    :cond_9
    if-nez v10, :cond_a

    .line 331
    move-object/from16 v10, v16

    .line 334
    :cond_a
    iget v0, v10, Landroid/hardware/Camera$Size;->width:I

    move/from16 v39, v0

    iget v0, v10, Landroid/hardware/Camera$Size;->height:I

    move/from16 v40, v0

    move-object/from16 v0, v22

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 337
    const/4 v7, 0x0

    .line 338
    .local v7, "bestPictureSize":Landroid/hardware/Camera$Size;
    iget v0, v10, Landroid/hardware/Camera$Size;->width:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v40, v0

    iget v0, v10, Landroid/hardware/Camera$Size;->height:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v42, v0

    div-double v28, v40, v42

    .line 339
    .local v28, "targetAspectRatio":D
    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_b
    :goto_4
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_d

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/hardware/Camera$Size;

    .line 340
    .restart local v26    # "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    div-double v8, v40, v42

    .line 341
    .local v8, "aspectRatio":D
    const-wide v40, 0x3ee4f8b588e368f1L    # 1.0E-5

    add-double v40, v40, v8

    cmpl-double v40, v40, v28

    if-lez v40, :cond_b

    const-wide v40, 0x3ee4f8b588e368f1L    # 1.0E-5

    sub-double v40, v8, v40

    cmpg-double v40, v40, v28

    if-gez v40, :cond_b

    .line 343
    if-eqz v7, :cond_c

    iget v0, v7, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_b

    .line 344
    :cond_c
    move-object/from16 v7, v26

    goto :goto_4

    .line 348
    .end local v8    # "aspectRatio":D
    .end local v26    # "size":Landroid/hardware/Camera$Size;
    :cond_d
    if-eqz v7, :cond_e

    .line 349
    iget v0, v7, Landroid/hardware/Camera$Size;->width:I

    move/from16 v39, v0

    iget v0, v7, Landroid/hardware/Camera$Size;->height:I

    move/from16 v40, v0

    move-object/from16 v0, v22

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 353
    :cond_e
    if-eqz v15, :cond_f

    iget v6, v10, Landroid/hardware/Camera$Size;->height:I

    .line 354
    .local v6, "actualWidth":I
    :goto_5
    if-eqz v15, :cond_10

    iget v5, v10, Landroid/hardware/Camera$Size;->width:I

    .line 355
    .local v5, "actualHeight":I
    :goto_6
    int-to-float v0, v6

    move/from16 v39, v0

    int-to-float v0, v5

    move/from16 v40, v0

    div-float v8, v39, v40

    .line 356
    .local v8, "aspectRatio":F
    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v39, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v34, v39, v40

    .line 357
    .local v34, "windowAspectRatio":F
    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0x3ff9604189374bc7L    # 1.586

    div-double v40, v40, v42

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v33, v0

    .line 359
    .local v33, "viewfinderHeightInWindow":I
    cmpl-float v39, v8, v34

    if-lez v39, :cond_11

    .line 360
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v8

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v21, v0

    .line 361
    .local v21, "newWidth":I
    move/from16 v20, v35

    .line 366
    .local v20, "newHeight":I
    int-to-float v0, v5

    move/from16 v39, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v25, v39, v40

    .line 367
    .local v25, "scale":F
    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v38, v39, v25

    .line 368
    .local v38, "windowWidthInPreviewSpace":F
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v32, v39, v25

    .line 370
    .local v32, "viewfinderHeightInPreviewSpace":F
    int-to-float v0, v6

    move/from16 v39, v0

    sub-float v39, v39, v38

    const/high16 v40, 0x40000000    # 2.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v18, v0

    .line 371
    .local v18, "left":I
    int-to-float v0, v5

    move/from16 v39, v0

    sub-float v39, v39, v32

    const/high16 v40, 0x40000000    # 2.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v31, v0

    .line 372
    .local v31, "top":I
    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v39, v0

    add-int v23, v18, v39

    .line 373
    .local v23, "right":I
    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v39, v0

    add-int v11, v31, v39

    .line 375
    .local v11, "bottom":I
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v40, v0

    int-to-double v0, v6

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mViewfinderCropX:D

    .line 376
    sub-int v39, v23, v18

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v40, v0

    int-to-double v0, v6

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mViewfinderCropWidth:D

    .line 377
    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v40, v0

    int-to-double v0, v5

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mViewfinderCropY:D

    .line 378
    sub-int v39, v11, v31

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v40, v0

    int-to-double v0, v5

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mViewfinderCropHeight:D

    .line 402
    .end local v38    # "windowWidthInPreviewSpace":F
    :goto_7
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 403
    .local v17, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v39, 0xd

    move-object/from16 v0, v17

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mSurfaceView:Lcom/coinbase/android/identityVerification/CustomSurfaceView;

    move-object/from16 v39, v0

    move/from16 v0, v20

    move-object/from16 v1, v39

    iput v0, v1, Lcom/coinbase/android/identityVerification/CustomSurfaceView;->desiredHeight:I

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mSurfaceView:Lcom/coinbase/android/identityVerification/CustomSurfaceView;

    move-object/from16 v39, v0

    move/from16 v0, v21

    move-object/from16 v1, v39

    iput v0, v1, Lcom/coinbase/android/identityVerification/CustomSurfaceView;->desiredWidth:I

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mSurfaceView:Lcom/coinbase/android/identityVerification/CustomSurfaceView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/coinbase/android/identityVerification/CustomSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    const/4 v13, 0x0

    .line 412
    .local v13, "doGingerbreadAutoFocus":Z
    sget v39, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v40, 0xe

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_12

    .line 413
    const-string v39, "continuous-picture"

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 419
    :goto_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera;->startPreview()V

    .line 422
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mPreviewRunning:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 427
    :goto_9
    if-eqz v13, :cond_0

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->doGingerbreadAutoFocus()V

    goto/16 :goto_0

    .line 353
    .end local v5    # "actualHeight":I
    .end local v6    # "actualWidth":I
    .end local v8    # "aspectRatio":F
    .end local v11    # "bottom":I
    .end local v13    # "doGingerbreadAutoFocus":Z
    .end local v17    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "left":I
    .end local v20    # "newHeight":I
    .end local v21    # "newWidth":I
    .end local v23    # "right":I
    .end local v25    # "scale":F
    .end local v31    # "top":I
    .end local v32    # "viewfinderHeightInPreviewSpace":F
    .end local v33    # "viewfinderHeightInWindow":I
    .end local v34    # "windowAspectRatio":F
    :cond_f
    iget v6, v10, Landroid/hardware/Camera$Size;->width:I

    goto/16 :goto_5

    .line 354
    .restart local v6    # "actualWidth":I
    :cond_10
    iget v5, v10, Landroid/hardware/Camera$Size;->height:I

    goto/16 :goto_6

    .line 380
    .restart local v5    # "actualHeight":I
    .restart local v8    # "aspectRatio":F
    .restart local v33    # "viewfinderHeightInWindow":I
    .restart local v34    # "windowAspectRatio":F
    :cond_11
    move/from16 v21, v37

    .line 381
    .restart local v21    # "newWidth":I
    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x3f800000    # 1.0f

    div-float v40, v40, v8

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v20, v0

    .line 386
    .restart local v20    # "newHeight":I
    int-to-float v0, v6

    move/from16 v39, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v25, v39, v40

    .line 387
    .restart local v25    # "scale":F
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v36, v39, v25

    .line 388
    .local v36, "windowHeightInPreviewSpace":F
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v32, v39, v25

    .line 389
    .restart local v32    # "viewfinderHeightInPreviewSpace":F
    int-to-float v0, v5

    move/from16 v39, v0

    sub-float v39, v39, v36

    const/high16 v40, 0x40000000    # 2.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v12, v0

    .line 391
    .local v12, "clipped":I
    const/16 v18, 0x0

    .line 392
    .restart local v18    # "left":I
    sub-float v39, v36, v32

    const/high16 v40, 0x40000000    # 2.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    add-int v31, v12, v39

    .line 393
    .restart local v31    # "top":I
    move/from16 v23, v6

    .line 394
    .restart local v23    # "right":I
    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v39, v0

    add-int v11, v31, v39

    .line 396
    .restart local v11    # "bottom":I
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v40, v0

    int-to-double v0, v6

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mViewfinderCropX:D

    .line 397
    sub-int v39, v23, v18

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v40, v0

    int-to-double v0, v6

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mViewfinderCropWidth:D

    .line 398
    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v40, v0

    int-to-double v0, v5

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mViewfinderCropY:D

    .line 399
    sub-int v39, v11, v31

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v40, v0

    int-to-double v0, v5

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mViewfinderCropHeight:D

    goto/16 :goto_7

    .line 415
    .end local v12    # "clipped":I
    .end local v36    # "windowHeightInPreviewSpace":F
    .restart local v13    # "doGingerbreadAutoFocus":Z
    .restart local v17    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_12
    const/4 v13, 0x1

    goto/16 :goto_8

    .line 423
    :catch_1
    move-exception v14

    .line 424
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mPreviewRunning:Z

    .line 488
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    .line 491
    :cond_0
    return-void
.end method
