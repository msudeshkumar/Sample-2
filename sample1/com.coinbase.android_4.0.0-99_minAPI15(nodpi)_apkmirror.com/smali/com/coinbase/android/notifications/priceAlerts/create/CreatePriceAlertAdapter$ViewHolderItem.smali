.class public Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CreatePriceAlertAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderItem"
.end annotation


# instance fields
.field bottomFirst:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field bottomFourth:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field bottomSecond:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field bottomThird:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field markerView:Landroid/view/View;

.field parentLayout:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field priceLayout:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field final synthetic this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;

.field topFirst:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field topFourth:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field topSecond:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field topThird:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;

    .line 83
    invoke-direct {p0, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 85
    invoke-static {p0, p3}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 87
    iput-object p2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method
