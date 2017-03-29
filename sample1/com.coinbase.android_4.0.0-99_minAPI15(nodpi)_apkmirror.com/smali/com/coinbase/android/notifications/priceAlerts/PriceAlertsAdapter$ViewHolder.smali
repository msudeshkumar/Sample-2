.class Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PriceAlertsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field deleteButton:Landroid/widget/ImageButton;

.field descriptionTextView:Landroid/widget/TextView;

.field notificationSwitch:Landroid/widget/Switch;

.field swipeLayout:Lcom/daimajia/swipe/SwipeLayout;

.field timeTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->enableNotification(Z)V

    return-void
.end method

.method private enableNotification(Z)V
    .locals 3
    .param p1, "shouldEnable"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 58
    .local v0, "alpha":F
    :goto_1
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 59
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 57
    .end local v0    # "alpha":F
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1
.end method
