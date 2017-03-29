.class final Lorg/roboguice/shaded/goole/common/cache/LongAdder;
.super Lorg/roboguice/shaded/goole/common/cache/Striped64;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/roboguice/shaded/goole/common/cache/LongAddable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/Striped64;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 13
    .param p1, "x"    # J

    .prologue
    .line 71
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->cells:[Lorg/roboguice/shaded/goole/common/cache/Striped64$Cell;

    .local v1, "as":[Lorg/roboguice/shaded/goole/common/cache/Striped64$Cell;
    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->base:J

    .local v2, "b":J
    add-long v10, v2, p1

    invoke-virtual {p0, v2, v3, v10, v11}, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->casBase(JJ)Z

    move-result v10

    if-nez v10, :cond_2

    .line 72
    .end local v2    # "b":J
    :cond_0
    const/4 v7, 0x1

    .line 73
    .local v7, "uncontended":Z
    sget-object v10, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->threadHashCode:Lorg/roboguice/shaded/goole/common/cache/Striped64$ThreadHashCode;

    invoke-virtual {v10}, Lorg/roboguice/shaded/goole/common/cache/Striped64$ThreadHashCode;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/roboguice/shaded/goole/common/cache/Striped64$HashCode;

    .local v5, "hc":Lorg/roboguice/shaded/goole/common/cache/Striped64$HashCode;
    iget v4, v5, Lorg/roboguice/shaded/goole/common/cache/Striped64$HashCode;->code:I

    .line 74
    .local v4, "h":I
    if-eqz v1, :cond_1

    array-length v6, v1

    .local v6, "n":I
    const/4 v10, 0x1

    if-lt v6, v10, :cond_1

    add-int/lit8 v10, v6, -0x1

    and-int/2addr v10, v4

    aget-object v0, v1, v10

    .local v0, "a":Lorg/roboguice/shaded/goole/common/cache/Striped64$Cell;
    if-eqz v0, :cond_1

    iget-wide v8, v0, Lorg/roboguice/shaded/goole/common/cache/Striped64$Cell;->value:J

    .local v8, "v":J
    add-long v10, v8, p1

    invoke-virtual {v0, v8, v9, v10, v11}, Lorg/roboguice/shaded/goole/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 77
    .end local v0    # "a":Lorg/roboguice/shaded/goole/common/cache/Striped64$Cell;
    .end local v6    # "n":I
    .end local v8    # "v":J
    :cond_1
    invoke-virtual {p0, p1, p2, v5, v7}, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->retryUpdate(JLorg/roboguice/shaded/goole/common/cache/Striped64$HashCode;Z)V

    .line 79
    .end local v4    # "h":I
    .end local v5    # "hc":Lorg/roboguice/shaded/goole/common/cache/Striped64$HashCode;
    .end local v7    # "uncontended":Z
    :cond_2
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method final fn(JJ)J
    .locals 3
    .param p1, "v"    # J
    .param p3, "x"    # J

    .prologue
    .line 56
    add-long v0, p1, p3

    return-wide v0
.end method

.method public increment()V
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->add(J)V

    .line 86
    return-void
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public sum()J
    .locals 8

    .prologue
    .line 105
    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->base:J

    .line 106
    .local v4, "sum":J
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->cells:[Lorg/roboguice/shaded/goole/common/cache/Striped64$Cell;

    .line 107
    .local v1, "as":[Lorg/roboguice/shaded/goole/common/cache/Striped64$Cell;
    if-eqz v1, :cond_1

    .line 108
    array-length v3, v1

    .line 109
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 110
    aget-object v0, v1, v2

    .line 111
    .local v0, "a":Lorg/roboguice/shaded/goole/common/cache/Striped64$Cell;
    if-eqz v0, :cond_0

    .line 112
    iget-wide v6, v0, Lorg/roboguice/shaded/goole/common/cache/Striped64$Cell;->value:J

    add-long/2addr v4, v6

    .line 109
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "a":Lorg/roboguice/shaded/goole/common/cache/Striped64$Cell;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    return-wide v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
