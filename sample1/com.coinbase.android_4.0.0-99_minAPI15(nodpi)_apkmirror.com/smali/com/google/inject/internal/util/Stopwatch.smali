.class public final Lcom/google/inject/internal/util/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/google/inject/internal/util/Stopwatch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/util/Stopwatch;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/inject/internal/util/Stopwatch;->start:J

    return-void
.end method


# virtual methods
.method public reset()J
    .locals 6

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 61
    .local v2, "now":J
    iget-wide v4, p0, Lcom/google/inject/internal/util/Stopwatch;->start:J

    sub-long v0, v2, v4

    .line 62
    .local v0, "l":J
    iput-wide v2, p0, Lcom/google/inject/internal/util/Stopwatch;->start:J

    .line 63
    return-wide v0
.end method

.method public resetAndLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/google/inject/internal/util/Stopwatch;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/util/Stopwatch;->reset()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    return-void
.end method
