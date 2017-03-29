.class public final Lorg/roboguice/shaded/goole/common/collect/MapMaker;
.super Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$1;,
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter;,
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;,
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullConcurrentMap;,
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;,
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification;,
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

.field maximumSize:I

.field nullRemovalCause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

.field ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

.field useCustomMap:Z

.field valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 137
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;-><init>()V

    .line 117
    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    .line 118
    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    .line 119
    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->maximumSize:I

    .line 124
    iput-wide v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 125
    iput-wide v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 137
    return-void
.end method


# virtual methods
.method getConcurrencyLevel()I
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    goto :goto_0
.end method

.method getExpireAfterAccessNanos()J
    .locals 4

    .prologue
    .line 443
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    goto :goto_0
.end method

.method getExpireAfterWriteNanos()J
    .locals 4

    .prologue
    .line 400
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    goto :goto_0
.end method

.method getInitialCapacity()I
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    goto :goto_0
.end method

.method getKeyEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getKeyStrength()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method getTicker()Lorg/roboguice/shaded/goole/common/base/Ticker;
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Ticker;->systemTicker()Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Ticker;

    return-object v0
.end method

.method getValueStrength()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method makeComputingMap(Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    .local p1, "computingFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;+TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->nullRemovalCause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;Lorg/roboguice/shaded/goole/common/base/Function;)V

    :goto_0
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    return-object v0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;Lorg/roboguice/shaded/goole/common/base/Function;)V

    goto :goto_0
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 507
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->useCustomMap:Z

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getInitialCapacity()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 510
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->nullRemovalCause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_1

    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;)V

    :goto_1
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullConcurrentMap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullConcurrentMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;)V

    goto :goto_1
.end method

.method setKeyStrength(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 6
    .param p1, "strength"    # Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 270
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Key strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    .line 272
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    sget-object v3, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->SOFT:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v3, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "Soft keys are not supported"

    invoke-static {v2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 273
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_1

    .line 275
    iput-boolean v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->useCustomMap:Z

    .line 277
    :cond_1
    return-object p0

    :cond_2
    move v0, v2

    .line 270
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, -0x1

    .line 597
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 598
    .local v0, "s":Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    if-eq v1, v3, :cond_0

    .line 599
    const-string v1, "initialCapacity"

    iget v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 601
    :cond_0
    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    if-eq v1, v3, :cond_1

    .line 602
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 604
    :cond_1
    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->maximumSize:I

    if-eq v1, v3, :cond_2

    .line 605
    const-string v1, "maximumSize"

    iget v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->maximumSize:I

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 607
    :cond_2
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    .line 608
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 610
    :cond_3
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 611
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 613
    :cond_4
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_5

    .line 614
    const-string v1, "keyStrength"

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 616
    :cond_5
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_6

    .line 617
    const-string v1, "valueStrength"

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 619
    :cond_6
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    if-eqz v1, :cond_7

    .line 620
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 622
    :cond_7
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    if-eqz v1, :cond_8

    .line 623
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 625
    :cond_8
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public weakKeys()Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->WEAK:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->setKeyStrength(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method
