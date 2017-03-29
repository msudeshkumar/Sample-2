.class Lcom/coinbase/zxing/client/android/CaptureActivity$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/zxing/client/android/CaptureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/zxing/client/android/CaptureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/zxing/client/android/CaptureActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$1;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$1;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # invokes: Lcom/coinbase/zxing/client/android/CaptureActivity;->copyAddress()V
    invoke-static {v0}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$000(Lcom/coinbase/zxing/client/android/CaptureActivity;)V

    .line 175
    return-void
.end method
