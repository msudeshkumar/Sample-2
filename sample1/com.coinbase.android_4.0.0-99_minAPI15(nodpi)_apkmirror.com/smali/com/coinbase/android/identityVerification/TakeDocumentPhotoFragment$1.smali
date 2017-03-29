.class Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$1;
.super Ljava/lang/Object;
.source "TakeDocumentPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 114
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$1;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$1;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$1;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 120
    .local v0, "cp":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$1;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mFlashlightButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$1;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 131
    .end local v0    # "cp":Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void

    .line 125
    .restart local v0    # "cp":Landroid/hardware/Camera$Parameters;
    :cond_1
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$1;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mFlashlightButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method
