.class public final Lorg/roboguice/shaded/goole/common/base/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/base/Stopwatch$1;
    }
.end annotation


# instance fields
.field private elapsedNanos:J

.field private isRunning:Z

.field private startTick:J

.field private final ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Ticker;->systemTicker()Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;-><init>(Lorg/roboguice/shaded/goole/common/base/Ticker;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/roboguice/shaded/goole/common/base/Ticker;)V
    .locals 1
    .param p1, "ticker"    # Lorg/roboguice/shaded/goole/common/base/Ticker;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const-string v0, "ticker"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Ticker;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    .line 144
    return-void
.end method

.method private static abbreviate(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 2
    .param p0, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 250
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Stopwatch$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 266
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 252
    :pswitch_0
    const-string v0, "ns"

    .line 264
    :goto_0
    return-object v0

    .line 254
    :pswitch_1
    const-string v0, "\u03bcs"

    goto :goto_0

    .line 256
    :pswitch_2
    const-string v0, "ms"

    goto :goto_0

    .line 258
    :pswitch_3
    const-string v0, "s"

    goto :goto_0

    .line 260
    :pswitch_4
    const-string v0, "min"

    goto :goto_0

    .line 262
    :pswitch_5
    const-string v0, "h"

    goto :goto_0

    .line 264
    :pswitch_6
    const-string v0, "d"

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static chooseUnit(J)Ljava/util/concurrent/TimeUnit;
    .locals 4
    .param p0, "nanos"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 228
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 229
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 246
    :goto_0
    return-object v0

    .line 231
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 232
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 234
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 235
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 237
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 238
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 240
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 241
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 243
    :cond_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 244
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 246
    :cond_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0
.end method

.method public static createUnstarted()Lorg/roboguice/shaded/goole/common/base/Stopwatch;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;-><init>()V

    return-object v0
.end method

.method private elapsedNanos()J
    .locals 4

    .prologue
    .line 196
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->startTick:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsedNanos:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsedNanos:J

    goto :goto_0
.end method


# virtual methods
.method public elapsed(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "desiredUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 210
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsedNanos()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public start()Lorg/roboguice/shaded/goole/common/base/Stopwatch;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 162
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->isRunning:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "This stopwatch is already running."

    invoke-static {v0, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 163
    iput-boolean v1, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->isRunning:Z

    .line 164
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->startTick:J

    .line 165
    return-object p0

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 218
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsedNanos()J

    move-result-wide v0

    .line 220
    .local v0, "nanos":J
    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->chooseUnit(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    .line 221
    .local v2, "unit":Ljava/util/concurrent/TimeUnit;
    long-to-double v6, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v3, v8, v9, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    long-to-double v8, v8

    div-double v4, v6, v8

    .line 224
    .local v4, "value":D
    const-string v3, "%.4g %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->abbreviate(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
