.class public abstract Lcom/github/mikephil/charting/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final POW_10:[I

.field private static mDrawTextRectBuffer:Landroid/graphics/Rect;

.field private static mMaximumFlingVelocity:I

.field private static mMetrics:Landroid/util/DisplayMetrics;

.field private static mMinimumFlingVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x32

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    .line 35
    const/16 v0, 0x1f40

    sput v0, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    .line 187
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->POW_10:[I

    .line 505
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    return-void

    .line 187
    nop

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "demoText"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 154
    .local v0, "r":Landroid/graphics/Rect;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    return v1
.end method

.method public static calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;
    .locals 4
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "demoText"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 179
    .local v0, "r":Landroid/graphics/Rect;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 180
    new-instance v1, Lcom/github/mikephil/charting/utils/FSize;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    return-object v1
.end method

.method public static calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 1
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "demoText"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static convertDpToPixel(F)F
    .locals 4
    .param p0, "dp"    # F

    .prologue
    .line 94
    sget-object v2, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    if-nez v2, :cond_0

    .line 96
    const-string v2, "MPChartLib-Utils"

    const-string v3, "Utils NOT INITIALIZED. You need to call Utils.init(...) at least once before calling Utils.convertDpToPixel(...). Otherwise conversion does not take place."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local p0    # "dp":F
    :goto_0
    return p0

    .line 103
    .restart local p0    # "dp":F
    :cond_0
    sget-object v0, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    .line 104
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float v1, p0, v2

    .local v1, "px":F
    move p0, v1

    .line 105
    goto :goto_0
.end method

.method public static convertIntegers(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "integers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 330
    .local v1, "ret":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 331
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    return-object v1
.end method

.method public static convertStrings(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 347
    .local v1, "ret":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 348
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_0
    return-object v1
.end method

.method public static drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/PointF;F)V
    .locals 9
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "anchor"    # Landroid/graphics/PointF;
    .param p6, "angleDegrees"    # F

    .prologue
    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, "drawOffsetX":F
    const/4 v1, 0x0

    .line 512
    .local v1, "drawOffsetY":F
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sget-object v8, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    invoke-virtual {p4, p1, v6, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 515
    sget-object v6, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v0, v6

    .line 518
    sget-object v6, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v1, v6

    .line 521
    invoke-virtual {p4}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v2

    .line 522
    .local v2, "originalTextAlign":Landroid/graphics/Paint$Align;
    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 524
    const/4 v6, 0x0

    cmpl-float v6, p6, v6

    if-eqz v6, :cond_2

    .line 527
    sget-object v6, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    sub-float/2addr v0, v6

    .line 528
    sget-object v6, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    sub-float/2addr v1, v6

    .line 530
    move v4, p2

    .line 531
    .local v4, "translateX":F
    move v5, p3

    .line 534
    .local v5, "translateY":F
    iget v6, p5, Landroid/graphics/PointF;->x:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget v6, p5, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    .line 535
    :cond_0
    sget-object v6, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7, p6}, Lcom/github/mikephil/charting/utils/Utils;->getSizeOfRotatedRectangleByDegrees(FFF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v3

    .line 540
    .local v3, "rotatedSize":Lcom/github/mikephil/charting/utils/FSize;
    iget v6, v3, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget v7, p5, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    .line 541
    iget v6, v3, Lcom/github/mikephil/charting/utils/FSize;->height:F

    iget v7, p5, Landroid/graphics/PointF;->y:F

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 544
    .end local v3    # "rotatedSize":Lcom/github/mikephil/charting/utils/FSize;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 545
    invoke-virtual {p0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 546
    invoke-virtual {p0, p6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 548
    invoke-virtual {p0, p1, v0, v1, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 550
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 565
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    :goto_0
    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 566
    return-void

    .line 553
    :cond_2
    iget v6, p5, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    iget v6, p5, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4

    .line 555
    :cond_3
    sget-object v6, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, p5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    sub-float/2addr v0, v6

    .line 556
    sget-object v6, Lcom/github/mikephil/charting/utils/Utils;->mDrawTextRectBuffer:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    sub-float/2addr v1, v6

    .line 559
    :cond_4
    add-float/2addr v0, p2

    .line 560
    add-float/2addr v1, p3

    .line 562
    invoke-virtual {p0, p1, v0, v1, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static getClosestDataSetIndex(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)I
    .locals 6
    .param p1, "val"    # F
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/SelectionDetail;",
            ">;F",
            "Lcom/github/mikephil/charting/components/YAxis$AxisDependency;",
            ")I"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "valsAtIndex":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/SelectionDetail;>;"
    const v3, -0x7fffffff

    .line 382
    .local v3, "index":I
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 384
    .local v1, "distance":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 386
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/utils/SelectionDetail;

    .line 388
    .local v4, "sel":Lcom/github/mikephil/charting/utils/SelectionDetail;
    if-eqz p2, :cond_0

    iget-object v5, v4, Lcom/github/mikephil/charting/utils/SelectionDetail;->dataSet:Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    if-ne v5, p2, :cond_1

    .line 390
    :cond_0
    iget v5, v4, Lcom/github/mikephil/charting/utils/SelectionDetail;->val:F

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 391
    .local v0, "cdistance":F
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1

    .line 392
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/utils/SelectionDetail;

    iget v3, v5, Lcom/github/mikephil/charting/utils/SelectionDetail;->dataSetIndex:I

    .line 393
    move v1, v0

    .line 384
    .end local v0    # "cdistance":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v4    # "sel":Lcom/github/mikephil/charting/utils/SelectionDetail;
    :cond_2
    return v3
.end method

.method public static getDecimals(F)I
    .locals 4
    .param p0, "number"    # F

    .prologue
    .line 316
    float-to-double v2, p0

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v0

    .line 317
    .local v0, "i":F
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public static getLineHeight(Landroid/graphics/Paint;)F
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 160
    .local v0, "metrics":Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    return v1
.end method

.method public static getLineSpacing(Landroid/graphics/Paint;)F
    .locals 3
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 165
    .local v0, "metrics":Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v1, v2

    return v1
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1

    .prologue
    .line 492
    sget v0, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    return v0
.end method

.method public static getMinimumDistance(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 5
    .param p1, "val"    # F
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/utils/SelectionDetail;",
            ">;F",
            "Lcom/github/mikephil/charting/components/YAxis$AxisDependency;",
            ")F"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "valsAtIndex":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/utils/SelectionDetail;>;"
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 415
    .local v1, "distance":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 417
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/utils/SelectionDetail;

    .line 419
    .local v3, "sel":Lcom/github/mikephil/charting/utils/SelectionDetail;
    iget-object v4, v3, Lcom/github/mikephil/charting/utils/SelectionDetail;->dataSet:Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/DataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 421
    iget v4, v3, Lcom/github/mikephil/charting/utils/SelectionDetail;->val:F

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 422
    .local v0, "cdistance":F
    cmpg-float v4, v0, v1

    if-gez v4, :cond_0

    .line 423
    move v1, v0

    .line 415
    .end local v0    # "cdistance":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v3    # "sel":Lcom/github/mikephil/charting/utils/SelectionDetail;
    :cond_1
    return v1
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1

    .prologue
    .line 488
    sget v0, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    return v0
.end method

.method public static getNormalizedAngle(F)F
    .locals 2
    .param p0, "angle"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 499
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 500
    add-float/2addr p0, v1

    goto :goto_0

    .line 502
    :cond_0
    rem-float v0, p0, v1

    return v0
.end method

.method public static getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;
    .locals 8
    .param p0, "center"    # Landroid/graphics/PointF;
    .param p1, "dist"    # F
    .param p2, "angle"    # F

    .prologue
    .line 442
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    float-to-double v2, v1

    float-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    float-to-double v4, p1

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 444
    .local v0, "p":Landroid/graphics/PointF;
    return-object v0
.end method

.method public static getSizeOfRotatedRectangleByDegrees(FFF)Lcom/github/mikephil/charting/utils/FSize;
    .locals 2
    .param p0, "rectangleWidth"    # F
    .param p1, "rectangleHeight"    # F
    .param p2, "degrees"    # F

    .prologue
    .line 581
    const v1, 0x3c8efa35

    mul-float v0, p2, v1

    .line 582
    .local v0, "radians":F
    invoke-static {p0, p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->getSizeOfRotatedRectangleByRadians(FFF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v1

    return-object v1
.end method

.method public static getSizeOfRotatedRectangleByRadians(FFF)Lcom/github/mikephil/charting/utils/FSize;
    .locals 6
    .param p0, "rectangleWidth"    # F
    .param p1, "rectangleHeight"    # F
    .param p2, "radians"    # F

    .prologue
    .line 587
    new-instance v0, Lcom/github/mikephil/charting/utils/FSize;

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/utils/FSize;-><init>(FF)V

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 49
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    .line 51
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    .line 53
    const-string v2, "MPChartLib-Utils"

    const-string v3, "Utils.init(...) PROVIDED CONTEXT OBJECT IS NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 58
    .local v1, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    .line 59
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    sput v2, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sput-object v2, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    goto :goto_0
.end method

.method public static nextUp(D)D
    .locals 6
    .param p0, "d"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 362
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    .line 366
    .end local p0    # "d":D
    :goto_0
    return-wide p0

    .line 365
    .restart local p0    # "d":D
    :cond_0
    add-double/2addr p0, v4

    .line 366
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmpl-double v0, p0, v4

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 481
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 482
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 485
    :goto_0
    return-void

    .line 484
    :cond_0
    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method public static roundToNextSignificant(D)F
    .locals 10
    .param p0, "number"    # D

    .prologue
    .line 300
    const-wide/16 v6, 0x0

    cmpg-double v3, p0, v6

    if-gez v3, :cond_0

    neg-double v6, p0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-float v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 301
    .local v0, "d":F
    float-to-int v3, v0

    rsub-int/lit8 v2, v3, 0x1

    .line 302
    .local v2, "pw":I
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 303
    .local v1, "magnitude":F
    float-to-double v6, v1

    mul-double/2addr v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 304
    .local v4, "shifted":J
    long-to-float v3, v4

    div-float/2addr v3, v1

    return v3

    .end local v0    # "d":F
    .end local v1    # "magnitude":F
    .end local v2    # "pw":I
    .end local v4    # "shifted":J
    :cond_0
    move-wide v6, p0

    .line 300
    goto :goto_0
.end method

.method public static velocityTrackerPointerUpCleanUpIfNecessary(Landroid/view/MotionEvent;Landroid/view/VelocityTracker;)V
    .locals 12
    .param p0, "ev"    # Landroid/view/MotionEvent;
    .param p1, "tracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 452
    const/16 v10, 0x3e8

    sget v11, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 453
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 454
    .local v5, "upIndex":I
    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 455
    .local v3, "id1":I
    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    .line 456
    .local v7, "x1":F
    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    .line 457
    .local v9, "y1":F
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 458
    if-ne v2, v5, :cond_1

    .line 457
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 462
    .local v4, "id2":I
    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    mul-float v6, v7, v10

    .line 463
    .local v6, "x":F
    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    mul-float v8, v9, v10

    .line 465
    .local v8, "y":F
    add-float v1, v6, v8

    .line 466
    .local v1, "dot":F
    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gez v10, :cond_0

    .line 467
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 471
    .end local v1    # "dot":F
    .end local v4    # "id2":I
    .end local v6    # "x":F
    .end local v8    # "y":F
    :cond_2
    return-void
.end method
