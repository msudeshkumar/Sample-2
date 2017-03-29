.class public final Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final HB:[B

.field private static final HC:[C

.field protected static final _threadEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/fasterxml/jackson/core/io/JsonStringEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final _qbuf:[C

.field protected _text:Lcom/fasterxml/jackson/core/util/TextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    .line 21
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    .line 65
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 66
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    const/4 v1, 0x2

    aput-char v3, v0, v1

    .line 67
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    .line 68
    return-void
.end method

.method private _appendNamed(I[C)I
    .locals 2
    .param p1, "esc"    # I
    .param p2, "qbuf"    # [C

    .prologue
    .line 354
    const/4 v0, 0x1

    int-to-char v1, p1

    aput-char v1, p2, v0

    .line 355
    const/4 v0, 0x2

    return v0
.end method

.method private _appendNumeric(I[C)I
    .locals 3
    .param p1, "value"    # I
    .param p2, "qbuf"    # [C

    .prologue
    .line 346
    const/4 v0, 0x1

    const/16 v1, 0x75

    aput-char v1, p2, v0

    .line 348
    const/4 v0, 0x4

    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 349
    const/4 v0, 0x5

    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 350
    const/4 v0, 0x6

    return v0
.end method

.method public static getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    .locals 4

    .prologue
    .line 75
    sget-object v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 76
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/fasterxml/jackson/core/io/JsonStringEncoder;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 78
    .local v0, "enc":Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    :goto_0
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    .end local v0    # "enc":Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;-><init>()V

    .line 80
    .restart local v0    # "enc":Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    sget-object v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 82
    :cond_0
    return-object v0

    .line 76
    .end local v0    # "enc":Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public quoteAsString(Ljava/lang/String;)[C
    .locals 19
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_text:Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-object/from16 v16, v0

    .line 98
    .local v16, "textBuffer":Lcom/fasterxml/jackson/core/util/TextBuffer;
    if-nez v16, :cond_0

    .line 100
    new-instance v16, Lcom/fasterxml/jackson/core/util/TextBuffer;

    .end local v16    # "textBuffer":Lcom/fasterxml/jackson/core/util/TextBuffer;
    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .restart local v16    # "textBuffer":Lcom/fasterxml/jackson/core/util/TextBuffer;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_text:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 102
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v14

    .line 103
    .local v14, "outputBuffer":[C
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v6

    .line 104
    .local v6, "escCodes":[I
    array-length v5, v6

    .line 105
    .local v5, "escCodeCount":I
    const/4 v8, 0x0

    .line 106
    .local v8, "inPtr":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 107
    .local v10, "inputLen":I
    const/4 v12, 0x0

    .line 110
    .local v12, "outPtr":I
    :goto_0
    if-ge v8, v10, :cond_4

    .line 113
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 114
    .local v2, "c":C
    if-ge v2, v5, :cond_2

    aget v17, v6, v2

    if-eqz v17, :cond_2

    .line 127
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "inPtr":I
    .local v9, "inPtr":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 128
    .local v3, "d":C
    aget v4, v6, v3

    .line 129
    .local v4, "escCode":I
    if-gez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v11

    .line 133
    .local v11, "length":I
    :goto_2
    add-int v17, v12, v11

    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 134
    array-length v0, v14

    move/from16 v17, v0

    sub-int v7, v17, v12

    .line 135
    .local v7, "first":I
    if-lez v7, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v14, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v14

    .line 139
    sub-int v15, v11, v7

    .line 140
    .local v15, "second":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v7, v14, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    move v12, v15

    .end local v7    # "first":I
    .end local v15    # "second":I
    :goto_3
    move v8, v9

    .line 146
    .end local v9    # "inPtr":I
    .restart local v8    # "inPtr":I
    goto :goto_0

    .line 117
    .end local v3    # "d":C
    .end local v4    # "escCode":I
    .end local v11    # "length":I
    :cond_2
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v12, v0, :cond_3

    .line 118
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v14

    .line 119
    const/4 v12, 0x0

    .line 121
    :cond_3
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "outPtr":I
    .local v13, "outPtr":I
    aput-char v2, v14, v12

    .line 122
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v10, :cond_5

    move v12, v13

    .line 147
    .end local v2    # "c":C
    .end local v13    # "outPtr":I
    .restart local v12    # "outPtr":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 148
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v17

    return-object v17

    .end local v12    # "outPtr":I
    .restart local v2    # "c":C
    .restart local v13    # "outPtr":I
    :cond_5
    move v12, v13

    .line 125
    .end local v13    # "outPtr":I
    .restart local v12    # "outPtr":I
    goto :goto_1

    .line 129
    .end local v8    # "inPtr":I
    .restart local v3    # "d":C
    .restart local v4    # "escCode":I
    .restart local v9    # "inPtr":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v11

    goto :goto_2

    .line 143
    .restart local v11    # "length":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v14, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    add-int/2addr v12, v11

    goto :goto_3
.end method
