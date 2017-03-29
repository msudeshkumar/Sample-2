.class public Lcom/coinbase/android/settings/UpdateUserTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "UpdateUserTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mDialog:Landroid/app/ProgressDialog;

.field private mPrefsKey:Ljava/lang/String;

.field private mPrefsValue:Ljava/lang/String;

.field private mProgressDialogMessage:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f070059
    .end annotation
.end field

.field private mUser:Lcom/coinbase/v1/entity/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coinbase/v1/entity/User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lcom/coinbase/v1/entity/User;
    .param p3, "prefsKey"    # Ljava/lang/String;
    .param p4, "prefsValue"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/coinbase/android/settings/UpdateUserTask;->mUser:Lcom/coinbase/v1/entity/User;

    .line 32
    iput-object p3, p0, Lcom/coinbase/android/settings/UpdateUserTask;->mPrefsKey:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/coinbase/android/settings/UpdateUserTask;->mPrefsValue:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/coinbase/android/settings/UpdateUserTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/coinbase/android/settings/UpdateUserTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/settings/UpdateUserTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getActiveUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/settings/UpdateUserTask;->mUser:Lcom/coinbase/v1/entity/User;

    invoke-virtual {v2, v3, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->updateUser(Ljava/lang/String;Lcom/coinbase/v1/entity/User;)Lcom/coinbase/v1/entity/User;

    .line 45
    iget-object v2, p0, Lcom/coinbase/android/settings/UpdateUserTask;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/coinbase/android/settings/UpdateUserTask;->mPrefsKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/coinbase/android/settings/UpdateUserTask;->mPrefsValue:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    const/4 v2, 0x0

    return-object v2
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    invoke-virtual {p0}, Lcom/coinbase/android/settings/UpdateUserTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/coinbase/android/settings/UpdateUserTask;->context:Landroid/content/Context;

    const v1, 0x7f070058

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    :cond_0
    return-void
.end method

.method protected onFinally()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/coinbase/android/settings/UpdateUserTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/coinbase/android/settings/UpdateUserTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/UserDataUpdatedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/UserDataUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/coinbase/android/settings/UpdateUserTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/coinbase/android/settings/UpdateUserTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 76
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/coinbase/android/settings/UpdateUserTask;->context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/coinbase/android/settings/UpdateUserTask;->mProgressDialogMessage:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/settings/UpdateUserTask;->mDialog:Landroid/app/ProgressDialog;

    .line 39
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/settings/UpdateUserTask;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/coinbase/android/settings/UpdateUserTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/coinbase/android/settings/UpdateUserTask;->context:Landroid/content/Context;

    const v1, 0x7f07005a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    :cond_0
    return-void
.end method
