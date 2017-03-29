.class public Lcom/coinbase/android/widgets/WidgetChooseAccountActivity;
.super Lroboguice/activity/RoboFragmentActivity;
.source "WidgetChooseAccountActivity.java"

# interfaces
.implements Lcom/coinbase/android/accounts/AccountsFragment$ParentActivity;


# instance fields
.field loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lroboguice/activity/RoboFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/coinbase/v2/models/account/Data;)V
    .locals 10
    .param p1, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/coinbase/android/widgets/WidgetChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "appWidgetId"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 56
    .local v3, "widgetId":I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v4, "widget_%d_account"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string v4, "widget_%d_account_type"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "refresh":Landroid/content/Intent;
    const-string v4, "appWidgetIds"

    new-array v5, v8, [I

    aput v3, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0}, Lcom/coinbase/android/widgets/WidgetChooseAccountActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v1}, Lcom/coinbase/android/widgets/WidgetChooseAccountActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v2, "resultValue":Landroid/content/Intent;
    const-string v4, "appWidgetId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v9, v2}, Lcom/coinbase/android/widgets/WidgetChooseAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/coinbase/android/widgets/WidgetChooseAccountActivity;->finish()V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 29
    invoke-super {p0, p1}, Lroboguice/activity/RoboFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/coinbase/android/widgets/WidgetChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "appWidgetId"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 32
    .local v3, "widgetId":I
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 33
    .local v2, "manager":Landroid/appwidget/AppWidgetManager;
    invoke-static {}, Lcom/coinbase/android/utils/PlatformUtils;->hasHoneycomb()Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/coinbase/android/TransactionsAppWidgetProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    const v4, 0x7f0702a6

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 51
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v4, p0, Lcom/coinbase/android/widgets/WidgetChooseAccountActivity;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 40
    const v4, 0x7f0702e2

    invoke-virtual {p0, v4}, Lcom/coinbase/android/widgets/WidgetChooseAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Lcom/coinbase/android/accounts/AccountsFragment;

    invoke-direct {v1}, Lcom/coinbase/android/accounts/AccountsFragment;-><init>()V

    .line 45
    .local v1, "f":Lcom/coinbase/android/accounts/AccountsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "widgetMode"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/coinbase/android/accounts/AccountsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/coinbase/android/widgets/WidgetChooseAccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "accounts"

    invoke-virtual {v1, v4, v5}, Lcom/coinbase/android/accounts/AccountsFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 50
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/coinbase/android/widgets/WidgetChooseAccountActivity;->setResult(I)V

    goto :goto_0
.end method
