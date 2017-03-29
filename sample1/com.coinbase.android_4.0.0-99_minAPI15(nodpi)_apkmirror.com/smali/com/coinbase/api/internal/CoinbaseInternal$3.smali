.class Lcom/coinbase/api/internal/CoinbaseInternal$3;
.super Ljava/lang/Object;
.source "CoinbaseInternal.java"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/api/internal/CoinbaseInternal;->build2FAInterceptor(Ljava/lang/String;)Lcom/squareup/okhttp/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/api/internal/CoinbaseInternal;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coinbase/api/internal/CoinbaseInternal;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/api/internal/CoinbaseInternal;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/coinbase/api/internal/CoinbaseInternal$3;->this$0:Lcom/coinbase/api/internal/CoinbaseInternal;

    iput-object p2, p0, Lcom/coinbase/api/internal/CoinbaseInternal$3;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;
    .locals 4
    .param p1, "chain"    # Lcom/squareup/okhttp/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    .line 400
    invoke-interface {p1}, Lcom/squareup/okhttp/Interceptor$Chain;->request()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "CB-2FA-TOKEN"

    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal$3;->val$token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 401
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 402
    .local v0, "newRequest":Lcom/squareup/okhttp/Request;
    invoke-interface {p1, v0}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    return-object v1
.end method
