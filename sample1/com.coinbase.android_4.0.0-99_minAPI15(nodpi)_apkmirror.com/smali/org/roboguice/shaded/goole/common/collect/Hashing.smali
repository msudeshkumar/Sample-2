.class final Lorg/roboguice/shaded/goole/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# static fields
.field private static MAX_TABLE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lorg/roboguice/shaded/goole/common/collect/Hashing;->MAX_TABLE_SIZE:I

    return-void
.end method

.method static closedTableSize(ID)I
    .locals 5
    .param p0, "expectedEntries"    # I
    .param p1, "loadFactor"    # D

    .prologue
    .line 59
    const/4 v1, 0x2

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 62
    .local v0, "tableSize":I
    int-to-double v2, v0

    mul-double/2addr v2, p1

    double-to-int v1, v2

    if-le p0, v1, :cond_1

    .line 63
    shl-int/lit8 v0, v0, 0x1

    .line 64
    if-lez v0, :cond_0

    move v1, v0

    .line 66
    :goto_0
    return v1

    .line 64
    :cond_0
    sget v1, Lorg/roboguice/shaded/goole/common/collect/Hashing;->MAX_TABLE_SIZE:I

    goto :goto_0

    :cond_1
    move v1, v0

    .line 66
    goto :goto_0
.end method

.method static smear(I)I
    .locals 3
    .param p0, "hashCode"    # I

    .prologue
    .line 47
    const v0, 0x1b873593

    const v1, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, p0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
