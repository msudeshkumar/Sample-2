.class final Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$NonTerminalMapEntry;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonTerminalMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final nextInKeyBucket:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$NonTerminalMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$NonTerminalMapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "nextInKeyBucket":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$NonTerminalMapEntry;->nextInKeyBucket:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    .line 114
    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$NonTerminalMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$NonTerminalMapEntry<TK;TV;>;"
    .local p1, "contents":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p2, "nextInKeyBucket":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;)V

    .line 118
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$NonTerminalMapEntry;->nextInKeyBucket:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    .line 119
    return-void
.end method


# virtual methods
.method getNextInKeyBucket()Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$NonTerminalMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$NonTerminalMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$NonTerminalMapEntry;->nextInKeyBucket:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    return-object v0
.end method
