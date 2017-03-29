.class public Lcom/coinbase/android/crypto/ByteArrayUtils;
.super Ljava/lang/Object;
.source "ByteArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs concatenate([[B)[B
    .locals 8
    .param p0, "bytes"    # [[B

    .prologue
    const/4 v5, 0x0

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "length":I
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .local v0, "array":[B
    array-length v7, v0

    add-int/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "array":[B
    :cond_0
    new-array v3, v1, [B

    .line 80
    .local v3, "result":[B
    const/4 v2, 0x0

    .line 81
    .local v2, "offset":I
    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    .line 82
    .restart local v0    # "array":[B
    array-length v7, v0

    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    array-length v7, v0

    add-int/2addr v2, v7

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 85
    .end local v0    # "array":[B
    :cond_1
    return-object v3
.end method

.method public static copyOf([B)[B
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 211
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/coinbase/android/crypto/ByteArrayUtils;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 31
    new-array v0, p2, [B

    .line 32
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    return-object v0
.end method

.method public static getBit([BI)I
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "bitNr"    # I

    .prologue
    .line 143
    array-length v2, p0

    div-int/lit8 v3, p1, 0x8

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x1

    .line 144
    .local v1, "byteNr":I
    rem-int/lit8 v0, p1, 0x8

    .line 145
    .local v0, "bitNrInByte":I
    aget-byte v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    .line 102
    invoke-static {p0}, Lcom/coinbase/android/crypto/ByteArrayUtils;->removeSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 107
    .local v4, "resultLen":I
    new-array v3, v4, [B

    .line 108
    .local v3, "result":[B
    const/4 v1, 0x0

    .line 109
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 110
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v2, v1, 0x1

    .line 111
    .end local v1    # "j":I
    .restart local v2    # "j":I
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object v3
.end method

.method private static removeSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, "\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 118
    return-object p0
.end method

.method public static repeat(BI)[B
    .locals 1
    .param p0, "b"    # B
    .param p1, "nrRepeats"    # I

    .prologue
    .line 205
    new-array v0, p1, [B

    .line 206
    .local v0, "result":[B
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([BB)V

    .line 207
    return-object v0
.end method

.method public static setBit([BII)V
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "bitNr"    # I
    .param p2, "bit"    # I

    .prologue
    const/4 v4, 0x1

    .line 150
    array-length v2, p0

    div-int/lit8 v3, p1, 0x8

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x1

    .line 151
    .local v1, "byteNr":I
    rem-int/lit8 v0, p1, 0x8

    .line 152
    .local v0, "bitNrInByte":I
    if-eqz p2, :cond_0

    .line 153
    aget-byte v2, p0, v1

    shl-int v3, v4, v0

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    aget-byte v2, p0, v1

    shl-int v3, v4, v0

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    goto :goto_0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 3
    .param p0, "output"    # [B

    .prologue
    .line 160
    array-length v2, p0

    new-array v0, v2, [C

    .line 161
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 162
    aget-byte v2, p0, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static toBytes(I[BI)V
    .locals 3
    .param p0, "integer"    # I
    .param p1, "output"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 46
    move v0, p2

    .line 47
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 48
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 49
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 50
    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 51
    return-void
.end method

.method public static toBytes(I)[B
    .locals 2
    .param p0, "integer"    # I

    .prologue
    .line 37
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 38
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toBytes(I[BI)V

    .line 39
    return-object v0
.end method

.method public static toBytes(J)[B
    .locals 6
    .param p0, "longValue"    # J

    .prologue
    const/16 v4, 0x8

    .line 89
    new-array v0, v4, [B

    const/4 v1, 0x0

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    ushr-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static toBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toBytes([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static toBytes([C)[B
    .locals 7
    .param p0, "chars"    # [C

    .prologue
    .line 68
    array-length v4, p0

    new-array v3, v4, [B

    .line 69
    .local v3, "result":[B
    const/4 v1, 0x0

    .line 70
    .local v1, "i":I
    array-length v5, p0

    const/4 v4, 0x0

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-char v0, p0, v4

    .line 71
    .local v0, "c":C
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    int-to-byte v6, v0

    aput-byte v6, v3, v2

    .line 70
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 73
    .end local v0    # "c":C
    :cond_0
    return-object v3
.end method

.method public static varargs toBytes([I)[B
    .locals 5
    .param p0, "integer"    # [I

    .prologue
    .line 54
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x4

    new-array v2, v3, [B

    .line 55
    .local v2, "result":[B
    const/4 v1, 0x0

    .line 56
    .local v1, "offset":I
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, p0, v3

    .line 57
    .local v0, "anInteger":I
    invoke-static {v0, v2, v1}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toBytes(I[BI)V

    .line 58
    add-int/lit8 v1, v1, 0x4

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "anInteger":I
    :cond_0
    return-object v2
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 124
    .local v0, "b":B
    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    and-int/lit8 v4, v0, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 131
    invoke-static {p0, p1, p2}, Lcom/coinbase/android/crypto/ByteArrayUtils;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toInteger([B)I
    .locals 1
    .param p0, "input"    # [B

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toInteger([BI)I

    move-result v0

    return v0
.end method

.method private static toInteger([BI)I
    .locals 3
    .param p0, "input"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 175
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public static toIntegerArray([BII[II)V
    .locals 3
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "output"    # [I
    .param p4, "outputOffset"    # I

    .prologue
    .line 194
    div-int/lit8 v1, p2, 0x4

    .line 198
    .local v1, "outputLen":I
    move v0, p4

    .local v0, "i":I
    :goto_0
    add-int v2, p4, v1

    if-ge v0, v2, :cond_0

    .line 199
    invoke-static {p0, p1}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toInteger([BI)I

    move-result v2

    aput v2, p3, v0

    .line 200
    add-int/lit8 p1, p1, 0x4

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method public static toIntegerArray([BII)[I
    .locals 2
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 185
    div-int/lit8 v1, p2, 0x4

    new-array v0, v1, [I

    .line 186
    .local v0, "result":[I
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toIntegerArray([BII[II)V

    .line 187
    return-object v0
.end method

.method public static xor([BI[BII)V
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "bytesToMix"    # [B
    .param p3, "mixOffset"    # I
    .param p4, "len"    # I

    .prologue
    .line 16
    add-int v0, p1, p4

    .local v0, "bytesLength":I
    move v1, p3

    .line 17
    .end local p3    # "mixOffset":I
    .local v1, "mixOffset":I
    :goto_0
    if-ge p1, v0, :cond_0

    .line 18
    aget-byte v2, p0, p1

    add-int/lit8 p3, v1, 0x1

    .end local v1    # "mixOffset":I
    .restart local p3    # "mixOffset":I
    aget-byte v3, p2, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 17
    add-int/lit8 p1, p1, 0x1

    move v1, p3

    .end local p3    # "mixOffset":I
    .restart local v1    # "mixOffset":I
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public static xor([B[B)V
    .locals 2
    .param p0, "dest"    # [B
    .param p1, "bytesToMix"    # [B

    .prologue
    const/4 v1, 0x0

    .line 27
    array-length v0, p0

    invoke-static {p0, v1, p1, v1, v0}, Lcom/coinbase/android/crypto/ByteArrayUtils;->xor([BI[BII)V

    .line 28
    return-void
.end method
