.class Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;
.super Ljava/lang/Object;
.source "TakeDocumentPhotoFragment.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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
    .line 134
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 137
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    # invokes: Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getPhotoBitmap([BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;
    invoke-static {v8, p1, p2}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->access$000(Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;[BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 141
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-wide v8, v8, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mViewfinderCropX:D

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v6, v8

    .line 142
    .local v6, "x":I
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-wide v8, v8, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mViewfinderCropWidth:D

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v5, v8

    .line 143
    .local v5, "width":I
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-wide v8, v8, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mViewfinderCropY:D

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v7, v8

    .line 144
    .local v7, "y":I
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-wide v8, v8, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mViewfinderCropHeight:D

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v2, v8

    .line 145
    .local v2, "height":I
    invoke-static {v0, v6, v7, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-object v8, v8, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v8}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v8

    if-nez v8, :cond_0

    .line 164
    :goto_0
    return-void

    .line 151
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-object v8, v8, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->stopPreview()V

    .line 152
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mPreviewRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    invoke-virtual {v8}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    .line 157
    .local v3, "parent":Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    invoke-virtual {v8}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 158
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    iget-object v8, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$2;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    iget-boolean v8, v8, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->mTakingBack:Z

    if-eqz v8, :cond_1

    .line 159
    invoke-virtual {v3, v0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->setBackBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    :goto_2
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v3, v0}, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;->setFrontBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 153
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v3    # "parent":Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;
    :catch_0
    move-exception v8

    goto :goto_1
.end method
