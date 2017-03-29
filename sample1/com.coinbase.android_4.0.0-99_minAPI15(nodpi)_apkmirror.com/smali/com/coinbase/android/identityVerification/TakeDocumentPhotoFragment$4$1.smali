.class Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4$1;
.super Ljava/lang/Object;
.source "TakeDocumentPhotoFragment.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;


# direct methods
.method constructor <init>(Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4$1;->this$1:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4$1;->this$1:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$4;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    # invokes: Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->doGingerbreadAutoFocus()V
    invoke-static {v0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->access$100(Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;)V

    .line 446
    return-void
.end method
