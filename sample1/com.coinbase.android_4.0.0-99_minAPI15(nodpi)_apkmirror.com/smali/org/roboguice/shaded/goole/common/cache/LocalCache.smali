.class Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.super Ljava/util/AbstractMap;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntrySet;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractCacheSet;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryIterator;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteThroughEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueIterator;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeyIterator;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$HashIterator;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedStrongValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedSoftValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedWeakValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$SoftValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessWriteEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractReferenceEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;,
        Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final DISCARDING_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final UNSET:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final logger:Ljava/util/logging/Logger;

.field static final sameThreadExecutor:Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;


# instance fields
.field final concurrencyLevel:I

.field final defaultLoader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
            "<-TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final entryFactory:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

.field final keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field final maxWeight:J

.field final refreshNanos:J

.field final removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/RemovalListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final removalNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalNotification",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

.field final valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/Weigher",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const-class v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    .line 160
    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->sameThreadExecutor:Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    .line 690
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$1;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$1;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->UNSET:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    .line 1021
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$2;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$2;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V
    .locals 16
    .param p2    # Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder",
            "<-TK;-TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    .local p1, "builder":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<-TK;-TV;>;"
    .local p2, "loader":Lorg/roboguice/shaded/goole/common/cache/CacheLoader;, "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<-TK;TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractMap;-><init>()V

    .line 240
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getConcurrencyLevel()I

    move-result v12

    const/high16 v13, 0x10000

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->concurrencyLevel:I

    .line 242
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getKeyStrength()Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    .line 243
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getValueStrength()Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    .line 245
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getKeyEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 246
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getValueEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 248
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getMaximumWeight()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    .line 249
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getWeigher()Lorg/roboguice/shaded/goole/common/cache/Weigher;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    .line 250
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getExpireAfterAccessNanos()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterAccessNanos:J

    .line 251
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getExpireAfterWriteNanos()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterWriteNanos:J

    .line 252
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getRefreshNanos()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->refreshNanos:J

    .line 254
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getRemovalListener()Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    sget-object v13, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    if-ne v12, v13, :cond_2

    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v12

    :goto_0
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    .line 259
    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsTime()Z

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getTicker(Z)Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesAccessEntries()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesWriteEntries()Z

    move-result v14

    invoke-static {v12, v13, v14}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->getFactory(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;ZZ)Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->entryFactory:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    .line 261
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getStatsCounterSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v12

    invoke-interface {v12}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    .line 262
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->defaultLoader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    .line 264
    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getInitialCapacity()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 265
    .local v3, "initialCapacity":I
    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->evictsBySize()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->customWeigher()Z

    move-result v12

    if-nez v12, :cond_0

    .line 266
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    long-to-int v12, v12

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 274
    :cond_0
    const/4 v10, 0x0

    .line 275
    .local v10, "segmentShift":I
    const/4 v9, 0x1

    .line 277
    .local v9, "segmentCount":I
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->concurrencyLevel:I

    if-ge v9, v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->evictsBySize()Z

    move-result v12

    if-eqz v12, :cond_1

    mul-int/lit8 v12, v9, 0x14

    int-to-long v12, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    cmp-long v12, v12, v14

    if-gtz v12, :cond_3

    .line 278
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 279
    shl-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 255
    .end local v3    # "initialCapacity":I
    .end local v9    # "segmentCount":I
    .end local v10    # "segmentShift":I
    :cond_2
    new-instance v12, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v12}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    .line 281
    .restart local v3    # "initialCapacity":I
    .restart local v9    # "segmentCount":I
    .restart local v10    # "segmentShift":I
    :cond_3
    rsub-int/lit8 v12, v10, 0x20

    move-object/from16 v0, p0

    iput v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentShift:I

    .line 282
    add-int/lit8 v12, v9, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentMask:I

    .line 284
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->newSegmentArray(I)[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    .line 286
    div-int v8, v3, v9

    .line 287
    .local v8, "segmentCapacity":I
    mul-int v12, v8, v9

    if-ge v12, v3, :cond_4

    .line 288
    add-int/lit8 v8, v8, 0x1

    .line 291
    :cond_4
    const/4 v11, 0x1

    .line 292
    .local v11, "segmentSize":I
    :goto_2
    if-ge v11, v8, :cond_5

    .line 293
    shl-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 296
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->evictsBySize()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 298
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    int-to-long v14, v9

    div-long/2addr v12, v14

    const-wide/16 v14, 0x1

    add-long v4, v12, v14

    .line 299
    .local v4, "maxSegmentWeight":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    int-to-long v14, v9

    rem-long v6, v12, v14

    .line 300
    .local v6, "remainder":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    array-length v12, v12

    if-ge v2, v12, :cond_8

    .line 301
    int-to-long v12, v2

    cmp-long v12, v12, v6

    if-nez v12, :cond_6

    .line 302
    const-wide/16 v12, 0x1

    sub-long/2addr v4, v12

    .line 304
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getStatsCounterSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v12

    invoke-interface {v12}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v5, v12}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->createSegment(IJLorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v12

    aput-object v12, v13, v2

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 308
    .end local v2    # "i":I
    .end local v4    # "maxSegmentWeight":J
    .end local v6    # "remainder":J
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    array-length v12, v12

    if-ge v2, v12, :cond_8

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    const-wide/16 v14, -0x1

    invoke-virtual/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getStatsCounterSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v12

    invoke-interface {v12}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15, v12}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->createSegment(IJLorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v12

    aput-object v12, v13, v2

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 313
    :cond_8
    return-void
.end method

.method static connectAccessOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1921
    .local p0, "previous":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setNextInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1922
    invoke-interface {p1, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setPreviousInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1923
    return-void
.end method

.method static connectWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1934
    .local p0, "previous":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setNextInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1935
    invoke-interface {p1, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setPreviousInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1936
    return-void
.end method

.method static discardingQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1053
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-object v0
.end method

.method static nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1018
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;

    return-object v0
.end method

.method static nullifyAccessOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1927
    .local p0, "nulled":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 1928
    .local v0, "nullEntry":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setNextInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1929
    invoke-interface {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setPreviousInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1930
    return-void
.end method

.method static nullifyWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 1940
    .local p0, "nulled":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 1941
    .local v0, "nullEntry":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setNextInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1942
    invoke-interface {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setPreviousInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1943
    return-void
.end method

.method static rehash(I)I
    .locals 2
    .param p0, "h"    # I

    .prologue
    .line 1799
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 1800
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 1801
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 1802
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 1803
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 1804
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method static unset()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 736
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->UNSET:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .prologue
    .line 3857
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    .local v0, "arr$":[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 3858
    .local v3, "segment":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<**>;"
    invoke-virtual {v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3857
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3860
    .end local v3    # "segment":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<**>;"
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 4203
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    .local v0, "arr$":[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 4204
    .local v3, "segment":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->clear()V

    .line 4203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4206
    .end local v3    # "segment":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<TK;TV;>;"
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4093
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 4094
    const/4 v1, 0x0

    .line 4097
    :goto_0
    return v1

    .line 4096
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4097
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 24
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4103
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 4104
    const/16 v21, 0x0

    .line 4138
    :goto_0
    return v21

    .line 4112
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/roboguice/shaded/goole/common/base/Ticker;->read()J

    move-result-wide v14

    .line 4113
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-object/from16 v16, v0

    .line 4114
    .local v16, "segments":[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<TK;TV;>;"
    const-wide/16 v10, -0x1

    .line 4115
    .local v10, "last":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ge v7, v0, :cond_5

    .line 4116
    const-wide/16 v18, 0x0

    .line 4117
    .local v18, "sum":J
    move-object/from16 v4, v16

    .local v4, "arr$":[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v12, :cond_4

    aget-object v13, v4, v8

    .line 4120
    .local v13, "segment":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<TK;TV;>;"
    iget v5, v13, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    .line 4122
    .local v5, "c":I
    iget-object v0, v13, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v17, v0

    .line 4123
    .local v17, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_3

    .line 4124
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .local v6, "e":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_4
    if-eqz v6, :cond_2

    .line 4125
    invoke-virtual {v13, v6, v14, v15}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->getLiveValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v20

    .line 4126
    .local v20, "v":Ljava/lang/Object;, "TV;"
    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 4127
    const/16 v21, 0x1

    goto :goto_0

    .line 4124
    :cond_1
    invoke-interface {v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNext()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v6

    goto :goto_4

    .line 4123
    .end local v20    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 4131
    .end local v6    # "e":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_3
    iget v0, v13, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v18, v18, v22

    .line 4117
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 4133
    .end local v5    # "c":I
    .end local v9    # "j":I
    .end local v13    # "segment":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v17    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    :cond_4
    cmp-long v21, v18, v10

    if-nez v21, :cond_6

    .line 4138
    .end local v4    # "arr$":[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    .end local v18    # "sum":J
    :cond_5
    const/16 v21, 0x0

    goto :goto_0

    .line 4136
    .restart local v4    # "arr$":[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    .restart local v8    # "i$":I
    .restart local v12    # "len$":I
    .restart local v18    # "sum":J
    :cond_6
    move-wide/from16 v10, v18

    .line 4115
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method createSegment(IJLorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "maxSegmentWeight"    # J
    .param p4, "statsCounter"    # Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1874
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;IJLorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;)V

    return-object v1
.end method

.method customWeigher()Z
    .locals 2

    .prologue
    .line 320
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4239
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->entrySet:Ljava/util/Set;

    .line 4240
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method evictsBySize()Z
    .locals 4

    .prologue
    .line 316
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method expiresAfterAccess()Z
    .locals 4

    .prologue
    .line 332
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterAccessNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method expiresAfterWrite()Z
    .locals 4

    .prologue
    .line 328
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3913
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 3914
    const/4 v1, 0x0

    .line 3917
    :goto_0
    return-object v1

    .line 3916
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3917
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method get(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 3933
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "loader":Lorg/roboguice/shaded/goole/common/cache/CacheLoader;, "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<-TK;TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3934
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    const/4 v3, 0x1

    .line 3922
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3923
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 3924
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_0

    .line 3925
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2, v3}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 3929
    :goto_0
    return-object v1

    .line 3927
    :cond_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->globalStatsCounter:Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2, v3}, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    goto :goto_0
.end method

.method getLiveValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;
    .locals 4
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 1885
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1896
    :cond_0
    :goto_0
    return-object v0

    .line 1888
    :cond_1
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1889
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_2

    move-object v0, v1

    .line 1890
    goto :goto_0

    .line 1893
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->isExpired(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1894
    goto :goto_0
.end method

.method getOrLoad(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 3938
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->defaultLoader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->get(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1837
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1838
    .local v0, "h":I
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->rehash(I)I

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 3873
    const-wide/16 v2, 0x0

    .line 3874
    .local v2, "sum":J
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    .line 3875
    .local v1, "segments":[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 3876
    aget-object v5, v1, v0

    iget v5, v5, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    if-eqz v5, :cond_1

    .line 3893
    :cond_0
    :goto_1
    return v4

    .line 3879
    :cond_1
    aget-object v5, v1, v0

    iget v5, v5, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 3875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3882
    :cond_2
    cmp-long v5, v2, v8

    if-eqz v5, :cond_4

    .line 3883
    const/4 v0, 0x0

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 3884
    aget-object v5, v1, v0

    iget v5, v5, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    if-nez v5, :cond_0

    .line 3887
    aget-object v5, v1, v0

    iget v5, v5, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 3883
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3889
    :cond_3
    cmp-long v5, v2, v8

    if-nez v5, :cond_0

    .line 3893
    :cond_4
    const/4 v4, 0x1

    goto :goto_1
.end method

.method isExpired(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;J)Z
    .locals 6
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/4 v0, 0x1

    .line 1905
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getAccessTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterAccessNanos:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 1914
    :cond_0
    :goto_0
    return v0

    .line 1910
    :cond_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterWriteNanos:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1914
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4220
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keySet:Ljava/util/Set;

    .line 4221
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method longSize()J
    .locals 6

    .prologue
    .line 3897
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    .line 3898
    .local v1, "segments":[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<TK;TV;>;"
    const-wide/16 v2, 0x0

    .line 3899
    .local v2, "sum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 3900
    aget-object v4, v1, v0

    iget v4, v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 3899
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3902
    :cond_0
    return-wide v2
.end method

.method final newSegmentArray(I)[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    .locals 1
    .param p1, "ssize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1963
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    new-array v0, p1, [Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    return-object v0
.end method

.method processPendingNotifications()V
    .locals 5

    .prologue
    .line 1952
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/cache/RemovalNotification;

    .local v1, "notification":Lorg/roboguice/shaded/goole/common/cache/RemovalNotification;, "Lorg/roboguice/shaded/goole/common/cache/RemovalNotification<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 1954
    :try_start_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    invoke-interface {v2, v1}, Lorg/roboguice/shaded/goole/common/cache/RemovalListener;->onRemoval(Lorg/roboguice/shaded/goole/common/cache/RemovalNotification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1955
    :catch_0
    move-exception v0

    .line 1956
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception thrown by removal listener"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1959
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4143
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4144
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4145
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4146
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4159
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4160
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4162
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4151
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4152
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4153
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4154
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method reclaimKey(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1848
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    .line 1849
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->reclaimKey(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;I)Z

    .line 1850
    return-void
.end method

.method reclaimValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1842
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    .local p1, "valueReference":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->getEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 1843
    .local v0, "entry":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    .line 1844
    .local v1, "hash":I
    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->reclaimValue(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)Z

    .line 1845
    return-void
.end method

.method recordsAccess()Z
    .locals 1

    .prologue
    .line 352
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    return v0
.end method

.method recordsTime()Z
    .locals 1

    .prologue
    .line 356
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method recordsWrite()Z
    .locals 1

    .prologue
    .line 348
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->refreshes()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method refreshes()Z
    .locals 4

    .prologue
    .line 336
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->refreshNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 4166
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 4167
    const/4 v1, 0x0

    .line 4170
    :goto_0
    return-object v1

    .line 4169
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4170
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4175
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4176
    :cond_0
    const/4 v1, 0x0

    .line 4179
    :goto_0
    return v1

    .line 4178
    :cond_1
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4179
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4195
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4196
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4197
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4198
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 4184
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4185
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4186
    if-nez p2, :cond_0

    .line 4187
    const/4 v1, 0x0

    .line 4190
    :goto_0
    return v1

    .line 4189
    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4190
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method segmentFor(I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;
    .locals 3
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1869
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segments:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;

    iget v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 3907
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->longSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method usesAccessEntries()Z
    .locals 1

    .prologue
    .line 364
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method usesAccessQueue()Z
    .locals 1

    .prologue
    .line 340
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method usesKeyReferences()Z
    .locals 2

    .prologue
    .line 368
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method usesValueReferences()Z
    .locals 2

    .prologue
    .line 372
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method usesWriteEntries()Z
    .locals 1

    .prologue
    .line 360
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->usesWriteQueue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method usesWriteQueue()Z
    .locals 1

    .prologue
    .line 344
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 4229
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->values:Ljava/util/Collection;

    .line 4230
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->values:Ljava/util/Collection;

    goto :goto_0
.end method
