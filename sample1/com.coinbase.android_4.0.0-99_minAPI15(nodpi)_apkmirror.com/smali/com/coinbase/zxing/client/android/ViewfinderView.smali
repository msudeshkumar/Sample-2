.class public final Lcom/coinbase/zxing/client/android/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x50L

.field private static final CURRENT_POINT_OPACITY:I = 0xa0

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static final POINT_SIZE:I = 0x6

.field private static final SCANNER_ALPHA:[I


# instance fields
.field private cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

.field private final g2:I

.field private hideScanner:Z

.field private final laserColor:I

.field private lastPossibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final o:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private final reticuleColor:I

.field private scannerAlpha:I

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-boolean v3, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->hideScanner:Z

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/coinbase/zxing/client/android/R$color;->barcode_viewfinder_mask:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->maskColor:I

    .line 74
    sget v1, Lcom/coinbase/zxing/client/android/R$color;->barcode_result_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->resultColor:I

    .line 75
    sget v1, Lcom/coinbase/zxing/client/android/R$color;->barcode_viewfinder_laser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->laserColor:I

    .line 76
    sget v1, Lcom/coinbase/zxing/client/android/R$color;->barcode_viewfinder_reticule:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->reticuleColor:I

    .line 77
    sget v1, Lcom/coinbase/zxing/client/android/R$color;->barcode_possible_result_points:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->resultPointColor:I

    .line 78
    sget v1, Lcom/coinbase/zxing/client/android/R$dimen;->line_thickness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    .line 79
    sget v1, Lcom/coinbase/zxing/client/android/R$dimen;->gap_div_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->g2:I

    .line 80
    sget v1, Lcom/coinbase/zxing/client/android/R$dimen;->offset_from_rect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    .line 81
    iput v3, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->scannerAlpha:I

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 84
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 4
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 210
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    monitor-enter v0

    .line 211
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 213
    .local v1, "size":I
    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 215
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0xa

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 217
    :cond_0
    monitor-exit v0

    .line 218
    return-void

    .line 217
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 205
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/ViewfinderView;->invalidate()V

    .line 206
    return-void
.end method

.method public drawViewfinder()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 191
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/ViewfinderView;->invalidate()V

    .line 196
    return-void
.end method

.method public hideScanner(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->hideScanner:Z

    .line 187
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    if-nez v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/zxing/client/android/ViewfinderView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/zxing/client/android/ViewfinderView;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->setFramingViewSize(Landroid/graphics/Point;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 97
    .local v12, "frame":Landroid/graphics/Rect;
    if-eqz v12, :cond_0

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v22

    .line 101
    .local v22, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v15

    .line 103
    .local v15, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->hideScanner:Z

    if-eqz v2, :cond_3

    .line 105
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v22

    int-to-float v5, v0

    int-to-float v6, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 124
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v12, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 103
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 108
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v22

    int-to-float v5, v0

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 109
    const/4 v3, 0x0

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 110
    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move/from16 v0, v22

    int-to-float v5, v0

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    const/4 v3, 0x0

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    move/from16 v0, v22

    int-to-float v5, v0

    int-to-float v6, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->reticuleColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    iget v5, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->g2:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 115
    iget v2, v12, Landroid/graphics/Rect;->right:I

    iget v3, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->g2:I

    add-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    iget v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    iget v5, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->g2:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 117
    iget v2, v12, Landroid/graphics/Rect;->right:I

    iget v3, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->g2:I

    add-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 118
    iget v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    iget v6, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->g2:I

    sub-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    iget v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    iget v6, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->g2:I

    sub-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 120
    iget v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->g2:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 121
    iget v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int/2addr v2, v3

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->g2:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 130
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->hideScanner:Z

    if-nez v2, :cond_8

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->laserColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v3, Lcom/coinbase/zxing/client/android/ViewfinderView;->SCANNER_ALPHA:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->scannerAlpha:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->scannerAlpha:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/coinbase/zxing/client/android/ViewfinderView;->SCANNER_ALPHA:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->scannerAlpha:I

    .line 135
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v12, Landroid/graphics/Rect;->top:I

    add-int v16, v2, v3

    .line 136
    .local v16, "middle":I
    iget v2, v12, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    add-int/lit8 v2, v16, -0x1

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    add-int/lit8 v2, v16, 0x2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v18

    .line 139
    .local v18, "previewFrame":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v2, v3

    .line 140
    .local v20, "scaleX":F
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v21, v2, v3

    .line 142
    .local v21, "scaleY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 143
    .local v11, "currentPossible":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 144
    .local v10, "currentLast":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .line 145
    .local v13, "frameLeft":I
    iget v14, v12, Landroid/graphics/Rect;->top:I

    .line 146
    .local v14, "frameTop":I
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 147
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 161
    :goto_3
    if-eqz v10, :cond_8

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    monitor-enter v10

    .line 165
    const/high16 v19, 0x40400000    # 3.0f

    .line 166
    .local v19, "radius":F
    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/ResultPoint;

    .line 167
    .local v17, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    mul-float v3, v3, v20

    float-to-int v3, v3

    add-int/2addr v3, v13

    int-to-float v3, v3

    .line 168
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    mul-float v4, v4, v21

    float-to-int v4, v4

    add-int/2addr v4, v14

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 167
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 171
    .end local v17    # "point":Lcom/google/zxing/ResultPoint;
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 149
    .end local v19    # "radius":F
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 150
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    monitor-enter v11

    .line 154
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/ResultPoint;

    .line 155
    .restart local v17    # "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    mul-float v3, v3, v20

    float-to-int v3, v3

    add-int/2addr v3, v13

    int-to-float v3, v3

    .line 156
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    mul-float v4, v4, v21

    float-to-int v4, v4

    add-int/2addr v4, v14

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 159
    .end local v17    # "point":Lcom/google/zxing/ResultPoint;
    :catchall_1
    move-exception v2

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_6
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_3

    .line 171
    .restart local v19    # "radius":F
    :cond_7
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    .end local v10    # "currentLast":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    .end local v11    # "currentPossible":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    .end local v13    # "frameLeft":I
    .end local v14    # "frameTop":I
    .end local v16    # "middle":I
    .end local v18    # "previewFrame":Landroid/graphics/Rect;
    .end local v19    # "radius":F
    .end local v20    # "scaleX":F
    .end local v21    # "scaleY":F
    :cond_8
    const-wide/16 v4, 0x50

    iget v2, v12, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int v6, v2, v3

    iget v2, v12, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    sub-int v7, v2, v3

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int v8, v2, v3

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->t:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coinbase/zxing/client/android/ViewfinderView;->o:I

    add-int v9, v2, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/coinbase/zxing/client/android/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method

.method public setCameraManager(Lcom/coinbase/zxing/client/android/camera/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/coinbase/zxing/client/android/camera/CameraManager;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/coinbase/zxing/client/android/ViewfinderView;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    .line 88
    return-void
.end method
