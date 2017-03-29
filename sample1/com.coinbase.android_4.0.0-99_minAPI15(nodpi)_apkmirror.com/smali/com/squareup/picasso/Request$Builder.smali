.class public final Lcom/squareup/picasso/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private centerCrop:Z

.field private centerInside:Z

.field private config:Landroid/graphics/Bitmap$Config;

.field private hasRotationPivot:Z

.field private onlyScaleDown:Z

.field private priority:Lcom/squareup/picasso/Picasso$Priority;

.field private resourceId:I

.field private rotationDegrees:F

.field private rotationPivotX:F

.field private rotationPivotY:F

.field private stableKey:Ljava/lang/String;

.field private targetHeight:I

.field private targetWidth:I

.field private transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/picasso/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resourceId"    # I
    .param p3, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    .line 220
    iput p2, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    .line 221
    iput-object p3, p0, Lcom/squareup/picasso/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    .line 222
    return-void
.end method


# virtual methods
.method public build()Lcom/squareup/picasso/Request;
    .locals 18

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    if-eqz v1, :cond_0

    .line 455
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop and center inside can not be used together."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    if-nez v1, :cond_1

    .line 458
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center crop requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    if-nez v1, :cond_2

    .line 462
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center inside requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/picasso/Request$Builder;->priority:Lcom/squareup/picasso/Picasso$Priority;

    if-nez v1, :cond_3

    .line 466
    sget-object v1, Lcom/squareup/picasso/Picasso$Priority;->NORMAL:Lcom/squareup/picasso/Picasso$Priority;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/squareup/picasso/Request$Builder;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 468
    :cond_3
    new-instance v1, Lcom/squareup/picasso/Request;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/squareup/picasso/Request$Builder;->stableKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/squareup/picasso/Request$Builder;->centerCrop:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/squareup/picasso/Request$Builder;->centerInside:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/squareup/picasso/Request$Builder;->onlyScaleDown:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/squareup/picasso/Request$Builder;->rotationDegrees:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/squareup/picasso/Request$Builder;->rotationPivotX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/squareup/picasso/Request$Builder;->rotationPivotY:F

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/squareup/picasso/Request$Builder;->hasRotationPivot:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/squareup/picasso/Request$Builder;->config:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/picasso/Request$Builder;->priority:Lcom/squareup/picasso/Picasso$Priority;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/squareup/picasso/Request;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$Priority;Lcom/squareup/picasso/Request$1;)V

    return-object v1
.end method

.method hasImage()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->resourceId:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSize()Z
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resize(II)Lcom/squareup/picasso/Request$Builder;
    .locals 2
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    .line 298
    if-gez p1, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width must be positive number or 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    if-gez p2, :cond_1

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be positive number or 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one dimension has to be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_2
    iput p1, p0, Lcom/squareup/picasso/Request$Builder;->targetWidth:I

    .line 308
    iput p2, p0, Lcom/squareup/picasso/Request$Builder;->targetHeight:I

    .line 309
    return-object p0
.end method

.method public transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/Request$Builder;
    .locals 2
    .param p1, "transformation"    # Lcom/squareup/picasso/Transformation;

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformation must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    invoke-interface {p1}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformation key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    if-nez v0, :cond_2

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/squareup/picasso/Request$Builder;->transformations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    return-object p0
.end method
