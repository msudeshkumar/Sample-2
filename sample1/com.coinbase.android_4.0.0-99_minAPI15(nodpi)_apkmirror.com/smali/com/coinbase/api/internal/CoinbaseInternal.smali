.class public Lcom/coinbase/api/internal/CoinbaseInternal;
.super Lcom/coinbase/Coinbase;
.source "CoinbaseInternal.java"


# static fields
.field protected static _instance:Lcom/coinbase/api/internal/CoinbaseInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/coinbase/api/internal/CoinbaseInternal;->_instance:Lcom/coinbase/api/internal/CoinbaseInternal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/coinbase/Coinbase;-><init>()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/api/internal/CoinbaseInternal;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/api/internal/CoinbaseInternal;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_accessToken:Ljava/lang/String;

    return-object v0
.end method

.method private delete(Ljava/net/URL;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/coinbase/v1/entity/Response;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "DELETE"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/coinbase/api/internal/CoinbaseInternal;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/coinbase/api/internal/CoinbaseInternal;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Response;

    invoke-static {v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->handleErrors(Lcom/coinbase/v1/entity/Response;)Lcom/coinbase/v1/entity/Response;

    move-result-object v0

    return-object v0
.end method

.method private doMultipartHttp(Ljava/net/URL;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 23
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 256
    .local p3, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    .line 257
    .local v18, "urlConnection":Ljava/net/URLConnection;
    move-object/from16 v0, v18

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 258
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "Custom Base URL must return javax.net.ssl.HttpsURLConnection on openConnection."

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_0
    move-object/from16 v6, v18

    .line 261
    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 262
    .local v6, "conn":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/api/internal/CoinbaseInternal;->_socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 263
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 265
    const-string v3, ""

    .line 266
    .local v3, "boundary":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 267
    const-string v3, "frontier"

    .line 268
    const-string v20, "Content-Type"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "multipart/form-data; boundary="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/api/internal/CoinbaseInternal;->_accessToken:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 272
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/coinbase/api/internal/CoinbaseInternal;->doAccessTokenAuthentication(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 277
    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    .line 278
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 279
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v6, v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 273
    .end local v14    # "key":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/api/internal/CoinbaseInternal;->_apiKey:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/api/internal/CoinbaseInternal;->_apiSecret:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 274
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6}, Lcom/coinbase/api/internal/CoinbaseInternal;->doHmacAuthentication(Ljava/net/URL;Ljava/lang/String;Ljavax/net/ssl/HttpsURLConnection;)V

    goto :goto_0

    .line 283
    :cond_4
    if-eqz p4, :cond_7

    .line 284
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 285
    .local v4, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 287
    .local v16, "outputStream":Ljava/io/DataOutputStream;
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 288
    .local v15, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 289
    .restart local v14    # "key":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "--"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 292
    .local v19, "value":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    const-class v22, Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 293
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\"\r\n\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 294
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_2

    .line 296
    :cond_5
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\"; filename=\"image.png\"\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 297
    const-string v21, "Content-Type: image/png\r\n\r\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 298
    check-cast v19, [B

    .end local v19    # "value":Ljava/lang/Object;
    check-cast v19, [B

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 299
    const-string v21, "\r\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 302
    .end local v14    # "key":Ljava/lang/String;
    :cond_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "--"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "--\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    .line 304
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V

    .line 306
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 307
    .local v7, "data":[B
    const-string v20, "Content-Length"

    array-length v0, v7

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 309
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 312
    .end local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "data":[B
    .end local v15    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "outputStream":Ljava/io/DataOutputStream;
    :cond_7
    const/4 v13, 0x0

    .line 313
    .local v13, "is":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 315
    .local v10, "es":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 316
    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 347
    .local v17, "str":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 348
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 351
    :cond_8
    if-eqz v10, :cond_9

    .line 352
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_9
    return-object v17

    .line 318
    .end local v17    # "str":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 319
    .local v8, "e":Ljava/io/IOException;
    const/16 v20, 0x192

    :try_start_1
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 320
    new-instance v20, Lcom/coinbase/v1/exception/TwoFactorRequiredException;

    invoke-direct/range {v20 .. v20}, Lcom/coinbase/v1/exception/TwoFactorRequiredException;-><init>()V

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    if-eqz v13, :cond_a

    .line 348
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 351
    :cond_a
    if-eqz v10, :cond_b

    .line 352
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_b
    throw v20

    .line 322
    .restart local v8    # "e":Ljava/io/IOException;
    :cond_c
    :try_start_2
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    .line 323
    const/4 v9, 0x0

    .line 324
    .local v9, "errorBody":Ljava/lang/String;
    if-eqz v10, :cond_e

    .line 325
    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-static {v10, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 326
    if-eqz v9, :cond_d

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_d

    .line 327
    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    const-string v21, "json"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v20

    if-eqz v20, :cond_d

    .line 330
    :try_start_3
    const-class v20, Lcom/coinbase/api/internal/entity/ResponseV1;

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/v1/entity/Response;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    .local v5, "coinbaseResponse":Lcom/coinbase/v1/entity/Response;
    :goto_3
    :try_start_4
    invoke-static {v5}, Lcom/coinbase/api/internal/CoinbaseInternal;->handleErrors(Lcom/coinbase/v1/entity/Response;)Lcom/coinbase/v1/entity/Response;

    .line 340
    .end local v5    # "coinbaseResponse":Lcom/coinbase/v1/entity/Response;
    :cond_d
    new-instance v20, Lcom/coinbase/v1/exception/CoinbaseException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Received "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 331
    :catch_1
    move-exception v11

    .line 333
    .local v11, "ex":Ljava/lang/Exception;
    :try_start_5
    const-class v20, Lcom/coinbase/api/internal/entity/ResponseV2;

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/v1/entity/Response;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v5    # "coinbaseResponse":Lcom/coinbase/v1/entity/Response;
    goto :goto_3

    .line 334
    .end local v5    # "coinbaseResponse":Lcom/coinbase/v1/entity/Response;
    :catch_2
    move-exception v12

    .line 335
    .local v12, "ex1":Ljava/lang/Exception;
    :try_start_6
    new-instance v20, Lcom/coinbase/v1/exception/CoinbaseException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 342
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v12    # "ex1":Ljava/lang/Exception;
    :cond_e
    const/16 v20, 0x191

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 343
    new-instance v20, Lcom/coinbase/v1/exception/UnauthorizedException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lcom/coinbase/v1/exception/UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 345
    :cond_f
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static getInstance()Lcom/coinbase/api/internal/CoinbaseInternal;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/coinbase/api/internal/CoinbaseInternal;->_instance:Lcom/coinbase/api/internal/CoinbaseInternal;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/coinbase/api/internal/CoinbaseInternal;

    invoke-direct {v0}, Lcom/coinbase/api/internal/CoinbaseInternal;-><init>()V

    sput-object v0, Lcom/coinbase/api/internal/CoinbaseInternal;->_instance:Lcom/coinbase/api/internal/CoinbaseInternal;

    .line 76
    :cond_0
    sget-object v0, Lcom/coinbase/api/internal/CoinbaseInternal;->_instance:Lcom/coinbase/api/internal/CoinbaseInternal;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/coinbase/Coinbase;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInstance()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iput-object p1, v0, Lcom/coinbase/api/internal/CoinbaseInternal;->_accessToken:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p2, "apiSecret"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Lcom/coinbase/Coinbase;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInstance()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iput-object p1, v0, Lcom/coinbase/api/internal/CoinbaseInternal;->_apiKey:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInstance()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iput-object p2, v0, Lcom/coinbase/api/internal/CoinbaseInternal;->_apiSecret:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private post(Ljava/net/URL;Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/coinbase/v1/entity/Response;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    .local p3, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "POST"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/coinbase/api/internal/CoinbaseInternal;->doHttp(Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/coinbase/api/internal/CoinbaseInternal;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Response;

    invoke-static {v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->handleErrors(Lcom/coinbase/v1/entity/Response;)Lcom/coinbase/v1/entity/Response;

    move-result-object v0

    return-object v0
.end method

.method private postMultipart(Ljava/net/URL;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/coinbase/v1/entity/Response;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "POST"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/coinbase/api/internal/CoinbaseInternal;->doMultipartHttp(Ljava/net/URL;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/coinbase/api/internal/CoinbaseInternal;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Response;

    invoke-static {v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->handleErrors(Lcom/coinbase/v1/entity/Response;)Lcom/coinbase/v1/entity/Response;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acceptUserAgreement(Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 537
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0}, Lcom/coinbase/api/internal/ApiInterface;->acceptUserAgreement()Lretrofit/Call;

    move-result-object v1

    .line 538
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$6;

    invoke-direct {v2, p0, p1}, Lcom/coinbase/api/internal/CoinbaseInternal$6;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 552
    return-object v1
.end method

.method protected build2FAInterceptor(Ljava/lang/String;)Lcom/squareup/okhttp/Interceptor;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 396
    new-instance v0, Lcom/coinbase/api/internal/CoinbaseInternal$3;

    invoke-direct {v0, p0, p1}, Lcom/coinbase/api/internal/CoinbaseInternal$3;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Ljava/lang/String;)V

    return-object v0
.end method

.method protected buildOAuthInterceptor()Lcom/squareup/okhttp/Interceptor;
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lcom/coinbase/api/internal/CoinbaseInternal$1;

    invoke-direct {v0, p0}, Lcom/coinbase/api/internal/CoinbaseInternal$1;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;)V

    return-object v0
.end method

.method public completeCDVVerification(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "paymentMethodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 1063
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/api/internal/ApiInterface;->completeCDVVerification(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 1064
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$33;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/api/internal/CoinbaseInternal$33;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1078
    return-object v1
.end method

.method public completeCardCDV(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)V
    .locals 3
    .param p1, "paymentMethodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 703
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/api/internal/ApiInterface;->verifyCardCDV(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$14;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/api/internal/CoinbaseInternal$14;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 716
    return-void
.end method

.method public createAchSetupSession(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 941
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 942
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/api/internal/ApiInterface;->createAchSetupSession(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 943
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$27;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/api/internal/CoinbaseInternal$27;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 956
    return-object v1
.end method

.method public createAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 4
    .param p1, "address1"    # Ljava/lang/String;
    .param p2, "address2"    # Ljava/lang/String;
    .param p3, "city"    # Ljava/lang/String;
    .param p4, "state"    # Ljava/lang/String;
    .param p5, "zip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/address/Address;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 505
    .local p6, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/address/Address;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 506
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 507
    const-string v3, "line1"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_0
    if-eqz p2, :cond_1

    .line 509
    const-string v3, "line2"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_1
    if-eqz p3, :cond_2

    .line 511
    const-string v3, "city"

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_2
    if-eqz p4, :cond_3

    .line 513
    const-string v3, "state"

    invoke-virtual {v2, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :cond_3
    if-eqz p5, :cond_4

    .line 515
    const-string v3, "postal_code"

    invoke-virtual {v2, v3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_4
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 517
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, v2}, Lcom/coinbase/api/internal/ApiInterface;->createAddress(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 518
    .local v1, "call":Lretrofit/Call;
    new-instance v3, Lcom/coinbase/api/internal/CoinbaseInternal$5;

    invoke-direct {v3, p0, p6}, Lcom/coinbase/api/internal/CoinbaseInternal$5;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 532
    return-object v1
.end method

.method public createBankManually(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1020
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 1021
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/api/internal/ApiInterface;->createBankManually(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 1022
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$31;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/api/internal/CoinbaseInternal$31;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1036
    return-object v1
.end method

.method public createBankWithAchSetupSession(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 999
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 1000
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/api/internal/ApiInterface;->createBankWithAchSetupSession(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 1001
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$30;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/api/internal/CoinbaseInternal$30;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1015
    return-object v1
.end method

.method public createBillingAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .locals 4
    .param p1, "address1"    # Ljava/lang/String;
    .param p2, "address2"    # Ljava/lang/String;
    .param p3, "city"    # Ljava/lang/String;
    .param p4, "state"    # Ljava/lang/String;
    .param p5, "zip"    # Ljava/lang/String;
    .param p6, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p7, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 823
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "line1"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string v2, "line2"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string v2, "city"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v2, "state"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string v2, "postal_code"

    invoke-virtual {v1, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string v2, "country"

    invoke-virtual {v1, v2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 830
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, v1}, Lcom/coinbase/api/internal/ApiInterface;->createBillingAddress(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v2

    new-instance v3, Lcom/coinbase/api/internal/CoinbaseInternal$21;

    invoke-direct {v3, p0, p7}, Lcom/coinbase/api/internal/CoinbaseInternal$21;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v2, v3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 843
    return-void
.end method

.method public createDeviceToken(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .locals 8
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "gcmToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 576
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 577
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "device_id"

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v6, "token"

    invoke-virtual {v5, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v6, "platform"

    const-string v7, "GCM"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v6, "application_id"

    const-string v7, "coinbase_android"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v6, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 584
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 583
    invoke-static {v6, v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 585
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 586
    .local v2, "currentLocalTime":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "Z"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 587
    .local v3, "date":Ljava/text/DateFormat;
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, "localTime":Ljava/lang/String;
    const-string v6, "tz_offset"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 591
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, v5}, Lcom/coinbase/api/internal/ApiInterface;->createDeviceToken(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v6

    new-instance v7, Lcom/coinbase/api/internal/CoinbaseInternal$8;

    invoke-direct {v7, p0, p3}, Lcom/coinbase/api/internal/CoinbaseInternal$8;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v6, v7}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 604
    return-void
.end method

.method public createJumioProfile(Ljava/util/HashMap;)Lcom/coinbase/api/internal/entity/JumioProfileResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/coinbase/api/internal/entity/JumioProfileResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_baseV2ApiUrl:Ljava/net/URL;

    const-string v4, "jumio-profiles"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .local v2, "profileURL":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getV2VersionHeaders()Ljava/util/HashMap;

    move-result-object v1

    .line 219
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v3, Lcom/coinbase/api/internal/entity/JumioProfileResponse;

    invoke-direct {p0, v2, v1, p1, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->postMultipart(Ljava/net/URL;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/api/internal/entity/JumioProfileResponse;

    return-object v3

    .line 213
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "profileURL":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public createOAuthAccessGrant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;
    .locals 5
    .param p1, "responseType"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "redirectUri"    # Ljava/lang/String;
    .param p4, "scope"    # Ljava/lang/String;
    .param p5, "meta"    # Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;
    .param p6, "state"    # Ljava/lang/String;
    .param p7, "userConfirmed"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "oauth/access_grants"

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .local v0, "createURL":Ljava/net/URL;
    new-instance v2, Lcom/coinbase/api/internal/entity/Request;

    invoke-direct {v2}, Lcom/coinbase/api/internal/entity/Request;-><init>()V

    .line 170
    .local v2, "request":Lcom/coinbase/api/internal/entity/Request;
    invoke-virtual {v2, p1}, Lcom/coinbase/api/internal/entity/Request;->setResponseType(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2, p2}, Lcom/coinbase/api/internal/entity/Request;->setClientId(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2, p3}, Lcom/coinbase/api/internal/entity/Request;->setRedirectUri(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, p4}, Lcom/coinbase/api/internal/entity/Request;->setScope(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2, p5}, Lcom/coinbase/api/internal/entity/Request;->setMeta(Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;)V

    .line 175
    invoke-virtual {v2, p7}, Lcom/coinbase/api/internal/entity/Request;->setUserConfirmed(Ljava/lang/Boolean;)V

    .line 176
    invoke-virtual {v2, p6}, Lcom/coinbase/api/internal/entity/Request;->setState(Ljava/lang/String;)V

    .line 178
    const-class v3, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;

    return-object v3

    .line 165
    .end local v0    # "createURL":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/api/internal/entity/Request;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public createPhoneNumber(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;>;"
    invoke-virtual {p0, p1}, Lcom/coinbase/api/internal/CoinbaseInternal;->get2FAApiService(Ljava/lang/String;)Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 737
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p2}, Lcom/coinbase/api/internal/ApiInterface;->createPhoneNumber(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$16;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/api/internal/CoinbaseInternal$16;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 750
    return-void
.end method

.method public createPriceAlert(Ljava/util/HashMap;Lretrofit/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 607
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 608
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/api/internal/ApiInterface;->createPriceAlert(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$9;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/api/internal/CoinbaseInternal$9;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 623
    return-void
.end method

.method public createSepaBankAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/v1/entity/PaymentMethodResponse;
    .locals 5
    .param p1, "bankName"    # Ljava/lang/String;
    .param p2, "iban"    # Ljava/lang/String;
    .param p3, "swift"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "payment_methods"

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .local v0, "createURL":Ljava/net/URL;
    new-instance v2, Lcom/coinbase/api/internal/entity/Request;

    invoke-direct {v2}, Lcom/coinbase/api/internal/entity/Request;-><init>()V

    .line 148
    .local v2, "request":Lcom/coinbase/api/internal/entity/Request;
    sget-object v3, Lcom/coinbase/v1/entity/PaymentMethod$Type;->SEPA_BANK_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/PaymentMethod$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coinbase/api/internal/entity/Request;->setType(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2, p1}, Lcom/coinbase/api/internal/entity/Request;->setBankName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2, p2}, Lcom/coinbase/api/internal/entity/Request;->setIban(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2, p3}, Lcom/coinbase/api/internal/entity/Request;->setSwift(Ljava/lang/String;)V

    .line 153
    const-class v3, Lcom/coinbase/v1/entity/PaymentMethodResponse;

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v1/entity/PaymentMethodResponse;

    return-object v3

    .line 143
    .end local v0    # "createURL":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/api/internal/entity/Request;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public deleteAchSetupSession(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_baseV2ApiUrl:Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ach-setup-sessions/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .local v0, "accountUrl":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getV2VersionHeaders()Ljava/util/HashMap;

    move-result-object v2

    .line 233
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v3, Lcom/coinbase/api/internal/entity/ResponseV1;

    invoke-direct {p0, v0, v2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->delete(Ljava/net/URL;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    .line 234
    return-void

    .line 227
    .end local v0    # "accountUrl":Ljava/net/URL;
    .end local v2    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 228
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v4, "Invalid session id"

    invoke-direct {v3, v4}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public deleteBillingAddresses(Ljava/lang/String;Lretrofit/Callback;)V
    .locals 3
    .param p1, "billingAddressId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 846
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 847
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/api/internal/ApiInterface;->deleteBillingAddress(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$22;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/api/internal/CoinbaseInternal$22;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 860
    return-void
.end method

.method public deletePaymentmethod(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "paymentMethodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 921
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 922
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/api/internal/ApiInterface;->deletePaymentMethod(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 923
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$26;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/api/internal/CoinbaseInternal$26;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 937
    return-object v1
.end method

.method public deletePhoneNumber(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "phoneNumberId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 770
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;>;"
    invoke-virtual {p0, p1}, Lcom/coinbase/api/internal/CoinbaseInternal;->get2FAApiService(Ljava/lang/String;)Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 771
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p2}, Lcom/coinbase/api/internal/ApiInterface;->deletePhoneNumber(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$18;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/api/internal/CoinbaseInternal$18;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 784
    return-void
.end method

.method public deletePriceAlert(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 627
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/api/internal/ApiInterface;->deletePriceAlert(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$10;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/api/internal/CoinbaseInternal$10;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 642
    return-void
.end method

.method public enableGoogleNow(Ljava/lang/String;)V
    .locals 5
    .param p1, "authCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_baseApiUrl:Ljava/net/URL;

    const-string v4, "google_now"

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v0, "enableGoogleNowURL":Ljava/net/URL;
    new-instance v2, Lcom/coinbase/api/internal/entity/Request;

    invoke-direct {v2}, Lcom/coinbase/api/internal/entity/Request;-><init>()V

    .line 121
    .local v2, "request":Lcom/coinbase/api/internal/entity/Request;
    invoke-virtual {v2, p1}, Lcom/coinbase/api/internal/entity/Request;->setGoogleNowAuthorizationCode(Ljava/lang/String;)V

    .line 123
    const-class v3, Lcom/coinbase/api/internal/entity/ResponseV1;

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    .line 124
    return-void

    .line 116
    .end local v0    # "enableGoogleNowURL":Ljava/net/URL;
    .end local v2    # "request":Lcom/coinbase/api/internal/entity/Request;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v4, "Invalid URL"

    invoke-direct {v3, v4}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected get2FAApiService(Ljava/lang/String;)Lcom/coinbase/api/internal/ApiInterface;
    .locals 5
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 445
    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_accessToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 446
    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->buildOAuthInterceptor()Lcom/squareup/okhttp/Interceptor;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_0
    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->buildVersionInterceptor()Lcom/squareup/okhttp/Interceptor;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    if-nez p1, :cond_1

    .line 454
    const-string p1, "l"

    .line 457
    :cond_1
    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/coinbase/api/internal/CoinbaseInternal;->build2FAInterceptor(Ljava/lang/String;)Lcom/squareup/okhttp/Interceptor;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/coinbase/ApiConstants;->BASE_URL_PRODUCTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/coinbase/ApiConstants;->SERVER_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lretrofit/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit/Retrofit$Builder;-><init>()V

    .line 461
    invoke-virtual {v3, v2}, Lretrofit/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit/Retrofit$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_client:Lcom/squareup/okhttp/OkHttpClient;

    .line 462
    invoke-virtual {v3, v4}, Lretrofit/Retrofit$Builder;->client(Lcom/squareup/okhttp/OkHttpClient;)Lretrofit/Retrofit$Builder;

    move-result-object v3

    .line 463
    invoke-static {}, Lretrofit/GsonConverterFactory;->create()Lretrofit/GsonConverterFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit/Retrofit$Builder;->addConverterFactory(Lretrofit/Converter$Factory;)Lretrofit/Retrofit$Builder;

    move-result-object v3

    .line 464
    invoke-virtual {v3}, Lretrofit/Retrofit$Builder;->build()Lretrofit/Retrofit;

    move-result-object v0

    .line 466
    .local v0, "retrofit":Lretrofit/Retrofit;
    const-class v3, Lcom/coinbase/api/internal/ApiInterface;

    invoke-virtual {v0, v3}, Lretrofit/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/ApiInterface;

    .line 468
    .local v1, "service":Lcom/coinbase/api/internal/ApiInterface;
    return-object v1
.end method

.method protected getAuthApiService()Lcom/coinbase/api/internal/ApiInterface;
    .locals 5

    .prologue
    .line 428
    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/coinbase/ApiConstants;->BASE_URL_PRODUCTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lretrofit/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit/Retrofit$Builder;-><init>()V

    .line 432
    invoke-virtual {v3, v2}, Lretrofit/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit/Retrofit$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_client:Lcom/squareup/okhttp/OkHttpClient;

    .line 433
    invoke-virtual {v3, v4}, Lretrofit/Retrofit$Builder;->client(Lcom/squareup/okhttp/OkHttpClient;)Lretrofit/Retrofit$Builder;

    move-result-object v3

    .line 434
    invoke-static {}, Lretrofit/GsonConverterFactory;->create()Lretrofit/GsonConverterFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit/Retrofit$Builder;->addConverterFactory(Lretrofit/Converter$Factory;)Lretrofit/Retrofit$Builder;

    move-result-object v3

    .line 435
    invoke-virtual {v3}, Lretrofit/Retrofit$Builder;->build()Lretrofit/Retrofit;

    move-result-object v0

    .line 437
    .local v0, "retrofit":Lretrofit/Retrofit;
    const-class v3, Lcom/coinbase/api/internal/ApiInterface;

    invoke-virtual {v0, v3}, Lretrofit/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/ApiInterface;

    .line 439
    .local v1, "service":Lcom/coinbase/api/internal/ApiInterface;
    return-object v1
.end method

.method public getAuthCode(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/auth/Auth;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/auth/Auth;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getAuthApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 485
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/api/internal/ApiInterface;->getAuthCode(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 486
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$4;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/api/internal/CoinbaseInternal$4;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 500
    return-object v1
.end method

.method public getAvailablePaymentMethods(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethods;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 863
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethods;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 864
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/api/internal/ApiInterface;->getAvailablePaymentMethods(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 866
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$23;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/api/internal/CoinbaseInternal$23;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 880
    return-object v1
.end method

.method public getBillingAddress(Ljava/lang/String;Lretrofit/Callback;)V
    .locals 3
    .param p1, "billingAddressId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 805
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/api/internal/ApiInterface;->getBillingAddress(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$20;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/api/internal/CoinbaseInternal$20;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 818
    return-void
.end method

.method public getBillingAddresses(Lretrofit/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    .local p1, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 788
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0}, Lcom/coinbase/api/internal/ApiInterface;->getBillingAddresses()Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$19;

    invoke-direct {v2, p0, p1}, Lcom/coinbase/api/internal/CoinbaseInternal$19;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 801
    return-void
.end method

.method public getCountry()Lcom/coinbase/api/internal/entity/CountryResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_baseV2ApiUrl:Ljava/net/URL;

    const-string v4, "mobile/country"

    invoke-direct {v0, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .local v0, "countryURL":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getV2VersionHeaders()Ljava/util/HashMap;

    move-result-object v2

    .line 252
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v3, Lcom/coinbase/api/internal/entity/CountryResponse;

    invoke-virtual {p0, v0, v2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->get(Ljava/net/URL;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/api/internal/entity/CountryResponse;

    return-object v3

    .line 246
    .end local v0    # "countryURL":Ljava/net/URL;
    .end local v2    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 247
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method protected getCustomApiService(Ljava/lang/String;)Lcom/coinbase/api/internal/ApiInterface;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 473
    new-instance v2, Lretrofit/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit/Retrofit$Builder;-><init>()V

    .line 474
    invoke-virtual {v2, p1}, Lretrofit/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit/Retrofit$Builder;

    move-result-object v2

    .line 475
    invoke-static {}, Lretrofit/GsonConverterFactory;->create()Lretrofit/GsonConverterFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit/Retrofit$Builder;->addConverterFactory(Lretrofit/Converter$Factory;)Lretrofit/Retrofit$Builder;

    move-result-object v2

    .line 476
    invoke-virtual {v2}, Lretrofit/Retrofit$Builder;->build()Lretrofit/Retrofit;

    move-result-object v0

    .line 478
    .local v0, "retrofit":Lretrofit/Retrofit;
    const-class v2, Lcom/coinbase/api/internal/ApiInterface;

    invoke-virtual {v0, v2}, Lretrofit/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/ApiInterface;

    .line 480
    .local v1, "service":Lcom/coinbase/api/internal/ApiInterface;
    return-object v1
.end method

.method public getInstantExchangeQuote(Ljava/lang/String;Lorg/joda/money/Money;Z)Lcom/coinbase/api/internal/entity/InstantExchangeQuote;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "amount"    # Lorg/joda/money/Money;
    .param p3, "commit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v4, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_baseV2ApiUrl:Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accounts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/instant-exchange-quotes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v1, "exchangeQuoteUrl":Ljava/net/URL;
    new-instance v3, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;

    invoke-direct {v3}, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;-><init>()V

    .line 102
    .local v3, "request":Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;
    invoke-virtual {p2}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;->setAmount(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;->setCurrency(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3, p3}, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;->setCommit(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getV2VersionHeaders()Ljava/util/HashMap;

    move-result-object v2

    .line 108
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v4, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteResponse;

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->post(Ljava/net/URL;Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v4

    check-cast v4, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteResponse;

    invoke-virtual {v4}, Lcom/coinbase/api/internal/entity/InstantExchangeQuoteResponse;->getData()Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    move-result-object v4

    return-object v4

    .line 98
    .end local v1    # "exchangeQuoteUrl":Ljava/net/URL;
    .end local v2    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "request":Lcom/coinbase/api/internal/entity/InstantExchangeQuoteRequest;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method protected getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;
    .locals 5

    .prologue
    .line 408
    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 410
    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_accessToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->buildOAuthInterceptor()Lcom/squareup/okhttp/Interceptor;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_0
    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->buildVersionInterceptor()Lcom/squareup/okhttp/Interceptor;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/coinbase/ApiConstants;->BASE_URL_PRODUCTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/coinbase/ApiConstants;->SERVER_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lretrofit/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit/Retrofit$Builder;-><init>()V

    .line 417
    invoke-virtual {v3, v2}, Lretrofit/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit/Retrofit$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_client:Lcom/squareup/okhttp/OkHttpClient;

    .line 418
    invoke-virtual {v3, v4}, Lretrofit/Retrofit$Builder;->client(Lcom/squareup/okhttp/OkHttpClient;)Lretrofit/Retrofit$Builder;

    move-result-object v3

    .line 419
    invoke-static {}, Lretrofit/GsonConverterFactory;->create()Lretrofit/GsonConverterFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit/Retrofit$Builder;->addConverterFactory(Lretrofit/Converter$Factory;)Lretrofit/Retrofit$Builder;

    move-result-object v3

    .line 420
    invoke-virtual {v3}, Lretrofit/Retrofit$Builder;->build()Lretrofit/Retrofit;

    move-result-object v0

    .line 422
    .local v0, "retrofit":Lretrofit/Retrofit;
    const-class v3, Lcom/coinbase/api/internal/ApiInterface;

    invoke-virtual {v0, v3}, Lretrofit/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/ApiInterface;

    .line 424
    .local v1, "service":Lcom/coinbase/api/internal/ApiInterface;
    return-object v1
.end method

.method public getJumioProfiles()Lcom/coinbase/api/internal/entity/JumioProfilesResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_baseV2ApiUrl:Ljava/net/URL;

    const-string v4, "jumio-profiles"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .local v2, "profilesURL":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getV2VersionHeaders()Ljava/util/HashMap;

    move-result-object v1

    .line 191
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v3, Lcom/coinbase/api/internal/entity/JumioProfilesResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->get(Ljava/net/URL;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/api/internal/entity/JumioProfilesResponse;

    return-object v3

    .line 185
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "profilesURL":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public getJumioSupportedDocuments()Lcom/coinbase/api/internal/entity/JumioSupportedDocumentsResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_baseV2ApiUrl:Ljava/net/URL;

    const-string v4, "jumio-profiles/supported-documents"

    invoke-direct {v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .local v2, "profileURL":Ljava/net/URL;
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getV2VersionHeaders()Ljava/util/HashMap;

    move-result-object v1

    .line 205
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v3, Lcom/coinbase/api/internal/entity/JumioSupportedDocumentsResponse;

    invoke-virtual {p0, v2, v1, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->get(Ljava/net/URL;Ljava/util/HashMap;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v3

    check-cast v3, Lcom/coinbase/api/internal/entity/JumioSupportedDocumentsResponse;

    return-object v3

    .line 199
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "profileURL":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public getPhoneNumbers(Lretrofit/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 720
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0}, Lcom/coinbase/api/internal/ApiInterface;->getPhoneNumbers()Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$15;

    invoke-direct {v2, p0, p1}, Lcom/coinbase/api/internal/CoinbaseInternal$15;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 733
    return-void
.end method

.method public getPriceChart(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p2, "baseCurrency"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/priceCharts/PriceChart;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1083
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/priceCharts/PriceChart;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 1084
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p2, p3, p1}, Lcom/coinbase/api/internal/ApiInterface;->getPriceChart(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 1085
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$34;

    invoke-direct {v2, p0, p4}, Lcom/coinbase/api/internal/CoinbaseInternal$34;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1098
    return-object v1
.end method

.method public getRemainingVerifications(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/verifications/remainingVerifications/RemainingVerifications;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 884
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/verifications/remainingVerifications/RemainingVerifications;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 885
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/api/internal/ApiInterface;->getRemainingVerifications(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    .line 886
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$24;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/api/internal/CoinbaseInternal$24;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 900
    return-object v1
.end method

.method public getSepaDepositInformation(Lretrofit/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/sepaDepositInfo/SepaDepositInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 904
    .local p1, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/sepaDepositInfo/SepaDepositInfo;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 905
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0}, Lcom/coinbase/api/internal/ApiInterface;->getSepaInformation()Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$25;

    invoke-direct {v2, p0, p1}, Lcom/coinbase/api/internal/CoinbaseInternal$25;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 918
    return-void
.end method

.method public getUserAgreement(Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/agreement/UserAgreement;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/agreement/UserAgreement;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 557
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0}, Lcom/coinbase/api/internal/ApiInterface;->getUserAgreement()Lretrofit/Call;

    move-result-object v1

    .line 558
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$7;

    invoke-direct {v2, p0, p1}, Lcom/coinbase/api/internal/CoinbaseInternal$7;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 572
    return-object v1
.end method

.method public isGoogleNowEnabled()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/coinbase/v1/exception/CoinbaseException;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_baseApiUrl:Ljava/net/URL;

    const-string v3, "google_now"

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .local v1, "googleNowEnabledURL":Ljava/net/URL;
    const-class v2, Lcom/coinbase/api/internal/entity/IsGoogleNowEnabledResponse;

    invoke-virtual {p0, v1, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->get(Ljava/net/URL;Ljava/lang/Class;)Lcom/coinbase/v1/entity/Response;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/entity/IsGoogleNowEnabledResponse;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/entity/IsGoogleNowEnabledResponse;->getGoogleNowEnabled()Z

    move-result v2

    return v2

    .line 131
    .end local v1    # "googleNowEnabledURL":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/coinbase/v1/exception/CoinbaseException;

    const-string v3, "Invalid URL"

    invoke-direct {v2, v3}, Lcom/coinbase/v1/exception/CoinbaseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public paymentCardSetup(Lretrofit/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/paymentMethods/CardSetup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/paymentMethods/CardSetup;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 646
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0}, Lcom/coinbase/api/internal/ApiInterface;->paymentCardSetup()Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$11;

    invoke-direct {v2, p0, p1}, Lcom/coinbase/api/internal/CoinbaseInternal$11;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 661
    return-void
.end method

.method public processPaymentCard(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1}, Lcom/coinbase/api/internal/CoinbaseInternal;->getCustomApiService(Ljava/lang/String;)Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 665
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    const-string v1, ""

    invoke-interface {v0, v1, p2}, Lcom/coinbase/api/internal/ApiInterface;->processPaymentCard(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$12;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/api/internal/CoinbaseInternal$12;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 680
    return-void
.end method

.method public sendMFAToken(Ljava/util/HashMap;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 960
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 961
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p2, p1}, Lcom/coinbase/api/internal/ApiInterface;->sendMFA(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 962
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$28;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/api/internal/CoinbaseInternal$28;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 975
    return-object v1
.end method

.method public startAchVerification(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p1, "paymentMethodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 1042
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1, p2}, Lcom/coinbase/api/internal/ApiInterface;->startAchVerification(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 1043
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$32;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/api/internal/CoinbaseInternal$32;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 1057
    return-object v1
.end method

.method public submitMFAToken(Ljava/util/HashMap;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;
    .locals 3
    .param p2, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;",
            ">;)",
            "Lretrofit/Call;"
        }
    .end annotation

    .prologue
    .line 979
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 980
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p2, p1}, Lcom/coinbase/api/internal/ApiInterface;->submitMFA(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    .line 981
    .local v1, "call":Lretrofit/Call;
    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$29;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/api/internal/CoinbaseInternal$29;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 994
    return-object v1
.end method

.method public verifyCallback(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/coinbase/api/internal/CoinbaseInternal;->_callbackVerifier:Lcom/coinbase/CallbackVerifier;

    invoke-interface {v0, p1, p2}, Lcom/coinbase/CallbackVerifier;->verifyCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public verifyPaymentCard(Ljava/util/HashMap;Lretrofit/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/paymentMethods/verify/Verify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/paymentMethods/verify/Verify;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 684
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p1}, Lcom/coinbase/api/internal/ApiInterface;->verifyPaymentCard(Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$13;

    invoke-direct {v2, p0, p2}, Lcom/coinbase/api/internal/CoinbaseInternal$13;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 699
    return-void
.end method

.method public verifyPhoneNumber(Ljava/util/HashMap;Ljava/lang/String;Lretrofit/Callback;)V
    .locals 3
    .param p2, "phoneNumberId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 753
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "callback":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;>;"
    invoke-virtual {p0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInternalApiService()Lcom/coinbase/api/internal/ApiInterface;

    move-result-object v0

    .line 754
    .local v0, "apiInterface":Lcom/coinbase/api/internal/ApiInterface;
    invoke-interface {v0, p2, p1}, Lcom/coinbase/api/internal/ApiInterface;->verifyPhoneNumber(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;

    move-result-object v1

    new-instance v2, Lcom/coinbase/api/internal/CoinbaseInternal$17;

    invoke-direct {v2, p0, p3}, Lcom/coinbase/api/internal/CoinbaseInternal$17;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V

    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 767
    return-void
.end method

.method protected z()Lcom/squareup/okhttp/Interceptor;
    .locals 1

    .prologue
    .line 384
    new-instance v0, Lcom/coinbase/api/internal/CoinbaseInternal$2;

    invoke-direct {v0, p0}, Lcom/coinbase/api/internal/CoinbaseInternal$2;-><init>(Lcom/coinbase/api/internal/CoinbaseInternal;)V

    return-object v0
.end method
