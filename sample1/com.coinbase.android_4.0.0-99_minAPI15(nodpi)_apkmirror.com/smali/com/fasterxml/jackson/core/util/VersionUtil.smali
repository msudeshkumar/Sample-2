.class public Lcom/fasterxml/jackson/core/util/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# static fields
.field private static final V_SEP:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "[-_./;:]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/util/VersionUtil;->V_SEP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static parseVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/core/Version;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "artifactId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 179
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 180
    sget-object v0, Lcom/fasterxml/jackson/core/util/VersionUtil;->V_SEP:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "parts":[Ljava/lang/String;
    new-instance v0, Lcom/fasterxml/jackson/core/Version;

    aget-object v1, v7, v3

    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v1

    array-length v2, v7

    if-le v2, v5, :cond_2

    aget-object v2, v7, v5

    invoke-static {v2}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v2

    :goto_0
    array-length v5, v7

    if-le v5, v6, :cond_0

    aget-object v3, v7, v6

    invoke-static {v3}, Lcom/fasterxml/jackson/core/util/VersionUtil;->parseVersionPart(Ljava/lang/String;)I

    move-result v3

    :cond_0
    array-length v5, v7

    if-le v5, v8, :cond_1

    aget-object v4, v7, v8

    :cond_1
    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/Version;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v7    # "parts":[Ljava/lang/String;
    :goto_1
    return-object v0

    .restart local v7    # "parts":[Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 181
    goto :goto_0

    .end local v7    # "parts":[Ljava/lang/String;
    :cond_3
    move-object v0, v4

    .line 187
    goto :goto_1
.end method

.method protected static parseVersionPart(Ljava/lang/String;)I
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, "number":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 193
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 194
    .local v0, "c":C
    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    const/16 v4, 0x30

    if-ge v0, v4, :cond_1

    .line 197
    .end local v0    # "c":C
    :cond_0
    return v3

    .line 195
    .restart local v0    # "c":C
    :cond_1
    mul-int/lit8 v4, v3, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v3, v4, v5

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final throwInternal()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: this code path should never get executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
