.class abstract enum Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "EntryFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_ACCESS:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_ACCESS_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

.field public static final enum STRONG_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_ACCESS:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_ACCESS_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

.field public static final enum WEAK_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

.field static final factories:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 446
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$1;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    .line 453
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$2;

    const-string v1, "STRONG_ACCESS"

    invoke-direct {v0, v1, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    .line 468
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$3;

    const-string v1, "STRONG_WRITE"

    invoke-direct {v0, v1, v5}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->STRONG_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    .line 483
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$4;

    const-string v1, "STRONG_ACCESS_WRITE"

    invoke-direct {v0, v1, v6}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    .line 500
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$5;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v7}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    .line 507
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$6;

    const-string v1, "WEAK_ACCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    .line 522
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$7;

    const-string v1, "WEAK_WRITE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->WEAK_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    .line 537
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$8;

    const-string v1, "WEAK_ACCESS_WRITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    .line 445
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v1, v0, v3

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v1, v0, v4

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->STRONG_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v1, v0, v5

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v1, v0, v6

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->WEAK_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->$VALUES:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    .line 564
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v1, v0, v3

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v1, v0, v4

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->STRONG_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v1, v0, v5

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->STRONG_ACCESS_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v1, v0, v6

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->WEAK_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->WEAK_ACCESS_WRITE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aput-object v2, v0, v1

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->factories:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/cache/LocalCache$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$1;

    .prologue
    .line 445
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getFactory(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;ZZ)Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;
    .locals 4
    .param p0, "keyStrength"    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    .param p1, "usesAccessQueue"    # Z
    .param p2, "usesWriteQueue"    # Z

    .prologue
    const/4 v1, 0x0

    .line 571
    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    if-ne p0, v2, :cond_1

    const/4 v2, 0x4

    move v3, v2

    :goto_0
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    or-int/2addr v2, v3

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int v0, v2, v1

    .line 574
    .local v0, "flags":I
    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->factories:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    aget-object v1, v1, v0

    return-object v1

    .end local v0    # "flags":I
    :cond_1
    move v3, v1

    .line 571
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 445
    const-class v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    return-object v0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->$VALUES:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;

    return-object v0
.end method


# virtual methods
.method copyAccessEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 2
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
    .line 604
    .local p1, "original":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "newEntry":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getAccessTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 606
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getPreviousInAccessQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->connectAccessOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 607
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->connectAccessOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 609
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullifyAccessOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 610
    return-void
.end method

.method copyEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 597
    .local p1, "segment":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, "original":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p3, "newNext":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->newEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method copyWriteEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 2
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
    .line 616
    .local p1, "original":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "newEntry":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setWriteTime(J)V

    .line 618
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getPreviousInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->connectWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 619
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->connectWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 621
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullifyWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 622
    return-void
.end method

.method abstract newEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .param p4    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment",
            "<TK;TV;>;TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method
