.class public Lcom/coinbase/android/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/utils/Utils$URLSpanNoUnderline;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDpToPixels(Landroid/content/res/Resources;I)F
    .locals 3
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "dp"    # I

    .prologue
    .line 184
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static createBarcode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v6, Ljava/util/Hashtable;

    const/4 v2, 0x2

    invoke-direct {v6, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 85
    .local v6, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    new-instance v1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .local v1, "writer":Lcom/google/zxing/MultiFormatWriter;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 86
    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v18

    .line 88
    .local v18, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 89
    .local v10, "width":I
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    .line 90
    .local v14, "height":I
    const/high16 v16, -0x1000000

    .line 91
    .local v16, "fgColor":I
    const v15, 0xffffff

    .line 92
    .local v15, "bgColor":I
    mul-int v2, v10, v14

    new-array v8, v2, [I

    .line 94
    .local v8, "pixels":[I
    const/16 v20, 0x0

    .local v20, "y":I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v14, :cond_2

    .line 95
    mul-int v17, v20, v10

    .line 96
    .local v17, "offset":I
    const/16 v19, 0x0

    .local v19, "x":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v10, :cond_1

    .line 97
    add-int v3, v17, v19

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v2, v16

    :goto_2
    aput v2, v8, v3

    .line 96
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_0
    move v2, v15

    .line 97
    goto :goto_2

    .line 94
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 101
    .end local v17    # "offset":I
    .end local v19    # "x":I
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 102
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 103
    return-object v7
.end method

.method public static curry(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/coinbase/ObjectMapperProvider;->createDefaultMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    .line 260
    .local v1, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 262
    :goto_0
    return-object v2

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getDateTimeFrom(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 544
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 545
    .local v0, "formatter":Lorg/joda/time/format/DateTimeFormatter;
    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v1

    return-object v1
.end method

.method public static getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;
    .locals 5
    .param p1, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<*>;",
            "Lretrofit/Retrofit;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "response":Lretrofit/Response;, "Lretrofit/Response<*>;"
    const/4 v4, 0x0

    .line 373
    const-class v3, Lcom/coinbase/v2/models/errors/Errors;

    new-array v4, v4, [Ljava/lang/annotation/Annotation;

    .line 374
    invoke-virtual {p1, v3, v4}, Lretrofit/Retrofit;->responseConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object v0

    .line 376
    .local v0, "converter":Lretrofit/Converter;, "Lretrofit/Converter<Lcom/squareup/okhttp/ResponseBody;Lcom/coinbase/v2/models/errors/Errors;>;"
    const/4 v2, 0x0

    .line 380
    .local v2, "message":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lretrofit/Response;->errorBody()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-interface {v0, v3}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/errors/Errors;

    .line 381
    .local v1, "errors":Lcom/coinbase/v2/models/errors/Errors;
    invoke-virtual {v1}, Lcom/coinbase/v2/models/errors/Errors;->getErrors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 382
    invoke-virtual {v1}, Lcom/coinbase/v2/models/errors/Errors;->getErrors()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/errors/ErrorBody;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/errors/ErrorBody;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 387
    .end local v1    # "errors":Lcom/coinbase/v2/models/errors/Errors;
    :cond_0
    :goto_0
    return-object v2

    .line 383
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getErrors(Lretrofit/Response;Lretrofit/Retrofit;)Lcom/coinbase/v2/models/errors/Errors;
    .locals 5
    .param p1, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<*>;",
            "Lretrofit/Retrofit;",
            ")",
            "Lcom/coinbase/v2/models/errors/Errors;"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "response":Lretrofit/Response;, "Lretrofit/Response<*>;"
    const-class v3, Lcom/coinbase/v2/models/errors/Errors;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/annotation/Annotation;

    .line 392
    invoke-virtual {p1, v3, v4}, Lretrofit/Retrofit;->responseConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object v1

    .line 394
    .local v1, "converter":Lretrofit/Converter;, "Lretrofit/Converter<Lcom/squareup/okhttp/ResponseBody;Lcom/coinbase/v2/models/errors/Errors;>;"
    const/4 v2, 0x0

    .line 397
    .local v2, "errors":Lcom/coinbase/v2/models/errors/Errors;
    :try_start_0
    invoke-virtual {p0}, Lretrofit/Response;->errorBody()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-interface {v1, v3}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/coinbase/v2/models/errors/Errors;

    move-object v2, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-object v2

    .line 398
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getGravatarUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 107
    if-eqz p0, :cond_0

    .line 108
    const-string v0, "https://secure.gravatar.com/avatar/%1$s?s=100&d=https://coinbase.com/assets/avatar.png"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 109
    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coinbase/android/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 108
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 216
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 218
    .local v0, "display":Landroid/view/Display;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-lt v4, v5, :cond_0

    .line 219
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 220
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 221
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 226
    .end local v2    # "size":Landroid/graphics/Point;
    .local v1, "height":I
    :goto_0
    return v1

    .line 223
    .end local v1    # "height":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method public static getInstitutionLogo(Lcom/coinbase/api/internal/entity/Institution;)I
    .locals 2
    .param p0, "institution"    # Lcom/coinbase/api/internal/entity/Institution;

    .prologue
    .line 230
    if-nez p0, :cond_0

    .line 231
    const v0, 0x7f0200de

    .line 253
    :goto_0
    return v0

    .line 233
    :cond_0
    sget-object v0, Lcom/coinbase/android/utils/Utils$4;->$SwitchMap$com$coinbase$api$internal$entity$Institution:[I

    invoke-virtual {p0}, Lcom/coinbase/api/internal/entity/Institution;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 253
    const v0, 0x7f0200ea

    goto :goto_0

    .line 235
    :pswitch_0
    const v0, 0x7f0200e1

    goto :goto_0

    .line 237
    :pswitch_1
    const v0, 0x7f0200e2

    goto :goto_0

    .line 239
    :pswitch_2
    const v0, 0x7f0200e6

    goto :goto_0

    .line 241
    :pswitch_3
    const v0, 0x7f0200e3

    goto :goto_0

    .line 243
    :pswitch_4
    const v0, 0x7f0200e4

    goto :goto_0

    .line 245
    :pswitch_5
    const v0, 0x7f0200e5

    goto :goto_0

    .line 247
    :pswitch_6
    const v0, 0x7f0200e7

    goto :goto_0

    .line 249
    :pswitch_7
    const v0, 0x7f0200e8

    goto :goto_0

    .line 251
    :pswitch_8
    const v0, 0x7f0200e9

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getPixels(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimensionDp"    # I

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 307
    const-string v1, "Utils.getPixels"

    const-string v2, "context is null, can\'t calculate pixels"

    invoke-static {v1, v2}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .end local p1    # "dimensionDp":I
    :goto_0
    return p1

    .line 311
    .restart local p1    # "dimensionDp":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 312
    .local v0, "density":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int p1, v1

    goto :goto_0
.end method

.method public static getRateNotice(Landroid/content/Context;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "isWhite"    # Z
    .param p2, "positiveCallback"    # Ljava/lang/Runnable;
    .param p3, "negativeCallback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    const v7, 0x7f0d028d

    const v6, 0x7f0d028b

    .line 406
    if-nez p0, :cond_0

    .line 445
    :goto_0
    return-object v3

    .line 409
    :cond_0
    const v5, 0x7f03008e

    invoke-static {p0, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 411
    .local v3, "rateNotice":Landroid/view/View;
    const v5, 0x7f0d0288

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 412
    .local v4, "titleTextView":Landroid/widget/TextView;
    const-string v5, "Roboto-Light"

    invoke-static {p0, v5}, Lcom/coinbase/android/ui/FontManager;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 414
    if-eqz p1, :cond_1

    .line 415
    const v5, 0x7f0c0083

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 416
    .local v2, "darkTextColor":I
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    const v5, 0x7f0d0289

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    const v5, 0x7f0c00a2

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 421
    const v5, 0x7f0d028c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 424
    .end local v2    # "darkTextColor":I
    :cond_1
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 425
    .local v1, "btnPositive":Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 426
    .local v0, "btnNegative":Landroid/widget/TextView;
    new-instance v5, Lcom/coinbase/android/utils/Utils$2;

    invoke-direct {v5, p2, p0}, Lcom/coinbase/android/utils/Utils$2;-><init>(Ljava/lang/Runnable;Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    new-instance v5, Lcom/coinbase/android/utils/Utils$3;

    invoke-direct {v5, p3}, Lcom/coinbase/android/utils/Utils$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static getRateNoticeState(Landroid/content/Context;)Lcom/coinbase/android/Constants$RateNoticeState;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 449
    if-nez p0, :cond_0

    .line 450
    sget-object v0, Lcom/coinbase/android/Constants$RateNoticeState;->NOTICE_NOT_YET_SHOWN:Lcom/coinbase/android/Constants$RateNoticeState;

    .line 458
    :goto_0
    return-object v0

    .line 452
    :cond_0
    const-string v1, "account_rate_notice_state"

    sget-object v2, Lcom/coinbase/android/Constants$RateNoticeState;->NOTICE_NOT_YET_SHOWN:Lcom/coinbase/android/Constants$RateNoticeState;

    .line 456
    invoke-virtual {v2}, Lcom/coinbase/android/Constants$RateNoticeState;->name()Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-static {p0, v1, v2}, Lcom/coinbase/android/utils/PreferenceUtils;->getPrefsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v1}, Lcom/coinbase/android/Constants$RateNoticeState;->valueOf(Ljava/lang/String;)Lcom/coinbase/android/Constants$RateNoticeState;

    move-result-object v0

    .line 458
    .local v0, "rateNoticeState":Lcom/coinbase/android/Constants$RateNoticeState;
    goto :goto_0
.end method

.method public static hideKeyboard(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 476
    if-nez p0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 480
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 481
    new-instance v1, Landroid/view/View;

    .end local v1    # "view":Landroid/view/View;
    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 483
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 484
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 486
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public static hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 491
    .local v0, "focus":Landroid/view/View;
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 492
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    .end local p1    # "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 494
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 495
    return-void

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    move-object p1, v0

    .line 492
    goto :goto_0
.end method

.method public static isConnectedOrConnecting(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 155
    const-string v2, "connectivity"

    .line 156
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 157
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 158
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isLandscape(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 199
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 201
    .local v0, "display":Landroid/view/Display;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xd

    if-lt v5, v6, :cond_0

    .line 202
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 203
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 204
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 205
    .local v3, "width":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 211
    .end local v2    # "size":Landroid/graphics/Point;
    .local v1, "height":I
    :goto_0
    if-le v3, v1, :cond_1

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 207
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 208
    .restart local v3    # "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0

    .line 211
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isLandscapeTablet(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneVerified(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/phoneNumber/Data;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/phoneNumber/Data;>;"
    const/4 v0, 0x0

    .line 576
    .local v0, "isVerified":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/phoneNumber/Data;

    .line 577
    .local v1, "number":Lcom/coinbase/api/internal/models/phoneNumber/Data;
    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/phoneNumber/Data;->getVerified()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    const/4 v0, 0x1

    goto :goto_0

    .line 581
    .end local v1    # "number":Lcom/coinbase/api/internal/models/phoneNumber/Data;
    :cond_1
    return v0
.end method

.method public static isStateUnsupported(Lcom/coinbase/v1/entity/User;)Z
    .locals 2
    .param p0, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/coinbase/v1/entity/User;->getStateUnsupported()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 532
    .local v0, "stateUnsupported":Z
    :goto_0
    return v0

    .line 530
    .end local v0    # "stateUnsupported":Z
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/v1/entity/User;->getStateUnsupported()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static isStateVerificationRequired(Lcom/coinbase/v1/entity/User;)Z
    .locals 2
    .param p0, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/coinbase/v1/entity/User;->getStateVerificationRequired()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 526
    .local v0, "stateVerificationRequired":Z
    :goto_0
    return v0

    .line 524
    .end local v0    # "stateVerificationRequired":Z
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/v1/entity/User;->getStateVerificationRequired()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUserAgreementRequired(Lcom/coinbase/v1/entity/User;Landroid/content/Context;)Z
    .locals 4
    .param p0, "user"    # Lcom/coinbase/v1/entity/User;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/coinbase/v1/entity/User;->getNeedsToReAcceptUserAgreement()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 537
    .local v1, "userAgreementRequired":Z
    :goto_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 538
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "account_needs_user_agreement"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 540
    return v1

    .line 536
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "userAgreementRequired":Z
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/v1/entity/User;->getNeedsToReAcceptUserAgreement()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static lastSelectedCurrencyType(Landroid/content/Context;)Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 585
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 586
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "last_chosen_currency"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "currencyPrefs":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 589
    sget-object v2, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->BTC:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    .line 591
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->fromString(Ljava/lang/String;)Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v2

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 124
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 125
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 126
    .local v1, "digest":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v4, "sb":Ljava/lang/StringBuilder;
    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-byte v0, v1, v6

    .line 128
    .local v0, "b":B
    and-int/lit16 v5, v0, 0xff

    .line 129
    .local v5, "unsigned":I
    const/16 v8, 0x10

    if-ge v5, v8, :cond_0

    .line 130
    const-string v8, "0"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "b":B
    .end local v1    # "digest":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "unsigned":I
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "MD5 does not exist"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 133
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "digest":[B
    .restart local v3    # "md":Ljava/security/MessageDigest;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static processPhoneNumbersUpdatedEvent(Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;Landroid/content/Context;)V
    .locals 1
    .param p0, "event"    # Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 549
    if-nez p0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;->toastMessage:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;->toastMessage:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;->toastMessage:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;->toastMessage:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2
    .param p0, "observer"    # Landroid/view/ViewTreeObserver;
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 165
    invoke-static {p0, p1}, Lcom/coinbase/android/utils/Utils;->removeLayoutListenerPre16(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {p0, p1}, Lcom/coinbase/android/utils/Utils;->removeLayoutListenerPost16(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private static removeLayoutListenerPost16(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p0, "observer"    # Landroid/view/ViewTreeObserver;
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 181
    return-void
.end method

.method private static removeLayoutListenerPre16(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p0, "observer"    # Landroid/view/ViewTreeObserver;
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 175
    return-void
.end method

.method public static roundToSignificantFigures(DIZ)D
    .locals 12
    .param p0, "num"    # D
    .param p2, "n"    # I
    .param p3, "isFloor"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 316
    cmpl-double v5, p0, v8

    if-nez v5, :cond_1

    move-wide p0, v8

    .line 334
    .end local p0    # "num":D
    :cond_0
    :goto_0
    return-wide p0

    .line 320
    .restart local p0    # "num":D
    :cond_1
    if-eqz p2, :cond_0

    .line 323
    cmpg-double v5, p0, v8

    if-gez v5, :cond_2

    neg-double v8, p0

    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 324
    .local v0, "d":D
    double-to-int v5, v0

    sub-int v4, p2, v5

    .line 326
    .local v4, "power":I
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    int-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 329
    .local v2, "magnitude":D
    if-eqz p3, :cond_3

    .line 330
    mul-double v8, p0, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v6, v8

    .line 334
    .local v6, "shifted":J
    :goto_2
    long-to-double v8, v6

    div-double p0, v8, v2

    goto :goto_0

    .end local v0    # "d":D
    .end local v2    # "magnitude":D
    .end local v4    # "power":I
    .end local v6    # "shifted":J
    :cond_2
    move-wide v8, p0

    .line 323
    goto :goto_1

    .line 332
    .restart local v0    # "d":D
    .restart local v2    # "magnitude":D
    .restart local v4    # "power":I
    :cond_3
    mul-double v8, p0, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .restart local v6    # "shifted":J
    goto :goto_2
.end method

.method public static setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F
    .param p2, "animated"    # Z
    .param p3, "completion"    # Ljava/lang/Runnable;

    .prologue
    .line 338
    if-eqz p2, :cond_1

    .line 339
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 340
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 341
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    new-instance v1, Lcom/coinbase/android/utils/Utils$1;

    invoke-direct {v1, p3}, Lcom/coinbase/android/utils/Utils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 364
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 370
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 367
    if-eqz p3, :cond_0

    .line 368
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static setClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/coinbase/android/utils/PlatformUtils;->hasHoneycomb()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    const-string v2, "clipboard"

    .line 143
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 144
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v2, "Coinbase"

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 145
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 152
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v2, "clipboard"

    .line 149
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 150
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v1, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showKeyboard(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 499
    if-nez p0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 503
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 504
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method public static showLongMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 469
    if-nez p0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 472
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 462
    if-nez p0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 465
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V
    .locals 4
    .param p1, "retrofit"    # Lretrofit/Retrofit;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<*>;",
            "Lretrofit/Retrofit;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "response":Lretrofit/Response;, "Lretrofit/Response<*>;"
    if-nez p2, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-static {p0, p1}, Lcom/coinbase/android/utils/Utils;->getErrors(Lretrofit/Response;Lretrofit/Retrofit;)Lcom/coinbase/v2/models/errors/Errors;

    move-result-object v1

    .line 566
    .local v1, "errors":Lcom/coinbase/v2/models/errors/Errors;
    invoke-virtual {v1}, Lcom/coinbase/v2/models/errors/Errors;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/errors/ErrorBody;

    .line 567
    .local v0, "errorBody":Lcom/coinbase/v2/models/errors/ErrorBody;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/errors/ErrorBody;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stripUnderlines(Landroid/widget/TextView;)V
    .locals 10
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v7, 0x0

    .line 281
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 282
    .local v1, "s":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v8, Landroid/text/style/URLSpan;

    invoke-interface {v1, v7, v6, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/URLSpan;

    .line 283
    .local v4, "spans":[Landroid/text/style/URLSpan;
    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v2, v4, v6

    .line 284
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {v1, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 285
    .local v5, "start":I
    invoke-interface {v1, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 286
    .local v0, "end":I
    invoke-interface {v1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 287
    new-instance v3, Lcom/coinbase/android/utils/Utils$URLSpanNoUnderline;

    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/coinbase/android/utils/Utils$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 288
    .end local v2    # "span":Landroid/text/style/URLSpan;
    .local v3, "span":Landroid/text/style/URLSpan;
    invoke-interface {v1, v3, v5, v0, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 283
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "end":I
    .end local v3    # "span":Landroid/text/style/URLSpan;
    .end local v5    # "start":I
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method

.method public static supportEmailIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "senderEmail"    # Ljava/lang/String;
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 509
    const-string v2, "mailto:support@coinbase.com"

    .line 511
    .local v2, "uriText":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?subject="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 514
    :cond_0
    if-eqz p0, :cond_1

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&body="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Coinbase email: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 518
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .local v0, "contactSupportIntent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 520
    return-object v0
.end method

.method public static uncurry(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 267
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    .line 276
    :goto_0
    return-object v3

    .line 270
    :cond_0
    invoke-static {}, Lcom/coinbase/ObjectMapperProvider;->createDefaultMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    .line 271
    .local v2, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    .line 274
    .local v1, "factory":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    :try_start_0
    const-class v3, Ljava/util/List;

    const-class v5, Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 276
    goto :goto_0
.end method
