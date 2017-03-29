.class Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;
.super Ljava/lang/Object;
.source "UpdateWidgetBalanceService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

.field final synthetic val$startId:I

.field final synthetic val$updaterClass:Ljava/lang/Class;

.field final synthetic val$widgetId:I


# direct methods
.method constructor <init>(Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;ILjava/lang/Class;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    iput p2, p0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->val$widgetId:I

    iput-object p3, p0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->val$updaterClass:Ljava/lang/Class;

    iput p4, p0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 50
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    const-string v13, "widget_%d_account"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->val$widgetId:I

    move/from16 v16, v0

    .line 51
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, "_accountId":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    const-string v13, "widget_%d_account_type"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->val$widgetId:I

    move/from16 v16, v0

    .line 53
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    .local v2, "_accountType":Ljava/lang/Object;
    instance-of v12, v1, Ljava/lang/String;

    if-eqz v12, :cond_4

    check-cast v1, Ljava/lang/String;

    .end local v1    # "_accountId":Ljava/lang/Object;
    move-object v4, v1

    .line 56
    .local v4, "accountId":Ljava/lang/String;
    :goto_0
    instance-of v12, v2, Ljava/lang/String;

    if-eqz v12, :cond_5

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "_accountType":Ljava/lang/Object;
    move-object v5, v2

    .line 62
    .local v5, "accountType":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 63
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    # getter for: Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->mLoginManager:Lcom/coinbase/api/LoginManager;
    invoke-static {v12}, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->access$000(Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;)Lcom/coinbase/api/LoginManager;

    move-result-object v12

    invoke-interface {v12}, Lcom/coinbase/api/LoginManager;->getActiveAccountId()Ljava/lang/String;

    move-result-object v4

    .line 64
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    # getter for: Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->mLoginManager:Lcom/coinbase/api/LoginManager;
    invoke-static {v12}, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->access$000(Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;)Lcom/coinbase/api/LoginManager;

    move-result-object v12

    invoke-interface {v12}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v12

    invoke-static {v12, v4}, Lcom/coinbase/android/utils/AccountUtils;->getAccount(Ljava/util/List;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v3

    .line 65
    .local v3, "account":Lcom/coinbase/v2/models/account/Data;
    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v5

    .line 69
    .end local v3    # "account":Lcom/coinbase/v2/models/account/Data;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->val$updaterClass:Ljava/lang/Class;

    if-eqz v12, :cond_3

    .line 71
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    invoke-static {v12}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    .line 72
    .local v10, "manager":Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->val$updaterClass:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$WidgetUpdater;

    .line 73
    .local v11, "updater":Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$WidgetUpdater;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->val$widgetId:I

    const/4 v14, 0x0

    invoke-interface {v11, v12, v10, v13, v14}, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$WidgetUpdater;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    .line 77
    if-eqz v4, :cond_2

    if-nez v5, :cond_6

    .line 78
    :cond_2
    const-string v7, "Invalid"

    .line 91
    .local v7, "balanceText":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->val$widgetId:I

    invoke-interface {v11, v12, v10, v13, v7}, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$WidgetUpdater;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .end local v4    # "accountId":Ljava/lang/String;
    .end local v5    # "accountType":Ljava/lang/String;
    .end local v7    # "balanceText":Ljava/lang/String;
    .end local v10    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v11    # "updater":Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$WidgetUpdater;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->val$startId:I

    invoke-virtual {v12, v13}, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->stopSelf(I)V

    .line 99
    return-void

    .line 55
    .restart local v1    # "_accountId":Ljava/lang/Object;
    .restart local v2    # "_accountType":Ljava/lang/Object;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 56
    .end local v1    # "_accountId":Ljava/lang/Object;
    .restart local v4    # "accountId":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 57
    .end local v2    # "_accountType":Ljava/lang/Object;
    .end local v4    # "accountId":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 58
    .local v9, "e":Ljava/lang/ClassCastException;
    const/4 v4, 0x0

    .line 59
    .restart local v4    # "accountId":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "accountType":Ljava/lang/String;
    goto :goto_1

    .line 80
    .end local v9    # "e":Ljava/lang/ClassCastException;
    .restart local v10    # "manager":Landroid/appwidget/AppWidgetManager;
    .restart local v11    # "updater":Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$WidgetUpdater;
    :cond_6
    :try_start_2
    const-string v12, "Coinbase"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Service fetching balance... ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->val$updaterClass:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    # getter for: Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->mLoginManager:Lcom/coinbase/api/LoginManager;
    invoke-static {v12}, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->access$000(Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;)Lcom/coinbase/api/LoginManager;

    move-result-object v12

    invoke-interface {v12}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->getBalance(Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v6

    .line 82
    .local v6, "balance":Lorg/joda/money/Money;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    # getter for: Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->mLoginManager:Lcom/coinbase/api/LoginManager;
    invoke-static {v12}, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->access$000(Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;)Lcom/coinbase/api/LoginManager;

    move-result-object v12

    invoke-interface {v12}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "bitcoinUnits":Ljava/lang/String;
    sget-object v12, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    invoke-virtual {v12}, Lcom/coinbase/v2/models/account/Data$Type;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 85
    sget-object v12, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    invoke-static {v6, v12}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "balanceText":Ljava/lang/String;
    goto :goto_2

    .line 87
    .end local v7    # "balanceText":Ljava/lang/String;
    :cond_7
    sget-object v12, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_4_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    invoke-static {v12}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v12

    invoke-static {v6, v8, v12}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .restart local v7    # "balanceText":Ljava/lang/String;
    goto :goto_2

    .line 94
    .end local v4    # "accountId":Ljava/lang/String;
    .end local v5    # "accountType":Ljava/lang/String;
    .end local v6    # "balance":Lorg/joda/money/Money;
    .end local v7    # "balanceText":Ljava/lang/String;
    .end local v8    # "bitcoinUnits":Ljava/lang/String;
    .end local v10    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v11    # "updater":Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$WidgetUpdater;
    :catch_1
    move-exception v9

    .line 95
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
