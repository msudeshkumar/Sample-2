.class public Lcom/coinbase/zxing/client/android/ScanTabsWidget;
.super Landroid/widget/LinearLayout;
.source "ScanTabsWidget.java"


# instance fields
.field mLeftButton:Landroid/widget/Button;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field mRightButton:Landroid/widget/Button;

.field mRightTabSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightTabSelected:Z

    .line 25
    invoke-direct {p0, p1}, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->inflateView(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightTabSelected:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->inflateView(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightTabSelected:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->inflateView(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightTabSelected:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->inflateView(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private inflateView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 47
    const-string v1, "layout_inflater"

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/coinbase/zxing/client/android/R$layout;->two_button_widget:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    sget v1, Lcom/coinbase/zxing/client/android/R$id;->left_button:I

    invoke-virtual {p0, v1}, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mLeftButton:Landroid/widget/Button;

    .line 52
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mLeftButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mLeftButton:Landroid/widget/Button;

    sget v2, Lcom/coinbase/zxing/client/android/R$drawable;->widget_left_drawable_button_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 56
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mLeftButton:Landroid/widget/Button;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 57
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 59
    sget v1, Lcom/coinbase/zxing/client/android/R$id;->right_button:I

    invoke-virtual {p0, v1}, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightButton:Landroid/widget/Button;

    .line 60
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightButton:Landroid/widget/Button;

    sget v2, Lcom/coinbase/zxing/client/android/R$drawable;->widget_right_drawable_button_deselected:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 61
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightButton:Landroid/widget/Button;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 62
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 64
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mLeftButton:Landroid/widget/Button;

    new-instance v2, Lcom/coinbase/zxing/client/android/ScanTabsWidget$1;

    invoke-direct {v2, p0}, Lcom/coinbase/zxing/client/android/ScanTabsWidget$1;-><init>(Lcom/coinbase/zxing/client/android/ScanTabsWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightButton:Landroid/widget/Button;

    new-instance v2, Lcom/coinbase/zxing/client/android/ScanTabsWidget$2;

    invoke-direct {v2, p0}, Lcom/coinbase/zxing/client/android/ScanTabsWidget$2;-><init>(Lcom/coinbase/zxing/client/android/ScanTabsWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightTabSelected:Z

    goto :goto_0
.end method


# virtual methods
.method public getTabSelected()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightTabSelected:Z

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 111
    return-void
.end method

.method public setTabSelected(Z)V
    .locals 4
    .param p1, "rightTabSelected"    # Z

    .prologue
    const/4 v3, -0x1

    const/high16 v2, -0x1000000

    .line 94
    iput-boolean p1, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightTabSelected:Z

    .line 95
    iget-boolean v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightTabSelected:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mLeftButton:Landroid/widget/Button;

    sget v1, Lcom/coinbase/zxing/client/android/R$drawable;->widget_left_drawable_button_deselected:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 98
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightButton:Landroid/widget/Button;

    sget v1, Lcom/coinbase/zxing/client/android/R$drawable;->widget_right_drawable_button_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mLeftButton:Landroid/widget/Button;

    sget v1, Lcom/coinbase/zxing/client/android/R$drawable;->widget_left_drawable_button_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 103
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 104
    iget-object v0, p0, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->mRightButton:Landroid/widget/Button;

    sget v1, Lcom/coinbase/zxing/client/android/R$drawable;->widget_right_drawable_button_deselected:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
