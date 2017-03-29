.class Lcom/coinbase/android/signin/SignupActivity$SignupTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "SignupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/signin/SignupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mEmail:Ljava/lang/String;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mReferrerId:Ljava/lang/String;

.field final synthetic this$0:Lcom/coinbase/android/signin/SignupActivity;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/signin/SignupActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "referrerId"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    .line 70
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object p3, p0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->mName:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->mEmail:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->mPassword:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->mReferrerId:Ljava/lang/String;

    .line 75
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
    .line 60
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/coinbase/v1/entity/User;

    invoke-direct {v0}, Lcom/coinbase/v1/entity/User;-><init>()V

    .line 80
    .local v0, "userParams":Lcom/coinbase/v1/entity/User;
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coinbase/v1/entity/User;->setName(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coinbase/v1/entity/User;->setEmail(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coinbase/v1/entity/User;->setPassword(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->mReferrerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coinbase/v1/entity/User;->setReferrerId(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1, v0}, Lcom/coinbase/api/LoginManager;->createUser(Lcom/coinbase/v1/entity/User;)V

    .line 85
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    invoke-virtual {v0, p1}, Lcom/coinbase/android/signin/SignupActivity;->onError(Ljava/lang/Exception;)V

    .line 96
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
    .line 60
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/coinbase/android/signin/SignupActivity$SignupTask;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    # invokes: Lcom/coinbase/android/signin/SignupActivity;->onSignUp()V
    invoke-static {v0}, Lcom/coinbase/android/signin/SignupActivity;->access$000(Lcom/coinbase/android/signin/SignupActivity;)V

    .line 91
    return-void
.end method
