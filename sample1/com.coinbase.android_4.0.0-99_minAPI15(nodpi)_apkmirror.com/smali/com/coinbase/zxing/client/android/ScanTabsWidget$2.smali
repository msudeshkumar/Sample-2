.class Lcom/coinbase/zxing/client/android/ScanTabsWidget$2;
.super Ljava/lang/Object;
.source "ScanTabsWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/zxing/client/android/ScanTabsWidget;->inflateView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/zxing/client/android/ScanTabsWidget;


# direct methods
.method constructor <init>(Lcom/coinbase/zxing/client/android/ScanTabsWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget$2;->this$0:Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget$2;->this$0:Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    iget-boolean v0, v0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightTabSelected:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget$2;->this$0:Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightTabSelected:Z

    .line 82
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget$2;->this$0:Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    iget-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget$2;->this$0:Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    iget-boolean v1, v1, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightTabSelected:Z

    invoke-virtual {v0, v1}, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->setTabSelected(Z)V

    .line 83
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget$2;->this$0:Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    iget-object v0, v0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget$2;->this$0:Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    iget-object v0, v0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget$2;->this$0:Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 87
    :cond_0
    return-void
.end method
