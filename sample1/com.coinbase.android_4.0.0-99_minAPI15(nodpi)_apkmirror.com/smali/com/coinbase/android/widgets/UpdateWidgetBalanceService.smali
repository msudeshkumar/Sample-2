.class public Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;
.super Lroboguice/service/RoboService;
.source "UpdateWidgetBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$WidgetUpdater;
    }
.end annotation


# static fields
.field public static EXTRA_UPDATER_CLASS:Ljava/lang/String;

.field public static EXTRA_WIDGET_ID:Ljava/lang/String;


# instance fields
.field private mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "widget_id"

    sput-object v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->EXTRA_WIDGET_ID:Ljava/lang/String;

    .line 32
    const-string v0, "updater_class"

    sput-object v0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->EXTRA_UPDATER_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lroboguice/service/RoboService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;)Lcom/coinbase/api/LoginManager;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->mLoginManager:Lcom/coinbase/api/LoginManager;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 40
    sget-object v2, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->EXTRA_WIDGET_ID:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 41
    .local v1, "widgetId":I
    sget-object v2, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->EXTRA_UPDATER_CLASS:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 43
    .local v0, "updaterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;

    invoke-direct {v3, p0, v1, v0, p3}, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$1;-><init>(Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;ILjava/lang/Class;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 102
    const/4 v2, 0x3

    return v2
.end method
