.class final Lcom/coinbase/zxing/client/android/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/coinbase/zxing/client/android/CaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/coinbase/zxing/client/android/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coinbase/zxing/client/android/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/coinbase/zxing/client/android/CaptureActivity;Ljava/util/Map;)V
    .locals 1
    .param p1, "activity"    # Lcom/coinbase/zxing/client/android/CaptureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coinbase/zxing/client/android/CaptureActivity;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/zxing/client/android/DecodeHandler;->running:Z

    .line 48
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/coinbase/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 49
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 50
    iput-object p1, p0, Lcom/coinbase/zxing/client/android/DecodeHandler;->activity:Lcom/coinbase/zxing/client/android/CaptureActivity;

    .line 51
    return-void
.end method

.method private decode([BII)V
    .locals 24
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 76
    .local v14, "start":J
    const/4 v11, 0x0

    .line 77
    .local v11, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/zxing/client/android/DecodeHandler;->activity:Lcom/coinbase/zxing/client/android/CaptureActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 79
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 80
    .local v12, "rotatedData":[B
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 81
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 82
    mul-int v19, v17, p3

    add-int v19, v19, p3

    sub-int v19, v19, v18

    add-int/lit8 v19, v19, -0x1

    mul-int v20, v18, p2

    add-int v20, v20, v17

    aget-byte v20, p1, v20

    aput-byte v20, v12, v19

    .line 81
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 80
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 84
    .end local v17    # "x":I
    :cond_1
    move/from16 v16, p2

    .line 86
    .local v16, "tmp":I
    move/from16 p2, p3

    .line 87
    move/from16 p3, v16

    .line 88
    move-object/from16 p1, v12

    .line 91
    .end local v12    # "rotatedData":[B
    .end local v16    # "tmp":I
    .end local v18    # "y":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/zxing/client/android/DecodeHandler;->activity:Lcom/coinbase/zxing/client/android/CaptureActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getCameraManager()Lcom/coinbase/zxing/client/android/camera/CameraManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v13

    .line 92
    .local v13, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    if-eqz v13, :cond_3

    .line 93
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    new-instance v19, Lcom/google/zxing/common/HybridBinarizer;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 95
    .local v4, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 103
    .end local v4    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/zxing/client/android/DecodeHandler;->activity:Lcom/coinbase/zxing/client/android/CaptureActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 104
    .local v9, "handler":Landroid/os/Handler;
    if-eqz v11, :cond_5

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 107
    .local v6, "end":J
    sget-object v19, Lcom/coinbase/zxing/client/android/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Found barcode in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v22, v6, v14

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v9, :cond_4

    .line 109
    sget v19, Lcom/coinbase/zxing/client/android/R$id;->decode_succeeded:I

    move/from16 v0, v19

    invoke-static {v9, v0, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 110
    .local v10, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-virtual {v13}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()[I

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Lcom/coinbase/zxing/client/android/DecodeHandler;->toBitmap(Lcom/google/zxing/LuminanceSource;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 112
    .local v8, "grayscaleBitmap":Landroid/graphics/Bitmap;
    const-string v19, "barcode_bitmap"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    invoke-virtual {v10, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 122
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "end":J
    .end local v8    # "grayscaleBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "message":Landroid/os/Message;
    :cond_4
    :goto_3
    return-void

    .line 96
    .end local v9    # "handler":Landroid/os/Handler;
    .restart local v4    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :catch_0
    move-exception v19

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v19

    .line 117
    .end local v4    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v9    # "handler":Landroid/os/Handler;
    :cond_5
    if-eqz v9, :cond_4

    .line 118
    sget v19, Lcom/coinbase/zxing/client/android/R$id;->decode_failed:I

    move/from16 v0, v19

    invoke-static {v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v10

    .line 119
    .restart local v10    # "message":Landroid/os/Message;
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method

.method private static toBitmap(Lcom/google/zxing/LuminanceSource;[I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "source"    # Lcom/google/zxing/LuminanceSource;
    .param p1, "pixels"    # [I

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v3

    .line 126
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v7

    .line 127
    .local v7, "height":I
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 128
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 129
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/coinbase/zxing/client/android/DecodeHandler;->running:Z

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/coinbase/zxing/client/android/R$id;->decode:I

    if-ne v0, v1, :cond_2

    .line 59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/coinbase/zxing/client/android/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 60
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/coinbase/zxing/client/android/R$id;->quit:I

    if-ne v0, v1, :cond_0

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/zxing/client/android/DecodeHandler;->running:Z

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
