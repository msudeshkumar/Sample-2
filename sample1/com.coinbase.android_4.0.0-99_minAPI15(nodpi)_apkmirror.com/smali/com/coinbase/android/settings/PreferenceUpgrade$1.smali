.class final Lcom/coinbase/android/settings/PreferenceUpgrade$1;
.super Ljava/lang/Object;
.source "PreferenceUpgrade.java"

# interfaces
.implements Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/settings/PreferenceUpgrade;->perform(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$e:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Semaphore;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/coinbase/android/settings/PreferenceUpgrade$1;->val$sem:Ljava/util/concurrent/Semaphore;

    iput-object p2, p0, Lcom/coinbase/android/settings/PreferenceUpgrade$1;->val$e:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onFinally()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/coinbase/android/settings/PreferenceUpgrade$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 143
    iget-object v0, p0, Lcom/coinbase/android/settings/PreferenceUpgrade$1;->val$e:Landroid/content/SharedPreferences$Editor;

    const-string v1, "active_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    iget-object v0, p0, Lcom/coinbase/android/settings/PreferenceUpgrade$1;->val$e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    const-string v0, "PreferenceUpgrade"

    const-string v1, "Successfully upgraded preferences"

    invoke-static {v0, v1}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/coinbase/android/settings/PreferenceUpgrade$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "PreferenceUpgrade"

    const-string v2, "Failed to upgrade, giving up and clearing preferences"

    invoke-static {v1, v2}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
