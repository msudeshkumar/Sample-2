.class Lorg/roboguice/shaded/goole/common/collect/ImmutableList$1;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractIndexedListIterator;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->listIterator(I)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractIndexedListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 348
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-direct {p0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/AbstractIndexedListIterator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
