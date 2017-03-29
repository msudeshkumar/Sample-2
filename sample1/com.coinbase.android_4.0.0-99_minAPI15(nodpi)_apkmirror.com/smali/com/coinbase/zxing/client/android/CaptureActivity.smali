.class public final Lcom/coinbase/zxing/client/android/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final EXPLAIN_TEXT:Ljava/lang/String; = "CaptureActivity_Explanation_Text"

.field public static final QR_BITMAP:Ljava/lang/String; = "CaptureActivity_QR_Code_Bitmap"

.field public static final QR_TEXT:Ljava/lang/String; = "CaptureActivity_QR_Code_Text"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private addressView:Landroid/view/View;

.field private beepManager:Lcom/coinbase/zxing/client/android/BeepManager;

.field private cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private copyAddressBtn:Landroid/widget/Button;

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private explanation:Landroid/widget/TextView;

.field private explanationText:Ljava/lang/String;

.field private handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/coinbase/zxing/client/android/InactivityTimer;

.field private qrCode:Landroid/widget/ImageView;

.field private qrText:Landroid/widget/TextView;

.field private qr_image:Landroid/graphics/Bitmap;

.field private qr_text:Ljava/lang/String;

.field private savedResultToShow:Lcom/google/zxing/Result;

.field private scanTabsWidget:Lcom/coinbase/zxing/client/android/ScanTabsWidget;

.field private source:Lcom/coinbase/zxing/client/android/IntentSource;

.field private statusView:Landroid/widget/TextView;

.field private viewfinderView:Lcom/coinbase/zxing/client/android/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/coinbase/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coinbase/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/zxing/client/android/CaptureActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/zxing/client/android/CaptureActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->copyAddress()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/zxing/client/android/CaptureActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/zxing/client/android/CaptureActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qr_text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/zxing/client/android/CaptureActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->addressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/zxing/client/android/CaptureActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/zxing/client/android/CaptureActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qrCode:Landroid/widget/ImageView;

    return-object v0
.end method

.method private copyAddress()V
    .locals 4

    .prologue
    .line 511
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 513
    const-string v2, "clipboard"

    .line 514
    invoke-virtual {p0, v2}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 515
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v2, "Coinbase"

    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qr_text:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 516
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 523
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :goto_0
    sget v2, Lcom/coinbase/zxing/client/android/R$string;->addresses_copied:I

    invoke-virtual {p0, v2}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 524
    return-void

    .line 519
    :cond_0
    const-string v2, "clipboard"

    .line 520
    invoke-virtual {p0, v2}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 521
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    iget-object v2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qr_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 471
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    if-nez v1, :cond_0

    .line 472
    iput-object p2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 483
    :goto_0
    return-void

    .line 474
    :cond_0
    if-eqz p2, :cond_1

    .line 475
    iput-object p2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    sget v2, Lcom/coinbase/zxing/client/android/R$id;->decode_succeeded:I

    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 479
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v1, v0}, Lcom/coinbase/zxing/client/android/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    .end local v0    # "message":Landroid/os/Message;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    goto :goto_0
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 3

    .prologue
    .line 486
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 487
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/coinbase/zxing/client/android/R$string;->app_name:I

    invoke-virtual {p0, v1}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 488
    const-string v1, "There was a camera error."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 489
    const v1, 0x104000a

    new-instance v2, Lcom/coinbase/zxing/client/android/FinishListener;

    invoke-direct {v2, p0}, Lcom/coinbase/zxing/client/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 490
    new-instance v1, Lcom/coinbase/zxing/client/android/FinishListener;

    invoke-direct {v1, p0}, Lcom/coinbase/zxing/client/android/FinishListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 491
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 492
    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "a"    # Lcom/google/zxing/ResultPoint;
    .param p3, "b"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 403
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 404
    return-void
.end method

.method private drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 9
    .param p1, "barcode"    # Landroid/graphics/Bitmap;
    .param p2, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 379
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v3

    .line 380
    .local v3, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    .line 381
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 382
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 383
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/coinbase/zxing/client/android/R$color;->barcode_result_points:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    array-length v5, v3

    if-ne v5, v8, :cond_1

    .line 385
    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 386
    aget-object v4, v3, v4

    aget-object v5, v3, v7

    invoke-static {v0, v1, v4, v5}, Lcom/coinbase/zxing/client/android/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 400
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 387
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :cond_1
    array-length v5, v3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 388
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v5, v6, :cond_2

    .line 389
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v5, v6, :cond_3

    .line 391
    :cond_2
    aget-object v4, v3, v4

    aget-object v5, v3, v7

    invoke-static {v0, v1, v4, v5}, Lcom/coinbase/zxing/client/android/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 392
    aget-object v4, v3, v8

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v0, v1, v4, v5}, Lcom/coinbase/zxing/client/android/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    goto :goto_0

    .line 394
    :cond_3
    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 395
    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 396
    .local v2, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-virtual {v0, v6, v7, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 395
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getCurrentOrientation()I
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 111
    .local v0, "rotation":I
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 112
    packed-switch v0, :pswitch_data_0

    .line 117
    const/16 v1, 0x8

    .line 125
    :goto_0
    return v1

    .line 115
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 120
    :cond_0
    packed-switch v0, :pswitch_data_1

    .line 125
    :pswitch_1
    const/16 v1, 0x9

    goto :goto_0

    .line 123
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 120
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleDecodeExternally(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 408
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v8, 0x80000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    const-string v8, "SCAN_RESULT"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v8, "SCAN_RESULT_FORMAT"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v7

    .line 413
    .local v7, "rawBytes":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    if-lez v8, :cond_0

    .line 414
    const-string v8, "SCAN_RESULT_BYTES"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 416
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v5

    .line 417
    .local v5, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    if-eqz v5, :cond_4

    .line 418
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 419
    const-string v8, "SCAN_RESULT_UPC_EAN_EXTENSION"

    sget-object v9, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    .line 420
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 419
    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    :cond_1
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 423
    .local v6, "orientation":Ljava/lang/Integer;
    if-eqz v6, :cond_2

    .line 424
    const-string v8, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    :cond_2
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 427
    .local v2, "ecLevel":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 428
    const-string v8, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    :cond_3
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 431
    .local v1, "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    if-eqz v1, :cond_4

    .line 432
    const/4 v3, 0x0

    .line 433
    .local v3, "i":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 434
    .local v0, "byteSegment":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 435
    add-int/lit8 v3, v3, 0x1

    .line 436
    goto :goto_0

    .line 439
    .end local v0    # "byteSegment":[B
    .end local v1    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v2    # "ecLevel":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "orientation":Ljava/lang/Integer;
    :cond_4
    const/4 v8, -0x1

    invoke-virtual {p0, v8, v4}, Lcom/coinbase/zxing/client/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 440
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->finish()V

    .line 441
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 444
    if-nez p1, :cond_0

    .line 445
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No SurfaceHolder provided"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    sget-object v2, Lcom/coinbase/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v3, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_0
    return-void

    .line 452
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2, p0, p1}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->openDriver(Landroid/app/Activity;Landroid/view/SurfaceHolder;)V

    .line 454
    iget-object v2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    if-nez v2, :cond_2

    .line 455
    new-instance v2, Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    iget-object v4, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    iget-object v5, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/coinbase/zxing/client/android/CaptureActivityHandler;-><init>(Lcom/coinbase/zxing/client/android/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/coinbase/zxing/client/android/camera/CameraManager;)V

    iput-object v2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    .line 457
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/coinbase/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    invoke-direct {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0

    .line 461
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/coinbase/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected error initializing camera"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    invoke-direct {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_0
.end method

.method private resetStatusView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 502
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/coinbase/zxing/client/android/ViewfinderView;

    invoke-virtual {v0, v1}, Lcom/coinbase/zxing/client/android/ViewfinderView;->setVisibility(I)V

    .line 504
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/coinbase/zxing/client/android/ViewfinderView;

    invoke-virtual {v0}, Lcom/coinbase/zxing/client/android/ViewfinderView;->drawViewfinder()V

    .line 508
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 210
    return-void
.end method

.method getCameraManager()Lcom/coinbase/zxing/client/android/camera/CameraManager;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    return-object v0
.end method

.method getViewfinderView()Lcom/coinbase/zxing/client/android/ViewfinderView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/coinbase/zxing/client/android/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/coinbase/zxing/client/android/InactivityTimer;

    invoke-virtual {v1}, Lcom/coinbase/zxing/client/android/InactivityTimer;->onActivity()V

    .line 362
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 363
    .local v0, "fromLiveScan":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 365
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->beepManager:Lcom/coinbase/zxing/client/android/BeepManager;

    invoke-virtual {v1}, Lcom/coinbase/zxing/client/android/BeepManager;->playBeepSoundAndVibrate()V

    .line 366
    invoke-direct {p0, p2, p1}, Lcom/coinbase/zxing/client/android/CaptureActivity;->drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    .line 369
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coinbase/zxing/client/android/CaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    .line 370
    return-void

    .line 362
    .end local v0    # "fromLiveScan":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 135
    .local v2, "window":Landroid/view/Window;
    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 136
    sget v3, Lcom/coinbase/zxing/client/android/R$layout;->zxing_capture:I

    invoke-virtual {p0, v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->setContentView(I)V

    .line 138
    sget v3, Lcom/coinbase/zxing/client/android/R$id;->this_is_landscape_large:I

    invoke-virtual {p0, v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 140
    .local v1, "isLargeLandscape":Z
    :goto_0
    iput-boolean v4, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 141
    new-instance v3, Lcom/coinbase/zxing/client/android/InactivityTimer;

    invoke-direct {v3, p0}, Lcom/coinbase/zxing/client/android/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/coinbase/zxing/client/android/InactivityTimer;

    .line 142
    new-instance v3, Lcom/coinbase/zxing/client/android/BeepManager;

    invoke-direct {v3, p0}, Lcom/coinbase/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->beepManager:Lcom/coinbase/zxing/client/android/BeepManager;

    .line 144
    sget v3, Lcom/coinbase/zxing/client/android/R$id;->scan_widget:I

    invoke-virtual {p0, v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->scanTabsWidget:Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    .line 146
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "CaptureActivity_Explanation_Text"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->explanationText:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "CaptureActivity_QR_Code_Text"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qr_text:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "CaptureActivity_QR_Code_Bitmap"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 149
    .local v0, "byte_array":[B
    if-eqz v0, :cond_0

    .line 150
    array-length v3, v0

    invoke-static {v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qr_image:Landroid/graphics/Bitmap;

    .line 153
    :cond_0
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qr_text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 154
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->scanTabsWidget:Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->setVisibility(I)V

    .line 156
    :cond_1
    sget v3, Lcom/coinbase/zxing/client/android/R$id;->my_address:I

    invoke-virtual {p0, v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->addressView:Landroid/view/View;

    .line 158
    sget v3, Lcom/coinbase/zxing/client/android/R$id;->qrcode:I

    invoke-virtual {p0, v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qrCode:Landroid/widget/ImageView;

    .line 159
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qrCode:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qr_image:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    sget v3, Lcom/coinbase/zxing/client/android/R$id;->qrcode_text:I

    invoke-virtual {p0, v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qrText:Landroid/widget/TextView;

    .line 162
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qrText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->qr_text:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    sget v3, Lcom/coinbase/zxing/client/android/R$id;->explaination:I

    invoke-virtual {p0, v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->explanation:Landroid/widget/TextView;

    .line 165
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->explanationText:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->explanationText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->explanation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->explanationText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->explanation:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :cond_2
    sget v3, Lcom/coinbase/zxing/client/android/R$id;->copy_address:I

    invoke-virtual {p0, v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->copyAddressBtn:Landroid/widget/Button;

    .line 171
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->copyAddressBtn:Landroid/widget/Button;

    new-instance v4, Lcom/coinbase/zxing/client/android/CaptureActivity$1;

    invoke-direct {v4, p0}, Lcom/coinbase/zxing/client/android/CaptureActivity$1;-><init>(Lcom/coinbase/zxing/client/android/CaptureActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->scanTabsWidget:Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    new-instance v4, Lcom/coinbase/zxing/client/android/CaptureActivity$2;

    invoke-direct {v4, p0}, Lcom/coinbase/zxing/client/android/CaptureActivity$2;-><init>(Lcom/coinbase/zxing/client/android/CaptureActivity;)V

    invoke-virtual {v3, v4}, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void

    .end local v0    # "byte_array":[B
    .end local v1    # "isLargeLandscape":Z
    :cond_3
    move v1, v4

    .line 138
    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/coinbase/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Lcom/coinbase/zxing/client/android/InactivityTimer;->shutdown()V

    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 307
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 311
    sparse-switch p1, :sswitch_data_0

    .line 328
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    :sswitch_0
    return v0

    .line 313
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/coinbase/zxing/client/android/CaptureActivity;->setResult(I)V

    .line 314
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->finish()V

    goto :goto_0

    .line 322
    :sswitch_2
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v2}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    goto :goto_1

    .line 325
    :sswitch_3
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    invoke-virtual {v1, v0}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    goto :goto_1

    .line 311
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 289
    iget-object v2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v2}, Lcom/coinbase/zxing/client/android/CaptureActivityHandler;->quitSynchronously()V

    .line 291
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/coinbase/zxing/client/android/InactivityTimer;

    invoke-virtual {v2}, Lcom/coinbase/zxing/client/android/InactivityTimer;->onPause()V

    .line 294
    iget-object v2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 295
    iget-boolean v2, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-nez v2, :cond_1

    .line 296
    sget v2, Lcom/coinbase/zxing/client/android/R$id;->preview_view:I

    invoke-virtual {p0, v2}, Lcom/coinbase/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 297
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 298
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 300
    .end local v0    # "surfaceHolder":Landroid/view/SurfaceHolder;
    .end local v1    # "surfaceView":Landroid/view/SurfaceView;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 301
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 220
    new-instance v9, Lcom/coinbase/zxing/client/android/camera/CameraManager;

    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/coinbase/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    .line 222
    sget v9, Lcom/coinbase/zxing/client/android/R$id;->viewfinder_view:I

    invoke-virtual {p0, v9}, Lcom/coinbase/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/coinbase/zxing/client/android/ViewfinderView;

    iput-object v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/coinbase/zxing/client/android/ViewfinderView;

    .line 223
    iget-object v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->viewfinderView:Lcom/coinbase/zxing/client/android/ViewfinderView;

    iget-object v10, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    invoke-virtual {v9, v10}, Lcom/coinbase/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/coinbase/zxing/client/android/camera/CameraManager;)V

    .line 225
    sget v9, Lcom/coinbase/zxing/client/android/R$id;->status_view:I

    invoke-virtual {p0, v9}, Lcom/coinbase/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    .line 227
    iput-object v11, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    .line 228
    invoke-direct {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->resetStatusView()V

    .line 230
    sget v9, Lcom/coinbase/zxing/client/android/R$id;->preview_view:I

    invoke-virtual {p0, v9}, Lcom/coinbase/zxing/client/android/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceView;

    .line 231
    .local v7, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    .line 232
    .local v6, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-eqz v9, :cond_3

    .line 235
    invoke-direct {p0, v6}, Lcom/coinbase/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 242
    :goto_0
    iget-object v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->beepManager:Lcom/coinbase/zxing/client/android/BeepManager;

    invoke-virtual {v9}, Lcom/coinbase/zxing/client/android/BeepManager;->updatePrefs()V

    .line 244
    iget-object v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->inactivityTimer:Lcom/coinbase/zxing/client/android/InactivityTimer;

    invoke-virtual {v9}, Lcom/coinbase/zxing/client/android/InactivityTimer;->onResume()V

    .line 246
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 248
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 250
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getRequestedOrientation()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/coinbase/zxing/client/android/CaptureActivity;->setRequestedOrientation(I)V

    .line 252
    sget-object v9, Lcom/coinbase/zxing/client/android/IntentSource;->NONE:Lcom/coinbase/zxing/client/android/IntentSource;

    iput-object v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->source:Lcom/coinbase/zxing/client/android/IntentSource;

    .line 253
    iput-object v11, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 254
    iput-object v11, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 256
    if-eqz v4, :cond_2

    .line 258
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "dataString":Ljava/lang/String;
    const-string v9, "com.coinbase.zxing.client.android.SCAN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 264
    sget-object v9, Lcom/coinbase/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/coinbase/zxing/client/android/IntentSource;

    iput-object v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->source:Lcom/coinbase/zxing/client/android/IntentSource;

    .line 265
    invoke-static {v4}, Lcom/coinbase/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v9

    iput-object v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 267
    const-string v9, "SCAN_WIDTH"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "SCAN_HEIGHT"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 268
    const-string v9, "SCAN_WIDTH"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 269
    .local v8, "width":I
    const-string v9, "SCAN_HEIGHT"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 270
    .local v3, "height":I
    if-lez v8, :cond_0

    if-lez v3, :cond_0

    .line 271
    iget-object v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->cameraManager:Lcom/coinbase/zxing/client/android/camera/CameraManager;

    invoke-virtual {v9, v8, v3}, Lcom/coinbase/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 275
    .end local v3    # "height":I
    .end local v8    # "width":I
    :cond_0
    const-string v9, "PROMPT_MESSAGE"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "customPromptMessage":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 277
    iget-object v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .end local v1    # "customPromptMessage":Ljava/lang/String;
    :cond_1
    const-string v9, "CHARACTER_SET"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 285
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "dataString":Ljava/lang/String;
    :cond_2
    return-void

    .line 238
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-interface {v6, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 239
    const/4 v9, 0x3

    invoke-interface {v6, v9}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 3
    .param p1, "delayMS"    # J

    .prologue
    .line 495
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->handler:Lcom/coinbase/zxing/client/android/CaptureActivityHandler;

    sget v1, Lcom/coinbase/zxing/client/android/R$id;->restart_preview:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/coinbase/zxing/client/android/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->resetStatusView()V

    .line 499
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 352
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 336
    sget-object v0, Lcom/coinbase/zxing/client/android/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_1

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 340
    invoke-direct {p0, p1}, Lcom/coinbase/zxing/client/android/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 342
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity;->hasSurface:Z

    .line 347
    return-void
.end method
