.class public Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;
.super Lroboguice/activity/RoboListActivity;
.source "WidgetChooseCurrencyActivity.java"


# instance fields
.field private mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lroboguice/activity/RoboListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;)Lcom/coinbase/api/LoginManager;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->loadCurrencies(Ljava/util/List;)V

    return-void
.end method

.method private loadCurrencies(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/joda/money/CurrencyUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "currencies":Ljava/util/List;, "Ljava/util/List<Lorg/joda/money/CurrencyUnit;>;"
    new-instance v0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$2;-><init>(Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lroboguice/activity/RoboListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    const-string v0, "WidgetChooseCurrencyActivity"

    const-string v1, "No list view for widget"

    invoke-static {v0, v1}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->finish()V

    .line 63
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;-><init>(Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->setResult(I)V

    goto :goto_0
.end method

.method public onCurrencyChosen(Ljava/lang/String;)V
    .locals 10
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 107
    invoke-virtual {p0}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "appWidgetId"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 109
    .local v3, "widgetId":I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v4, "widget_%d_currency"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "refresh":Landroid/content/Intent;
    const-string v4, "appWidgetIds"

    new-array v5, v9, [I

    aput v3, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v1}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v2, "resultValue":Landroid/content/Intent;
    const-string v4, "appWidgetId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v7, v2}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->setResult(ILandroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->finish()V

    .line 122
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 102
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v0}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->onCurrencyChosen(Ljava/lang/String;)V

    .line 103
    return-void
.end method
