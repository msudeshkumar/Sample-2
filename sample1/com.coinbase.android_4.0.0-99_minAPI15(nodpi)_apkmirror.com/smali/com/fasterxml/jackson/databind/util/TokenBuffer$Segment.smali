.class public final Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
.super Ljava/lang/Object;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Segment"
.end annotation


# static fields
.field private static final TOKEN_TYPES_BY_INDEX:[Lcom/fasterxml/jackson/core/JsonToken;


# instance fields
.field protected _nativeIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

.field protected _tokenTypes:J

.field protected final _tokens:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1545
    const/16 v1, 0x10

    new-array v1, v1, [Lcom/fasterxml/jackson/core/JsonToken;

    sput-object v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lcom/fasterxml/jackson/core/JsonToken;

    .line 1546
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonToken;->values()[Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1548
    .local v0, "t":[Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v2, 0xf

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1549
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1566
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    .line 1573
    return-void
.end method

.method private final _objectIdIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1776
    add-int v0, p1, p1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final _typeIdIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1775
    add-int v0, p1, p1

    return v0
.end method

.method private final assignNativeIds(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "objectId"    # Ljava/lang/Object;
    .param p3, "typeId"    # Ljava/lang/Object;

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 1751
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    .line 1753
    :cond_0
    if-eqz p2, :cond_1

    .line 1754
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_objectIdIndex(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    :cond_1
    if-eqz p3, :cond_2

    .line 1757
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_typeIdIndex(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    :cond_2
    return-void
.end method

.method private set(ILcom/fasterxml/jackson/core/JsonToken;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lcom/fasterxml/jackson/core/JsonToken;

    .prologue
    .line 1687
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    int-to-long v0, v2

    .line 1688
    .local v0, "typeCode":J
    if-lez p1, :cond_0

    .line 1689
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1691
    :cond_0
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1692
    return-void
.end method

.method private set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lcom/fasterxml/jackson/core/JsonToken;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1707
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aput-object p3, v2, p1

    .line 1708
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    int-to-long v0, v2

    .line 1709
    .local v0, "typeCode":J
    if-lez p1, :cond_0

    .line 1710
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1712
    :cond_0
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1713
    return-void
.end method

.method private set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lcom/fasterxml/jackson/core/JsonToken;
    .param p3, "objectId"    # Ljava/lang/Object;
    .param p4, "typeId"    # Ljava/lang/Object;

    .prologue
    .line 1697
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    int-to-long v0, v2

    .line 1698
    .local v0, "typeCode":J
    if-lez p1, :cond_0

    .line 1699
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1701
    :cond_0
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1702
    invoke-direct {p0, p1, p3, p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->assignNativeIds(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1703
    return-void
.end method

.method private set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lcom/fasterxml/jackson/core/JsonToken;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "objectId"    # Ljava/lang/Object;
    .param p5, "typeId"    # Ljava/lang/Object;

    .prologue
    .line 1718
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aput-object p3, v2, p1

    .line 1719
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    int-to-long v0, v2

    .line 1720
    .local v0, "typeCode":J
    if-lez p1, :cond_0

    .line 1721
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1723
    :cond_0
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1724
    invoke-direct {p0, p1, p4, p5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->assignNativeIds(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1725
    return-void
.end method


# virtual methods
.method public append(ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
    .locals 2
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lcom/fasterxml/jackson/core/JsonToken;

    .prologue
    .line 1615
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1616
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;)V

    .line 1617
    const/4 v0, 0x0

    .line 1621
    :goto_0
    return-object v0

    .line 1619
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 1620
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;)V

    .line 1621
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    goto :goto_0
.end method

.method public append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
    .locals 2
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lcom/fasterxml/jackson/core/JsonToken;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1638
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1639
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    .line 1640
    const/4 v0, 0x0

    .line 1644
    :goto_0
    return-object v0

    .line 1642
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 1643
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    .line 1644
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    goto :goto_0
.end method

.method public append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
    .locals 2
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lcom/fasterxml/jackson/core/JsonToken;
    .param p3, "objectId"    # Ljava/lang/Object;
    .param p4, "typeId"    # Ljava/lang/Object;

    .prologue
    .line 1627
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1628
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1629
    const/4 v0, 0x0

    .line 1633
    :goto_0
    return-object v0

    .line 1631
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 1632
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1633
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    goto :goto_0
.end method

.method public append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
    .locals 6
    .param p1, "index"    # I
    .param p2, "tokenType"    # Lcom/fasterxml/jackson/core/JsonToken;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "objectId"    # Ljava/lang/Object;
    .param p5, "typeId"    # Ljava/lang/Object;

    .prologue
    .line 1650
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1651
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1652
    const/4 v0, 0x0

    .line 1656
    :goto_0
    return-object v0

    .line 1654
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    .line 1655
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1656
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    goto :goto_0
.end method

.method public findObjectId(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_objectIdIndex(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public findTypeId(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_typeIdIndex(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hasIds()Z
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    return-object v0
.end method

.method public type(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1579
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    .line 1580
    .local v2, "l":J
    if-lez p1, :cond_0

    .line 1581
    shl-int/lit8 v1, p1, 0x2

    shr-long/2addr v2, v1

    .line 1583
    :cond_0
    long-to-int v1, v2

    and-int/lit8 v0, v1, 0xf

    .line 1584
    .local v0, "ix":I
    sget-object v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lcom/fasterxml/jackson/core/JsonToken;

    aget-object v1, v1, v0

    return-object v1
.end method
