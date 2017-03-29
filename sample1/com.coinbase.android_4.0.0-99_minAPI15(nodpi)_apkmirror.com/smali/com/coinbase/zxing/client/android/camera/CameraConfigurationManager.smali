.class final Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final MAX_PREVIEW_PIXELS:I = 0xe1000

.field private static final MIN_PREVIEW_PIXELS:I = 0x24b80

.field private static final TAG:Ljava/lang/String; = "CameraConfiguration"


# instance fields
.field private cameraResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V
    .locals 6
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "newSetting"    # Z
    .param p3, "safeMode"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    if-eqz p2, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "torch"

    aput-object v3, v2, v4

    const-string v3, "on"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void

    .line 155
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0
.end method

.method private findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 23
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v13

    .line 176
    .local v13, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v13, :cond_0

    .line 177
    const-string v19, "CameraConfiguration"

    const-string v20, "Device returned no supported preview sizes; using default"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 179
    .local v4, "defaultSize":Landroid/hardware/Camera$Size;
    new-instance v6, Landroid/graphics/Point;

    iget v0, v4, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 252
    .end local v4    # "defaultSize":Landroid/hardware/Camera$Size;
    :goto_0
    return-object v6

    .line 183
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    .local v18, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v19, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager$1;-><init>(Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;)V

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    const-string v19, "CameraConfiguration"

    const/16 v20, 0x4

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 200
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v12, "previewSizesString":Ljava/lang/StringBuilder;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/Camera$Size;

    .line 202
    .local v17, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x78

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    .line 203
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x20

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 205
    .end local v17    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_1
    const-string v19, "CameraConfiguration"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Supported preview sizes: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v12    # "previewSizesString":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v3, 0x0

    .line 209
    .local v3, "bestSize":Landroid/graphics/Point;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v16, v19, v20

    .line 211
    .local v16, "screenAspectRatio":F
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 212
    .local v5, "diff":F
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_3
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/Camera$Size;

    .line 213
    .restart local v17    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v17

    iget v15, v0, Landroid/hardware/Camera$Size;->width:I

    .line 214
    .local v15, "realWidth":I
    move-object/from16 v0, v17

    iget v14, v0, Landroid/hardware/Camera$Size;->height:I

    .line 215
    .local v14, "realHeight":I
    mul-int v11, v15, v14

    .line 216
    .local v11, "pixels":I
    const v19, 0x24b80

    move/from16 v0, v19

    if-lt v11, v0, :cond_3

    const v19, 0xe1000

    move/from16 v0, v19

    if-gt v11, v0, :cond_3

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 221
    if-ge v15, v14, :cond_4

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    const/16 v20, 0x1

    :goto_4
    xor-int v7, v19, v20

    .line 225
    .local v7, "isCandidatePortrait":Z
    :goto_5
    if-eqz v7, :cond_8

    move v9, v14

    .line 226
    .local v9, "maybeFlippedWidth":I
    :goto_6
    if-eqz v7, :cond_9

    move v8, v15

    .line 227
    .local v8, "maybeFlippedHeight":I
    :goto_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_a

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v8, v0, :cond_a

    .line 228
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v15, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 229
    .local v6, "exactPoint":Landroid/graphics/Point;
    const-string v19, "CameraConfiguration"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Found preview size exactly matching screen size: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    .end local v6    # "exactPoint":Landroid/graphics/Point;
    .end local v7    # "isCandidatePortrait":Z
    .end local v8    # "maybeFlippedHeight":I
    .end local v9    # "maybeFlippedWidth":I
    :cond_4
    const/16 v19, 0x0

    goto :goto_3

    :cond_5
    const/16 v20, 0x0

    goto :goto_4

    .line 223
    :cond_6
    if-ge v15, v14, :cond_7

    const/4 v7, 0x1

    .restart local v7    # "isCandidatePortrait":Z
    :goto_8
    goto :goto_5

    .end local v7    # "isCandidatePortrait":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    .restart local v7    # "isCandidatePortrait":Z
    :cond_8
    move v9, v15

    .line 225
    goto :goto_6

    .restart local v9    # "maybeFlippedWidth":I
    :cond_9
    move v8, v14

    .line 226
    goto :goto_7

    .line 232
    .restart local v8    # "maybeFlippedHeight":I
    :cond_a
    int-to-float v0, v9

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v2, v19, v20

    .line 234
    .local v2, "aspectRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 235
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    mul-int v19, v19, v14

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    mul-int v20, v20, v15

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v10, v0

    .line 239
    .local v10, "newDiff":F
    :goto_9
    cmpg-float v19, v10, v5

    if-gez v19, :cond_3

    .line 240
    new-instance v3, Landroid/graphics/Point;

    .end local v3    # "bestSize":Landroid/graphics/Point;
    invoke-direct {v3, v15, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 241
    .restart local v3    # "bestSize":Landroid/graphics/Point;
    move v5, v10

    goto/16 :goto_2

    .line 237
    .end local v10    # "newDiff":F
    :cond_b
    sub-float v19, v2, v16

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .restart local v10    # "newDiff":F
    goto :goto_9

    .line 245
    .end local v2    # "aspectRatio":F
    .end local v7    # "isCandidatePortrait":Z
    .end local v8    # "maybeFlippedHeight":I
    .end local v9    # "maybeFlippedWidth":I
    .end local v10    # "newDiff":F
    .end local v11    # "pixels":I
    .end local v14    # "realHeight":I
    .end local v15    # "realWidth":I
    .end local v17    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_c
    if-nez v3, :cond_d

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 247
    .restart local v4    # "defaultSize":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/graphics/Point;

    .end local v3    # "bestSize":Landroid/graphics/Point;
    iget v0, v4, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 248
    .restart local v3    # "bestSize":Landroid/graphics/Point;
    const-string v19, "CameraConfiguration"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "No suitable preview sizes, using default: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v4    # "defaultSize":Landroid/hardware/Camera$Size;
    :cond_d
    const-string v19, "CameraConfiguration"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Found best approximate preview size: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v3

    .line 252
    goto/16 :goto_0
.end method

.method private static varargs findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "desiredValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supported values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 260
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 261
    .local v0, "desiredValue":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    move-object v1, v0

    .line 267
    .end local v0    # "desiredValue":Ljava/lang/String;
    :cond_0
    const-string v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settable value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-object v1

    .line 260
    .restart local v0    # "desiredValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initializeTorch(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;Z)V
    .locals 3
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "safeMode"    # Z

    .prologue
    .line 144
    const-string v1, "preferences_front_light"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    .local v0, "currentSetting":Z
    invoke-direct {p0, p1, v0, p3}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 146
    return-void
.end method


# virtual methods
.method getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 8
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 65
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 66
    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 67
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 68
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 69
    .local v1, "height":I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 70
    const-string v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Screen resolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-direct {p0, v3, v5}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    iput-object v5, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 72
    const-string v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera resolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "safeMode"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 76
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 78
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 79
    const-string v3, "CameraConfiguration"

    const-string v4, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v3, "CameraConfiguration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial camera parameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz p2, :cond_1

    .line 86
    const-string v3, "CameraConfiguration"

    const-string v4, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 91
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, v1, v2, p2}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->initializeTorch(Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;Z)V

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "focusMode":Ljava/lang/String;
    const-string v3, "preferences_auto_focus"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    if-nez p2, :cond_2

    const-string v3, "preferences_disable_continuous_focus"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 96
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "auto"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_3
    :goto_1
    if-nez p2, :cond_4

    if-nez v0, :cond_4

    .line 107
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "macro"

    aput-object v5, v4, v7

    const-string v5, "edof"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_4
    if-eqz v0, :cond_5

    .line 112
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 115
    :cond_5
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 116
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_6

    .line 117
    const/16 v3, 0x5a

    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 119
    :cond_6
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 99
    :cond_7
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "continuous-picture"

    aput-object v5, v4, v7

    const-string v5, "continuous-video"

    aput-object v5, v4, v6

    const-string v5, "auto"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method setTorch(Landroid/hardware/Camera;Z)V
    .locals 6
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "newSetting"    # Z

    .prologue
    const/4 v5, 0x0

    .line 131
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 132
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v2, p2, v5}, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 133
    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 134
    iget-object v4, p0, Lcom/coinbase/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 135
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "preferences_front_light"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 136
    .local v0, "currentSetting":Z
    if-eq v0, p2, :cond_0

    .line 137
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 138
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "preferences_front_light"

    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
