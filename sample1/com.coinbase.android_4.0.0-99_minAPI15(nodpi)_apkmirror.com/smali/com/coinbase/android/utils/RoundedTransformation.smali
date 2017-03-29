.class public Lcom/coinbase/android/utils/RoundedTransformation;
.super Ljava/lang/Object;
.source "RoundedTransformation.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# instance fields
.field private final margin:I

.field private final radius:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "radius"    # I
    .param p2, "margin"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/coinbase/android/utils/RoundedTransformation;->radius:I

    .line 21
    iput p2, p0, Lcom/coinbase/android/utils/RoundedTransformation;->margin:I

    .line 22
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rounded(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coinbase/android/utils/RoundedTransformation;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coinbase/android/utils/RoundedTransformation;->margin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, p1, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 31
    .local v1, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 32
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/coinbase/android/utils/RoundedTransformation;->margin:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coinbase/android/utils/RoundedTransformation;->margin:I

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/coinbase/android/utils/RoundedTransformation;->margin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/coinbase/android/utils/RoundedTransformation;->margin:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, p0, Lcom/coinbase/android/utils/RoundedTransformation;->radius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/coinbase/android/utils/RoundedTransformation;->radius:I

    int-to-float v5, v5

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 34
    if-eq p1, v1, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 38
    :cond_0
    return-object v1
.end method
