.class Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;
.super Ljava/lang/Thread;
.source "JumioDocumentScanFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->advanceToNextScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 267
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "country_code"

    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-object v2, v2, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioDoc:Lcom/coinbase/api/internal/entity/JumioDocument;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioDocument;->getCountry()Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v1, "id_type"

    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-object v2, v2, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mJumioType:Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioProfileSupportedIdType;->getType()Lcom/coinbase/api/internal/entity/JumioProfileType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/JumioProfileType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v1, "front_image"

    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-object v3, v3, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mFrontBmp:Landroid/graphics/Bitmap;

    # invokes: Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->createPngByteArray(Landroid/graphics/Bitmap;)[B
    invoke-static {v2, v3}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->access$100(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mBackBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "back_image"

    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-object v3, v3, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mBackBmp:Landroid/graphics/Bitmap;

    # invokes: Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->createPngByteArray(Landroid/graphics/Bitmap;)[B
    invoke-static {v2, v3}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->access$100(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    new-instance v2, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;

    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    invoke-virtual {v4}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;-><init>(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v2, v1, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mTask:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;

    .line 283
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$5;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mTask:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;

    invoke-virtual {v1}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->execute()V

    goto :goto_0
.end method
