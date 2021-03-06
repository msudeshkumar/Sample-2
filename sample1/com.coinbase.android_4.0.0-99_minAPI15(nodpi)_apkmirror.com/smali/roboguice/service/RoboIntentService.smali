.class public abstract Lroboguice/service/RoboIntentService;
.super Landroid/app/IntentService;
.source "RoboIntentService.java"

# interfaces
.implements Lroboguice/util/RoboContext;


# instance fields
.field protected eventManager:Lroboguice/event/EventManager;

.field protected scopedObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lroboguice/service/RoboIntentService;->scopedObjects:Ljava/util/HashMap;

    .line 48
    return-void
.end method


# virtual methods
.method public getScopedObjectMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lroboguice/service/RoboIntentService;->scopedObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 83
    invoke-virtual {p0}, Lroboguice/service/RoboIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 84
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-super {p0, p1}, Landroid/app/IntentService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    iget-object v1, p0, Lroboguice/service/RoboIntentService;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/context/event/OnConfigurationChangedEvent;

    invoke-direct {v2, p0, v0, p1}, Lroboguice/context/event/OnConfigurationChangedEvent;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 53
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 54
    .local v0, "injector":Lcom/google/inject/Injector;
    const-class v1, Lroboguice/event/EventManager;

    invoke-interface {v0, v1}, Lcom/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventManager;

    iput-object v1, p0, Lroboguice/service/RoboIntentService;->eventManager:Lroboguice/event/EventManager;

    .line 55
    invoke-interface {v0, p0}, Lcom/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    .line 56
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 57
    iget-object v1, p0, Lroboguice/service/RoboIntentService;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/context/event/OnCreateEvent;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lroboguice/context/event/OnCreateEvent;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lroboguice/service/RoboIntentService;->eventManager:Lroboguice/event/EventManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lroboguice/service/RoboIntentService;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/context/event/OnDestroyEvent;

    invoke-direct {v1, p0}, Lroboguice/context/event/OnDestroyEvent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :cond_0
    :try_start_1
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 79
    return-void

    .line 76
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    throw v0

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    :try_start_2
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 76
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 63
    .local v0, "startCont":I
    iget-object v1, p0, Lroboguice/service/RoboIntentService;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/context/event/OnStartEvent;

    invoke-direct {v2, p0}, Lroboguice/context/event/OnStartEvent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 64
    return v0
.end method
