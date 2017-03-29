.class Lcom/coinbase/android/notifications/gcm/RegistrationIntentService$1;
.super Ljava/lang/Object;
.source "RegistrationIntentService.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/notifications/gcm/RegistrationIntentService;->sendRegistrationToServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/notifications/gcm/RegistrationIntentService;


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/gcm/RegistrationIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/gcm/RegistrationIntentService;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/coinbase/android/notifications/gcm/RegistrationIntentService$1;->this$0:Lcom/coinbase/android/notifications/gcm/RegistrationIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    return-void
.end method
