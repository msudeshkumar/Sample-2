.class Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$5;
.super Ljava/lang/Object;
.source "TakeDocumentPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$5;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$5;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    invoke-virtual {v0, p1}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->captureImage(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    goto :goto_0
.end method
