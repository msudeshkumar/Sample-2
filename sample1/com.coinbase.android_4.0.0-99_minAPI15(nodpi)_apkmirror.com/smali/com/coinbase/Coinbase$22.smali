.class Lcom/coinbase/Coinbase$22;
.super Ljava/lang/Object;
.source "Coinbase.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/Coinbase;->transferMoney(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
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
        "Lcom/coinbase/v2/models/transactions/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/Coinbase;

.field final synthetic val$callback:Lretrofit/Callback;


# direct methods
.method constructor <init>(Lcom/coinbase/Coinbase;Lretrofit/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/Coinbase;

    .prologue
    .line 2094
    iput-object p1, p0, Lcom/coinbase/Coinbase$22;->this$0:Lcom/coinbase/Coinbase;

    iput-object p2, p0, Lcom/coinbase/Coinbase$22;->val$callback:Lretrofit/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/coinbase/Coinbase$22;->val$callback:Lretrofit/Callback;

    if-eqz v0, :cond_0

    .line 2104
    iget-object v0, p0, Lcom/coinbase/Coinbase$22;->val$callback:Lretrofit/Callback;

    invoke-interface {v0, p1}, Lretrofit/Callback;->onFailure(Ljava/lang/Throwable;)V

    .line 2105
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 1
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transaction;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2097
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transactions/Transaction;>;"
    iget-object v0, p0, Lcom/coinbase/Coinbase$22;->val$callback:Lretrofit/Callback;

    if-eqz v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/coinbase/Coinbase$22;->val$callback:Lretrofit/Callback;

    invoke-interface {v0, p1, p2}, Lretrofit/Callback;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V

    .line 2099
    :cond_0
    return-void
.end method
