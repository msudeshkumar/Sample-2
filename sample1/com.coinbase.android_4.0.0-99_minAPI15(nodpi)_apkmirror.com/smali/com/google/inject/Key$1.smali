.class Lcom/google/inject/Key$1;
.super Ljava/lang/Object;
.source "Key.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/Key;->createToStringSupplier()Lorg/roboguice/shaded/goole/common/base/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Supplier",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/Key;


# direct methods
.method constructor <init>(Lcom/google/inject/Key;)V
    .locals 0

    .prologue
    .line 158
    .local p0, "this":Lcom/google/inject/Key$1;, "Lcom/google/inject/Key.1;"
    iput-object p1, p0, Lcom/google/inject/Key$1;->this$0:Lcom/google/inject/Key;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lcom/google/inject/Key$1;, "Lcom/google/inject/Key.1;"
    invoke-virtual {p0}, Lcom/google/inject/Key$1;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    .local p0, "this":Lcom/google/inject/Key$1;, "Lcom/google/inject/Key.1;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/Key$1;->this$0:Lcom/google/inject/Key;

    # getter for: Lcom/google/inject/Key;->typeLiteral:Lcom/google/inject/TypeLiteral;
    invoke-static {v1}, Lcom/google/inject/Key;->access$000(Lcom/google/inject/Key;)Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/Key$1;->this$0:Lcom/google/inject/Key;

    # getter for: Lcom/google/inject/Key;->annotationStrategy:Lcom/google/inject/Key$AnnotationStrategy;
    invoke-static {v1}, Lcom/google/inject/Key;->access$100(Lcom/google/inject/Key;)Lcom/google/inject/Key$AnnotationStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
