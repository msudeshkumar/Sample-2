.class public final Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
.super Ljava/lang/Object;
.source "CacheBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;,
        Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final CACHE_STATS_COUNTER:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<",
            "Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field static final EMPTY_STATS:Lorg/roboguice/shaded/goole/common/cache/CacheStats;

.field static final NULL_STATS_COUNTER:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<+",
            "Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field static final NULL_TICKER:Lorg/roboguice/shaded/goole/common/base/Ticker;

.field private static final logger:Ljava/util/logging/Logger;


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

.field keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field maximumSize:J

.field maximumWeight:J

.field refreshNanos:J

.field removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/RemovalListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field statsCounterSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<+",
            "Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field strictParsing:Z

.field ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

.field valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/Weigher",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const-wide/16 v2, 0x0

    .line 159
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$1;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$1;-><init>()V

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Supplier;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 181
    new-instance v1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    move-wide v10, v2

    move-wide v12, v2

    invoke-direct/range {v1 .. v13}, Lorg/roboguice/shaded/goole/common/cache/CacheStats;-><init>(JJJJJJ)V

    sput-object v1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->EMPTY_STATS:Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    .line 183
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$2;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$2;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 207
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$3;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$3;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->NULL_TICKER:Lorg/roboguice/shaded/goole/common/base/Ticker;

    .line 214
    const-class v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->strictParsing:Z

    .line 220
    iput v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

    .line 221
    iput v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 222
    iput-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    .line 223
    iput-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    .line 229
    iput-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 230
    iput-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 231
    iput-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->refreshNanos:J

    .line 239
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->statsCounterSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 242
    return-void
.end method

.method private checkNonLoadingCache()V
    .locals 4

    .prologue
    .line 811
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 812
    return-void

    .line 811
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkWeightWithWeigher()V
    .locals 6

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    .line 815
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    if-nez v2, :cond_2

    .line 816
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :goto_0
    const-string v1, "maximumWeight requires weigher"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 826
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 816
    goto :goto_0

    .line 818
    :cond_2
    iget-boolean v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->strictParsing:Z

    if-eqz v2, :cond_4

    .line 819
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    :goto_2
    const-string v1, "weigher requires maximumWeight"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 821
    :cond_4
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 822
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static newBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lorg/roboguice/shaded/goole/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lorg/roboguice/shaded/goole/common/cache/Cache",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 806
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->checkNonLoadingCache()V

    .line 807
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;)V

    return-object v0
.end method

.method public build(Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/cache/LoadingCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
            "<-TK1;TV1;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LoadingCache",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "loader":Lorg/roboguice/shaded/goole/common/cache/CacheLoader;, "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<-TK1;TV1;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 789
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalLoadingCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V

    return-object v0
.end method

.method getConcurrencyLevel()I
    .locals 2

    .prologue
    .line 383
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    goto :goto_0
.end method

.method getExpireAfterAccessNanos()J
    .locals 4

    .prologue
    .line 649
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    goto :goto_0
.end method

.method getExpireAfterWriteNanos()J
    .locals 4

    .prologue
    .line 615
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    goto :goto_0
.end method

.method getInitialCapacity()I
    .locals 2

    .prologue
    .line 341
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

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
    .line 300
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getKeyStrength()Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->defaultEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    .locals 2

    .prologue
    .line 529
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getMaximumWeight()J
    .locals 4

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 492
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    goto :goto_0
.end method

.method getRefreshNanos()J
    .locals 4

    .prologue
    .line 689
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->refreshNanos:J

    goto :goto_0
.end method

.method getRemovalListener()Lorg/roboguice/shaded/goole/common/cache/RemovalListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalListener",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$NullListener;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    return-object v0
.end method

.method getStatsCounterSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<+",
            "Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->statsCounterSupplier:Lorg/roboguice/shaded/goole/common/base/Supplier;

    return-object v0
.end method

.method getTicker(Z)Lorg/roboguice/shaded/goole/common/base/Ticker;
    .locals 1
    .param p1, "recordsTime"    # Z

    .prologue
    .line 708
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    .line 711
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Ticker;->systemTicker()Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->NULL_TICKER:Lorg/roboguice/shaded/goole/common/base/Ticker;

    goto :goto_0
.end method

.method getValueEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;
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
    .line 319
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->getValueStrength()Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->defaultEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Equivalence;

    return-object v0
.end method

.method getValueStrength()Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    .locals 2

    .prologue
    .line 584
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getWeigher()Lorg/roboguice/shaded/goole/common/cache/Weigher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lorg/roboguice/shaded/goole/common/cache/Weigher",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/Weigher;

    return-object v0
.end method

.method public maximumSize(J)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 11
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 402
    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "maximum weight was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "maximum size can not be combined with weigher"

    invoke-static {v0, v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 407
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_3

    :goto_3
    const-string v0, "maximum size must not be negative"

    invoke-static {v1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 408
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    .line 409
    return-object p0

    :cond_0
    move v0, v2

    .line 402
    goto :goto_0

    :cond_1
    move v0, v2

    .line 404
    goto :goto_1

    :cond_2
    move v0, v2

    .line 406
    goto :goto_2

    :cond_3
    move v1, v2

    .line 407
    goto :goto_3
.end method

.method public removalListener(Lorg/roboguice/shaded/goole/common/cache/RemovalListener;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalListener",
            "<-TK1;-TV1;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder",
            "<TK1;TV1;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 738
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "listener":Lorg/roboguice/shaded/goole/common/cache/RemovalListener;, "Lorg/roboguice/shaded/goole/common/cache/RemovalListener<-TK1;-TV1;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(Z)V

    .line 742
    move-object v0, p0

    .line 743
    .local v0, "me":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK1;TV1;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    iput-object v1, v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    .line 744
    return-object v0

    .line 738
    .end local v0    # "me":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK1;TV1;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setKeyStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 5
    .param p1, "strength"    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 523
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Key strength was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    .line 525
    return-object p0

    :cond_0
    move v0, v2

    .line 523
    goto :goto_0
.end method

.method setValueStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 5
    .param p1, "strength"    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;",
            ")",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 578
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Value strength was already set to %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 579
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    .line 580
    return-object p0

    :cond_0
    move v0, v2

    .line 578
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v3, -0x1

    const-wide/16 v6, -0x1

    .line 834
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 835
    .local v0, "s":Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    iget v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

    if-eq v1, v3, :cond_0

    .line 836
    const-string v1, "initialCapacity"

    iget v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->initialCapacity:I

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 838
    :cond_0
    iget v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    if-eq v1, v3, :cond_1

    .line 839
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel:I

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 841
    :cond_1
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    .line 842
    const-string v1, "maximumSize"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 844
    :cond_2
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    .line 845
    const-string v1, "maximumWeight"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 847
    :cond_3
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 848
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 850
    :cond_4
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_5

    .line 851
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 853
    :cond_5
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_6

    .line 854
    const-string v1, "keyStrength"

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 856
    :cond_6
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_7

    .line 857
    const-string v1, "valueStrength"

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 859
    :cond_7
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    if-eqz v1, :cond_8

    .line 860
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 862
    :cond_8
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    if-eqz v1, :cond_9

    .line 863
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 865
    :cond_9
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    if-eqz v1, :cond_a

    .line 866
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 868
    :cond_a
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public weakKeys()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->setKeyStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 550
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->setValueStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method
