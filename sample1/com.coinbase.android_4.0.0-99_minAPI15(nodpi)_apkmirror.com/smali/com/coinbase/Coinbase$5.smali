.class Lcom/coinbase/Coinbase$5;
.super Ljava/lang/Object;
.source "Coinbase.java"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/Coinbase;->buildVersionInterceptor()Lcom/squareup/okhttp/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/Coinbase;


# direct methods
.method constructor <init>(Lcom/coinbase/Coinbase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/Coinbase;

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/coinbase/Coinbase$5;->this$0:Lcom/coinbase/Coinbase;

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
    .line 1589
    .line 1590
    invoke-interface {p1}, Lcom/squareup/okhttp/Interceptor$Chain;->request()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 1591
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "CB-VERSION"

    sget-object v3, Lcom/coinbase/ApiConstants;->VERSION:Ljava/lang/String;

    .line 1592
    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "USER-AGENT"

    iget-object v3, p0, Lcom/coinbase/Coinbase$5;->this$0:Lcom/coinbase/Coinbase;

    .line 1593
    # invokes: Lcom/coinbase/Coinbase;->getPackageVersionName()Ljava/lang/String;
    invoke-static {v3}, Lcom/coinbase/Coinbase;->access$000(Lcom/coinbase/Coinbase;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 1594
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 1595
    .local v0, "newRequest":Lcom/squareup/okhttp/Request;
    invoke-interface {p1, v0}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    return-object v1
.end method
