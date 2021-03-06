.class Lcom/google/inject/internal/Annotations$AnnotationChecker;
.super Ljava/lang/Object;
.source "Annotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/Annotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnnotationChecker"
.end annotation


# instance fields
.field private final annotationTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field final cache:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LoadingCache",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hasAnnotations:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "annotationTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Lcom/google/inject/internal/Annotations$AnnotationChecker$1;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Annotations$AnnotationChecker$1;-><init>(Lcom/google/inject/internal/Annotations$AnnotationChecker;)V

    iput-object v0, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker;->hasAnnotations:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    .line 223
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->newBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weakKeys()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker;->hasAnnotations:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->build(Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker;->cache:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    .line 230
    iput-object p1, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker;->annotationTypes:Ljava/util/Collection;

    .line 231
    return-void
.end method

.method static synthetic access$400(Lcom/google/inject/internal/Annotations$AnnotationChecker;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/internal/Annotations$AnnotationChecker;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker;->annotationTypes:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method hasAnnotations(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "annotated":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker;->cache:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
