.class public Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;
.super Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;
.source "PriceAlertsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/daimajia/swipe/adapters/ArraySwipeAdapter",
        "<",
        "Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;",
        ">;"
    }
.end annotation


# instance fields
.field private bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "localPriceAlerts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/daimajia/swipe/adapters/ArraySwipeAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 65
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;
    .param p1, "x1"    # Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->createPriceAlert(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;
    .param p1, "x1"    # Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->deletePriceAlert(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V

    return-void
.end method

.method static synthetic access$400(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;)Lcom/squareup/otto/Bus;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->bus:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method private createPriceAlert(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
    .locals 3
    .param p1, "alert"    # Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->generateParams(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)Ljava/util/HashMap;

    move-result-object v0

    .line 141
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "device_id"

    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coinbase/android/utils/DeviceUtils;->deviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$3;

    invoke-direct {v2, p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$3;-><init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;)V

    invoke-virtual {v1, v0, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->createPriceAlert(Ljava/util/HashMap;Lretrofit/Callback;)V

    .line 153
    return-void
.end method

.method private deletePriceAlert(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
    .locals 4
    .param p1, "alert"    # Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->generateParams(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)Ljava/util/HashMap;

    move-result-object v0

    .line 158
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coinbase/android/utils/DeviceUtils;->deviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$4;

    invoke-direct {v3, p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$4;-><init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->deletePriceAlert(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)V

    .line 169
    return-void
.end method

.method private generateParams(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)Ljava/util/HashMap;
    .locals 4
    .param p1, "alert"    # Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .prologue
    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "platform"

    const-string v2, "GCM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "application_id"

    const-string v2, "coinbase_android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "above"

    iget-object v2, p1, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->isAbove:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "currency_code"

    iget-object v2, p1, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->currencyUnit:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v2}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "message"

    iget-object v2, p1, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "price"

    iget-wide v2, p1, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->amount:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-object v0
.end method


# virtual methods
.method public getSwipeLayoutResourceId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 185
    const v0, 0x7f0d02de

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_1

    .line 72
    :cond_0
    new-instance v11, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;-><init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;)V

    .line 73
    .local v11, "viewHolder":Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 74
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f0300a7

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v6, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    const v12, 0x7f0d02de

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/daimajia/swipe/SwipeLayout;

    iput-object v12, v11, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->swipeLayout:Lcom/daimajia/swipe/SwipeLayout;

    .line 77
    const v12, 0x7f0d02e0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, v11, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->deleteButton:Landroid/widget/ImageButton;

    .line 78
    const v12, 0x7f0d02e1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v11, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->descriptionTextView:Landroid/widget/TextView;

    .line 79
    const v12, 0x7f0d02e2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v11, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 80
    const v12, 0x7f0d02e3

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Switch;

    iput-object v12, v11, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->notificationSwitch:Landroid/widget/Switch;

    .line 85
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .line 87
    .local v8, "localPriceAlert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    iget-object v4, v8, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->message:Ljava/lang/String;

    .line 88
    .local v4, "description":Ljava/lang/String;
    iget-object v12, v11, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v12, "MMMM dd, yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v5, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 91
    .local v5, "format":Ljava/text/SimpleDateFormat;
    iget-wide v12, v8, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->triggeredOn:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    const/4 v7, 0x1

    .line 92
    .local v7, "isAlertNotTriggered":Z
    :goto_1
    if-eqz v7, :cond_3

    new-instance v2, Ljava/util/Date;

    iget-wide v12, v8, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->createdOn:J

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 94
    .local v2, "date":Ljava/util/Date;
    :goto_2
    if-eqz v7, :cond_4

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070193

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 97
    .local v9, "preposition":Ljava/lang/String;
    :goto_3
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "dateString":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "result":Ljava/lang/String;
    iget-object v12, v11, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-boolean v12, v8, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->enabled:Z

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->enableNotification(Z)V
    invoke-static {v11, v12}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->access$100(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;Z)V

    .line 103
    iget-object v12, v11, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->notificationSwitch:Landroid/widget/Switch;

    iget-boolean v13, v8, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->enabled:Z

    invoke-virtual {v12, v13}, Landroid/widget/Switch;->setChecked(Z)V

    .line 104
    iget-boolean v12, v8, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->enabled:Z

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->enableNotification(Z)V
    invoke-static {v11, v12}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->access$100(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;Z)V

    .line 105
    iget-object v12, v11, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->notificationSwitch:Landroid/widget/Switch;

    new-instance v13, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v8}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;-><init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V

    invoke-virtual {v12, v13}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v12, v11, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->deleteButton:Landroid/widget/ImageButton;

    new-instance v13, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v8, v11}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;-><init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-object p2

    .line 82
    .end local v2    # "date":Ljava/util/Date;
    .end local v3    # "dateString":Ljava/lang/String;
    .end local v4    # "description":Ljava/lang/String;
    .end local v5    # "format":Ljava/text/SimpleDateFormat;
    .end local v7    # "isAlertNotTriggered":Z
    .end local v8    # "localPriceAlert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    .end local v9    # "preposition":Ljava/lang/String;
    .end local v10    # "result":Ljava/lang/String;
    .end local v11    # "viewHolder":Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;

    .restart local v11    # "viewHolder":Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;
    goto/16 :goto_0

    .line 91
    .restart local v4    # "description":Ljava/lang/String;
    .restart local v5    # "format":Ljava/text/SimpleDateFormat;
    .restart local v8    # "localPriceAlert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 92
    .restart local v7    # "isAlertNotTriggered":Z
    :cond_3
    new-instance v2, Ljava/util/Date;

    iget-wide v12, v8, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->triggeredOn:J

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    .line 96
    .restart local v2    # "date":Ljava/util/Date;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07019a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3
.end method
