.class Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;
.super Ljava/lang/Object;
.source "TakeDocumentPhotoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->doGingerbreadAutoFocus()V
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
    .line 435
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-boolean v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mPreviewRunning:Z

    if-nez v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4$1;-><init>(Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method
