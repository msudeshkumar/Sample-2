.class public final Lcom/coinbase/zxing/client/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x258

.field private static final MAX_FRAME_WIDTH:I = 0x320

.field private static final MIN_FRAME_HEIGHT:I

.field private static final MIN_FRAME_WIDTH:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusManager:Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private framingViewSize:Landroid/graphics/Point;

.field private initialized:Z

.field private final previewCallback:Lcom/coinbase/zxing/client/android/camera/PreviewCallback;

.field private previewing:Z

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/coinbase/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->configManager:Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;

    .line 71
    new-instance v0, Lcom/coinbase/zxing/client/android/camera/PreviewCallback;

    iget-object v1, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->configManager:Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {v0, v1}, Lcom/coinbase/zxing/client/android/camera/PreviewCallback;-><init>(Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;)V

    iput-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/coinbase/zxing/client/android/camera/PreviewCallback;

    .line 72
    return-void
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cameraId"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 76
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 78
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 81
    .local v3, "rotation":I
    const/4 v0, 0x0

    .line 82
    .local v0, "degrees":I
    packed-switch v3, :pswitch_data_0

    .line 90
    :goto_0
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 91
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v2, v4, 0x168

    .line 92
    .local v2, "result":I
    rsub-int v4, v2, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 96
    :goto_1
    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 97
    return-void

    .line 83
    .end local v2    # "result":I
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 85
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 86
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 94
    :cond_0
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v2, v4, 0x168

    .restart local v2    # "result":I
    goto :goto_1

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v9

    .line 352
    .local v9, "rect":Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 366
    :goto_0
    return-object v0

    .line 356
    :cond_0
    move v2, p2

    .line 357
    .local v2, "dataWidth":I
    iget v0, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, v2, :cond_1

    .line 358
    iget v0, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int v2, v0, v1

    .line 360
    :cond_1
    move v3, p3

    .line 361
    .local v3, "dataHeight":I
    iget v0, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, v3, :cond_2

    .line 362
    iget v0, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int v3, v0, v1

    .line 365
    :cond_2
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->top:I

    .line 366
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0
.end method

.method public declared-synchronized closeDriver()V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v6, :cond_5

    .line 237
    iget-object v6, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 271
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v5

    .line 240
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->configManager:Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v6}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 241
    .local v2, "screenResolution":Landroid/graphics/Point;
    if-eqz v2, :cond_0

    .line 246
    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    .line 247
    iget v5, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v4, v5, 0x4

    .line 251
    .local v4, "width":I
    :goto_1
    if-gez v4, :cond_7

    .line 252
    const/4 v4, 0x0

    .line 257
    :cond_2
    :goto_2
    move v0, v4

    .line 258
    .local v0, "height":I
    if-gez v0, :cond_8

    .line 259
    const/4 v0, 0x0

    .line 263
    :cond_3
    :goto_3
    if-ge v0, v4, :cond_4

    .line 264
    move v4, v0

    .line 266
    :cond_4
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 267
    .local v1, "leftOffset":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x2

    .line 268
    .local v3, "topOffset":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 269
    sget-object v5, Lcom/coinbase/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calculated framing rect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    .end local v3    # "topOffset":I
    .end local v4    # "width":I
    :cond_5
    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 249
    .restart local v2    # "screenResolution":Landroid/graphics/Point;
    :cond_6
    iget v5, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x9

    div-int/lit8 v4, v5, 0xa
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v4    # "width":I
    goto :goto_1

    .line 253
    :cond_7
    const/16 v5, 0x320

    if-le v4, v5, :cond_2

    .line 254
    const/16 v4, 0x320

    goto :goto_2

    .line 260
    .restart local v0    # "height":I
    :cond_8
    const/16 v5, 0x258

    if-le v0, v5, :cond_3

    .line 261
    const/16 v0, 0x258

    goto :goto_3

    .line 236
    .end local v0    # "height":I
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    .end local v4    # "width":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v5, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 281
    .local v1, "framingRect":Landroid/graphics/Rect;
    if-nez v1, :cond_1

    .line 307
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 284
    .restart local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 285
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->configManager:Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 286
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->configManager:Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v3

    .line 287
    .local v3, "screenResolution":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 291
    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 292
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 293
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 294
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 295
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 305
    :goto_1
    iput-object v2, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 307
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "screenResolution":Landroid/graphics/Point;
    :cond_2
    iget-object v4, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    goto :goto_0

    .line 297
    .restart local v0    # "cameraResolution":Landroid/graphics/Point;
    .restart local v1    # "framingRect":Landroid/graphics/Rect;
    .restart local v2    # "rect":Landroid/graphics/Rect;
    .restart local v3    # "screenResolution":Landroid/graphics/Point;
    :cond_3
    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingViewSize:Landroid/graphics/Point;

    if-eqz v5, :cond_0

    .line 300
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 301
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 302
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 303
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    div-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 279
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "screenResolution":Landroid/graphics/Point;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/app/Activity;Landroid/view/SurfaceHolder;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 108
    .local v4, "theCamera":Landroid/hardware/Camera;
    if-nez v4, :cond_1

    .line 109
    new-instance v5, Lcom/coinbase/zxing/client/android/camera/open/OpenCameraManager;

    invoke-direct {v5}, Lcom/coinbase/zxing/client/android/camera/open/OpenCameraManager;-><init>()V

    invoke-virtual {v5}, Lcom/coinbase/zxing/client/android/camera/open/OpenCameraManager;->build()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/zxing/client/android/camera/open/OpenCameraInterface;

    invoke-interface {v5}, Lcom/coinbase/zxing/client/android/camera/open/OpenCameraInterface;->open()Landroid/hardware/Camera;

    move-result-object v4

    .line 110
    const/4 v5, 0x0

    invoke-static {p1, v5, v4}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V

    .line 111
    if-nez v4, :cond_0

    .line 112
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v4    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 114
    .restart local v4    # "theCamera":Landroid/hardware/Camera;
    :cond_0
    :try_start_1
    iput-object v4, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 116
    :cond_1
    invoke-virtual {v4, p2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 118
    iget-boolean v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->initialized:Z

    if-nez v5, :cond_2

    .line 119
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->initialized:Z

    .line 120
    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->configManager:Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v5, v4}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 121
    iget v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    if-lez v5, :cond_2

    .line 122
    iget v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    iget v6, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    invoke-virtual {p0, v5, v6}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 123
    const/4 v5, 0x0

    iput v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    .line 124
    const/4 v5, 0x0

    iput v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    .line 128
    :cond_2
    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 129
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_4

    const/4 v1, 0x0

    .line 131
    .local v1, "parametersFlattened":Ljava/lang/String;
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->configManager:Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 129
    .end local v1    # "parametersFlattened":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 132
    .restart local v1    # "parametersFlattened":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 134
    .local v2, "re":Ljava/lang/RuntimeException;
    sget-object v5, Lcom/coinbase/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v6, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v5, Lcom/coinbase/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resetting to saved camera params: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    :try_start_4
    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 142
    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->configManager:Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 143
    :catch_1
    move-exception v3

    .line 145
    .local v3, "re2":Ljava/lang/RuntimeException;
    :try_start_5
    sget-object v5, Lcom/coinbase/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v6, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 222
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/coinbase/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcom/coinbase/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 224
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/coinbase/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    monitor-exit p0

    return-void

    .line 221
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setFramingViewSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "framingViewSize"    # Landroid/graphics/Point;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingViewSize:Landroid/graphics/Point;

    .line 312
    return-void
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->initialized:Z

    if-eqz v3, :cond_2

    .line 323
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->configManager:Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 324
    .local v1, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-le p1, v3, :cond_0

    .line 325
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 327
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le p2, v3, :cond_1

    .line 328
    iget p2, v1, Landroid/graphics/Point;->y:I

    .line 330
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    div-int/lit8 v0, v3, 0x2

    .line 331
    .local v0, "leftOffset":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    div-int/lit8 v2, v3, 0x2

    .line 332
    .local v2, "topOffset":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v0, p1

    add-int v5, v2, p2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 333
    sget-object v3, Lcom/coinbase/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated manual framing rect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    .end local v0    # "leftOffset":I
    .end local v1    # "screenResolution":Landroid/graphics/Point;
    .end local v2    # "topOffset":I
    :goto_0
    monitor-exit p0

    return-void

    .line 336
    :cond_2
    :try_start_1
    iput p1, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    .line 337
    iput p2, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setTorch(Z)V
    .locals 2
    .param p1, "newSetting"    # Z

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;->stop()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->configManager:Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, p1}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->setTorch(Landroid/hardware/Camera;Z)V

    .line 206
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_1
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPreview()V
    .locals 4

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 175
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 177
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->previewing:Z

    .line 178
    new-instance v1, Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;

    iget-object v2, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-direct {v1, v2, v3}, Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    monitor-exit p0

    return-void

    .line 174
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;->stop()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/coinbase/zxing/client/android/camera/AutoFocusManager;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 192
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/coinbase/zxing/client/android/camera/PreviewCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_1
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
