.class Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;
.super Lroboguice/util/RoboAsyncTask;
.source "TwoFactorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/signin/TwoFactorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendSMSTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lroboguice/util/RoboAsyncTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mEmail:Ljava/lang/String;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mPassword:Ljava/lang/String;

.field mShowToast:Z

.field final synthetic this$0:Lcom/coinbase/android/signin/TwoFactorActivity;


# direct methods
.method protected constructor <init>(Lcom/coinbase/android/signin/TwoFactorActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "showToast"    # Z

    .prologue
    .line 41
    iput-object p1, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    .line 42
    invoke-direct {p0, p2}, Lroboguice/util/RoboAsyncTask;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p3, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->mEmail:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->mPassword:Ljava/lang/String;

    .line 45
    iput-boolean p5, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->mShowToast:Z

    .line 46
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
    .line 33
    invoke-virtual {p0}, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    iget-object v1, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/coinbase/api/LoginManager;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->mShowToast:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    const v1, 0x7f07016f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    :cond_0
    return-void
.end method

.method protected onFinally()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0}, Lroboguice/util/RoboAsyncTask;->onFinally()V

    .line 75
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faTypeTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 76
    return-void
.end method

.method protected onPreExecute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0}, Lroboguice/util/RoboAsyncTask;->onPreExecute()V

    .line 51
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/TwoFactorActivity;->m2faTypeTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 52
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->mShowToast:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity$SendSMSTask;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    const v1, 0x7f070170

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    :cond_0
    return-void
.end method
