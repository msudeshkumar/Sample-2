.class Lcom/coinbase/Coinbase$26;
.super Ljava/lang/Object;
.source "Coinbase.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/Coinbase;->commitSellBitcoin(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
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
        "Lcom/coinbase/v2/models/transfers/Transfer;",
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
    .line 2214
    iput-object p1, p0, Lcom/coinbase/Coinbase$26;->this$0:Lcom/coinbase/Coinbase;

    iput-object p2, p0, Lcom/coinbase/Coinbase$26;->val$callback:Lretrofit/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/coinbase/Coinbase$26;->val$callback:Lretrofit/Callback;

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/coinbase/Coinbase$26;->val$callback:Lretrofit/Callback;

    invoke-interface {v0, p1}, Lretrofit/Callback;->onFailure(Ljava/lang/Throwable;)V

    .line 2225
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
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2217
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    iget-object v0, p0, Lcom/coinbase/Coinbase$26;->val$callback:Lretrofit/Callback;

    if-eqz v0, :cond_0

    .line 2218
    iget-object v0, p0, Lcom/coinbase/Coinbase$26;->val$callback:Lretrofit/Callback;

    invoke-interface {v0, p1, p2}, Lretrofit/Callback;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V

    .line 2219
    :cond_0
    return-void
.end method
