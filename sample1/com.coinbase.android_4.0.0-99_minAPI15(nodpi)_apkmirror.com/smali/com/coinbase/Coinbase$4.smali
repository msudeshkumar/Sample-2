.class Lcom/coinbase/Coinbase$4;
.super Ljava/lang/Object;
.source "Coinbase.java"

# interfaces
.implements Lcom/squareup/okhttp/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/Coinbase;->buildHmacAuthInterceptor()Lcom/squareup/okhttp/Interceptor;
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
    .line 1529
    iput-object p1, p0, Lcom/coinbase/Coinbase$4;->this$0:Lcom/coinbase/Coinbase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/squareup/okhttp/Interceptor$Chain;)Lcom/squareup/okhttp/Response;
    .locals 18
    .param p1, "chain"    # Lcom/squareup/okhttp/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1532
    invoke-interface/range {p1 .. p1}, Lcom/squareup/okhttp/Interceptor$Chain;->request()Lcom/squareup/okhttp/Request;

    move-result-object v9

    .line 1534
    .local v9, "request":Lcom/squareup/okhttp/Request;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 1535
    .local v13, "timestamp":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 1536
    .local v6, "method":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v8

    .line 1537
    .local v8, "path":Ljava/lang/String;
    const-string v2, ""

    .line 1538
    .local v2, "body":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 1539
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v10

    .line 1540
    .local v10, "requestCopy":Lcom/squareup/okhttp/Request;
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 1541
    .local v3, "buffer":Lokio/Buffer;
    invoke-virtual {v10}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object v14

    invoke-virtual {v14, v3}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 1542
    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1545
    .end local v3    # "buffer":Lokio/Buffer;
    .end local v10    # "requestCopy":Lcom/squareup/okhttp/Request;
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1548
    .local v5, "message":Ljava/lang/String;
    :try_start_0
    const-string v14, "HmacSHA256"

    invoke-static {v14}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 1549
    .local v4, "mac":Ljavax/crypto/Mac;
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/Coinbase$4;->this$0:Lcom/coinbase/Coinbase;

    iget-object v15, v15, Lcom/coinbase/Coinbase;->_apiSecret:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v16, "HmacSHA256"

    invoke-direct/range {v14 .. v16}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v14}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v4, v14}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v14

    invoke-static {v14}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/String;-><init>([C)V

    .line 1556
    .local v11, "signature":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v14

    const-string v15, "CB-ACCESS-KEY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/Coinbase$4;->this$0:Lcom/coinbase/Coinbase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/coinbase/Coinbase;->_apiKey:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1557
    invoke-virtual/range {v14 .. v16}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v14

    const-string v15, "CB-ACCESS_SIGN"

    .line 1558
    invoke-virtual {v14, v15, v11}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v14

    const-string v15, "CB-ACCESS-TIMESTAMP"

    .line 1559
    invoke-virtual {v14, v15, v13}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v14

    .line 1560
    invoke-virtual {v14}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v7

    .line 1562
    .local v7, "newRequest":Lcom/squareup/okhttp/Request;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object v14

    return-object v14

    .line 1550
    .end local v4    # "mac":Ljavax/crypto/Mac;
    .end local v7    # "newRequest":Lcom/squareup/okhttp/Request;
    .end local v11    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1551
    .local v12, "t":Ljava/lang/Throwable;
    new-instance v14, Ljava/io/IOException;

    invoke-direct {v14, v12}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v14
.end method
