.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lokio/ByteString;

.field static final HEX_DIGITS:[C


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokio/ByteString;->HEX_DIGITS:[C

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-void

    .line 47
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lokio/ByteString;->data:[B

    .line 60
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 3
    .param p0, "base64"    # Ljava/lang/String;

    .prologue
    .line 138
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "base64 == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    invoke-static {p0}, Lokio/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 140
    .local v0, "decoded":[B
    if-eqz v0, :cond_1

    new-instance v1, Lokio/ByteString;

    invoke-direct {v1, v0}, Lokio/ByteString;-><init>([B)V

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 3
    .param p1, "digest"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v2, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 85
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "s == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    new-instance v0, Lokio/ByteString;

    sget-object v1, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 87
    .local v0, "byteString":Lokio/ByteString;
    iput-object p0, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 88
    return-object v0
.end method

.method public static varargs of([B)Lokio/ByteString;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 66
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    new-instance v1, Lokio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Lokio/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lokio/ByteString;)I
    .locals 9
    .param p1, "byteString"    # Lokio/ByteString;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 337
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v4

    .line 338
    .local v4, "sizeA":I
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v5

    .line 339
    .local v5, "sizeB":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 340
    invoke-virtual {p0, v2}, Lokio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 341
    .local v0, "byteA":I
    invoke-virtual {p1, v2}, Lokio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v1, v8, 0xff

    .line 342
    .local v1, "byteB":I
    if-ne v0, v1, :cond_0

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    :cond_0
    if-ge v0, v1, :cond_2

    .line 346
    .end local v0    # "byteA":I
    .end local v1    # "byteB":I
    :cond_1
    :goto_1
    return v6

    .restart local v0    # "byteA":I
    .restart local v1    # "byteB":I
    :cond_2
    move v6, v7

    .line 343
    goto :goto_1

    .line 345
    .end local v0    # "byteA":I
    .end local v1    # "byteB":I
    :cond_3
    if-ne v4, v5, :cond_4

    const/4 v6, 0x0

    goto :goto_1

    .line 346
    :cond_4
    if-lt v4, v5, :cond_1

    move v6, v7

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 325
    if-ne p1, p0, :cond_0

    .line 328
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 326
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lokio/ByteString;

    .line 327
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    iget-object v3, p0, Lokio/ByteString;->data:[B

    array-length v3, v3

    if-ne v0, v3, :cond_1

    check-cast p1, Lokio/ByteString;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lokio/ByteString;->data:[B

    iget-object v3, p0, Lokio/ByteString;->data:[B

    array-length v3, v3

    .line 328
    invoke-virtual {p1, v2, v0, v2, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lokio/ByteString;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 332
    iget v0, p0, Lokio/ByteString;->hashCode:I

    .line 333
    .local v0, "result":I
    if-eqz v0, :cond_0

    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lokio/ByteString;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .end local v0    # "result":I
    iput v0, p0, Lokio/ByteString;->hashCode:I

    goto :goto_0
.end method

.method public hex()Ljava/lang/String;
    .locals 9

    .prologue
    .line 145
    iget-object v4, p0, Lokio/ByteString;->data:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [C

    .line 146
    .local v3, "result":[C
    const/4 v1, 0x0

    .line 147
    .local v1, "c":I
    iget-object v5, p0, Lokio/ByteString;->data:[B

    array-length v6, v5

    const/4 v4, 0x0

    move v2, v1

    .end local v1    # "c":I
    .local v2, "c":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-byte v0, v5, v4

    .line 148
    .local v0, "b":B
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "c":I
    .restart local v1    # "c":I
    sget-object v7, Lokio/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v0, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v3, v2

    .line 149
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "c":I
    .restart local v2    # "c":I
    sget-object v7, Lokio/ByteString;->HEX_DIGITS:[C

    and-int/lit8 v8, v0, 0xf

    aget-char v7, v7, v8

    aput-char v7, v3, v1

    .line 147
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "b":B
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method public md5()Lokio/ByteString;
    .locals 1

    .prologue
    .line 109
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lokio/ByteString;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 1
    .param p1, "offset"    # I
    .param p2, "other"    # Lokio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 1
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 321
    invoke-static {v0, p1, p2, p3, p4}, Lokio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 7

    .prologue
    const/16 v6, 0x5a

    const/16 v5, 0x41

    .line 200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lokio/ByteString;->data:[B

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 201
    iget-object v4, p0, Lokio/ByteString;->data:[B

    aget-byte v0, v4, v1

    .line 202
    .local v0, "c":B
    if-lt v0, v5, :cond_0

    if-le v0, v6, :cond_1

    .line 200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v4, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 207
    .local v3, "lowercase":[B
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    add-int/lit8 v4, v0, 0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    move v1, v2

    .line 208
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 209
    aget-byte v0, v3, v1

    .line 210
    if-lt v0, v5, :cond_2

    if-le v0, v6, :cond_3

    .line 208
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    :cond_3
    add-int/lit8 v4, v0, 0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_2

    .line 213
    :cond_4
    new-instance p0, Lokio/ByteString;

    .end local p0    # "this":Lokio/ByteString;
    invoke-direct {p0, v3}, Lokio/ByteString;-><init>([B)V

    .line 215
    .end local v0    # "c":B
    .end local v3    # "lowercase":[B
    :cond_5
    return-object p0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 350
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 351
    const-string v0, "ByteString[size=0]"

    .line 358
    :goto_0
    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 355
    const-string v0, "ByteString[size=%s data=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lokio/ByteString;->data:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_1
    const-string v0, "ByteString[size=%s md5=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lokio/ByteString;->data:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public utf8()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 95
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/String;

    .end local v0    # "result":Ljava/lang/String;
    iget-object v1, p0, Lokio/ByteString;->data:[B

    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    goto :goto_0
.end method

.method write(Lokio/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lokio/Buffer;

    .prologue
    .line 301
    iget-object v0, p0, Lokio/ByteString;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lokio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 302
    return-void
.end method
