.class public Lcom/mixpanel/android/util/ActivityImageUtils;
.super Ljava/lang/Object;
.source "ActivityImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHighlightColor(I)I
    .locals 3
    .param p0, "sampleColor"    # I

    .prologue
    .line 57
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 58
    .local v0, "hsvBackground":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 59
    const/4 v1, 0x2

    const v2, 0x3e99999a    # 0.3f

    aput v2, v0, v1

    .line 61
    const/16 v1, 0xf2

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    return v1
.end method

.method public static getHighlightColorFromBackground(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    const/high16 v0, -0x1000000

    .line 39
    .local v0, "incolor":I
    invoke-static {p0, v3, v3, v2}, Lcom/mixpanel/android/util/ActivityImageUtils;->getScaledScreenshot(Landroid/app/Activity;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 40
    .local v1, "screenshot1px":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 43
    :cond_0
    invoke-static {v0}, Lcom/mixpanel/android/util/ActivityImageUtils;->getHighlightColor(I)I

    move-result v2

    return v2
.end method

.method public static getHighlightColorFromBitmap(Landroid/graphics/Bitmap;)I
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    const/high16 v1, -0x1000000

    .line 48
    .local v1, "incolor":I
    if-eqz p0, :cond_0

    .line 49
    invoke-static {p0, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, "bitmap1px":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 52
    .end local v0    # "bitmap1px":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {v1}, Lcom/mixpanel/android/util/ActivityImageUtils;->getHighlightColor(I)I

    move-result v2

    return v2
.end method

.method public static getScaledScreenshot(Landroid/app/Activity;IIZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "scaleWidth"    # I
    .param p2, "scaleHeight"    # I
    .param p3, "relativeScaleIfTrue"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 11
    const v5, 0x1020002

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 12
    .local v4, "someView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 13
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v1

    .line 14
    .local v1, "originalCacheState":Z
    invoke-virtual {v2, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 15
    invoke-virtual {v2, v7}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    .local v0, "original":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 22
    .local v3, "scaled":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lez v5, :cond_1

    .line 23
    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int p1, v5, p1

    .line 25
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int p2, v5, p2

    .line 27
    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 28
    invoke-static {v0, p1, p2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 31
    :cond_1
    if-nez v1, :cond_2

    .line 32
    invoke-virtual {v2, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 34
    :cond_2
    return-object v3
.end method
