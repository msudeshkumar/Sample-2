.class Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$3;
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
    .line 202
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$3;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment$3;->this$0:Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/identityVerification/TakeDocumentPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 206
    return-void
.end method
