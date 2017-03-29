.class Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$1;
.super Ljava/lang/Object;
.source "JumioDocumentScanFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->setupContinueRetakeButton()V
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
    .line 115
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mBackBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-boolean v0, v0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mTakingBack:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mFrontBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    # invokes: Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->advanceToNextScreen()V
    invoke-static {v0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->access$000(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$1;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->takePhoto()V

    goto :goto_0
.end method
