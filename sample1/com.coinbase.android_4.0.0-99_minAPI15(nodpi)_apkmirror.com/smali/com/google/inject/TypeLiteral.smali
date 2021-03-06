.class public Lcom/google/inject/TypeLiteral;
.super Ljava/lang/Object;
.source "TypeLiteral.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    .line 80
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    .line 81
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/inject/TypeLiteral;->hashCode:I

    .line 82
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 88
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "type"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    .line 90
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    .line 91
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/inject/TypeLiteral;->hashCode:I

    .line 92
    return-void
.end method

.method static fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/inject/TypeLiteral;

    invoke-static {p0}, Lcom/google/inject/TypeLiteral;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/TypeLiteral;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/inject/TypeLiteral;

    invoke-direct {v0, p0}, Lcom/google/inject/TypeLiteral;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/google/inject/TypeLiteral;

    invoke-direct {v0, p0}, Lcom/google/inject/TypeLiteral;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/google/inject/internal/MoreTypes;->getGenericSuperclass(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 100
    .local v1, "superclass":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 101
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Missing type parameter."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, v1

    .line 103
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 104
    .local v0, "parameterized":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2
.end method

.method private resolveAll([Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 3
    .param p1, "types"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    array-length v2, p1

    new-array v0, v2, [Lcom/google/inject/TypeLiteral;

    .line 171
    .local v0, "result":[Lcom/google/inject/TypeLiteral;, "[Lcom/google/inject/TypeLiteral<*>;"
    const/4 v1, 0x0

    .local v1, "t":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 172
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/inject/TypeLiteral;->resolve(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v2

    aput-object v2, v0, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 145
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    instance-of v0, p1, Lcom/google/inject/TypeLiteral;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/google/inject/TypeLiteral;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/google/inject/internal/MoreTypes;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExceptionTypes(Ljava/lang/reflect/Member;)Ljava/util/List;
    .locals 8
    .param p1, "methodOrConstructor"    # Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 311
    instance-of v3, p1, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 312
    check-cast v2, Ljava/lang/reflect/Method;

    .line 313
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v4, "%s is not defined by a supertype of %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    iget-object v6, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 327
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .local v1, "genericExceptionTypes":[Ljava/lang/reflect/Type;
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/inject/TypeLiteral;->resolveAll([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 317
    .end local v1    # "genericExceptionTypes":[Ljava/lang/reflect/Type;
    :cond_0
    instance-of v3, p1, Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 318
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 319
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v4, "%s does not construct a supertype of %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    iget-object v6, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 323
    .restart local v1    # "genericExceptionTypes":[Ljava/lang/reflect/Type;
    goto :goto_0

    .line 324
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "genericExceptionTypes":[Ljava/lang/reflect/Type;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a method or a constructor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getFieldType(Ljava/lang/reflect/Field;)Lcom/google/inject/TypeLiteral;
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not defined by a supertype of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/TypeLiteral;->resolve(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;
    .locals 8
    .param p1, "methodOrConstructor"    # Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 283
    instance-of v3, p1, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 284
    check-cast v2, Ljava/lang/reflect/Method;

    .line 285
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v4, "%s is not defined by a supertype of %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    iget-object v6, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 299
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .local v1, "genericParameterTypes":[Ljava/lang/reflect/Type;
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/inject/TypeLiteral;->resolveAll([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 289
    .end local v1    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    :cond_0
    instance-of v3, p1, Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 290
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 291
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v4, "%s does not construct a supertype of %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    iget-object v6, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 295
    .restart local v1    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    goto :goto_0

    .line 296
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a method or a constructor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType(Ljava/lang/reflect/Method;)Lcom/google/inject/TypeLiteral;
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not defined by a supertype of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/TypeLiteral;->resolve(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    return-object v0
.end method

.method public getSupertype(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    .local p1, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not a supertype of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lcom/google/inject/internal/MoreTypes;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/TypeLiteral;->resolve(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    iget v0, p0, Lcom/google/inject/TypeLiteral;->hashCode:I

    return v0
.end method

.method final providerType()Lcom/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/TypeLiteral",
            "<",
            "Lcom/google/inject/Provider",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/util/Types;->providerOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    return-object v0
.end method

.method resolve(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;
    .locals 1
    .param p1, "toResolve"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    return-object v0
.end method

.method resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 17
    .param p1, "toResolve"    # Ljava/lang/reflect/Type;

    .prologue
    .line 187
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    :cond_0
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v15, :cond_2

    move-object/from16 v8, p1

    .line 188
    check-cast v8, Ljava/lang/reflect/TypeVariable;

    .line 189
    .local v8, "original":Ljava/lang/reflect/TypeVariable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Lcom/google/inject/internal/MoreTypes;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 190
    move-object/from16 v0, p1

    if-ne v0, v8, :cond_0

    move-object/from16 v8, p1

    .line 243
    .end local v8    # "original":Ljava/lang/reflect/TypeVariable;
    :cond_1
    :goto_0
    return-object v8

    .line 194
    :cond_2
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v15, :cond_3

    move-object/from16 v8, p1

    .line 195
    check-cast v8, Ljava/lang/reflect/GenericArrayType;

    .line 196
    .local v8, "original":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v8}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 197
    .local v3, "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 198
    .local v6, "newComponentType":Ljava/lang/reflect/Type;
    if-eq v3, v6, :cond_1

    invoke-static {v6}, Lcom/google/inject/util/Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object v8

    goto :goto_0

    .line 202
    .end local v3    # "componentType":Ljava/lang/reflect/Type;
    .end local v6    # "newComponentType":Ljava/lang/reflect/Type;
    .end local v8    # "original":Ljava/lang/reflect/GenericArrayType;
    :cond_3
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_8

    move-object/from16 v8, p1

    .line 203
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 204
    .local v8, "original":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 205
    .local v11, "ownerType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 206
    .local v7, "newOwnerType":Ljava/lang/reflect/Type;
    if-eq v7, v11, :cond_6

    const/4 v2, 0x1

    .line 208
    .local v2, "changed":Z
    :goto_1
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 209
    .local v1, "args":[Ljava/lang/reflect/Type;
    const/4 v13, 0x0

    .local v13, "t":I
    array-length v4, v1

    .local v4, "length":I
    :goto_2
    if-ge v13, v4, :cond_7

    .line 210
    aget-object v15, v1, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 211
    .local v12, "resolvedTypeArgument":Ljava/lang/reflect/Type;
    aget-object v15, v1, v13

    if-eq v12, v15, :cond_5

    .line 212
    if-nez v2, :cond_4

    .line 213
    invoke-virtual {v1}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "args":[Ljava/lang/reflect/Type;
    check-cast v1, [Ljava/lang/reflect/Type;

    .line 214
    .restart local v1    # "args":[Ljava/lang/reflect/Type;
    const/4 v2, 0x1

    .line 216
    :cond_4
    aput-object v12, v1, v13

    .line 209
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 206
    .end local v1    # "args":[Ljava/lang/reflect/Type;
    .end local v2    # "changed":Z
    .end local v4    # "length":I
    .end local v12    # "resolvedTypeArgument":Ljava/lang/reflect/Type;
    .end local v13    # "t":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 220
    .restart local v1    # "args":[Ljava/lang/reflect/Type;
    .restart local v2    # "changed":Z
    .restart local v4    # "length":I
    .restart local v13    # "t":I
    :cond_7
    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v15

    invoke-static {v7, v15, v1}, Lcom/google/inject/util/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v8

    goto :goto_0

    .line 224
    .end local v1    # "args":[Ljava/lang/reflect/Type;
    .end local v2    # "changed":Z
    .end local v4    # "length":I
    .end local v7    # "newOwnerType":Ljava/lang/reflect/Type;
    .end local v8    # "original":Ljava/lang/reflect/ParameterizedType;
    .end local v11    # "ownerType":Ljava/lang/reflect/Type;
    .end local v13    # "t":I
    :cond_8
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v15, :cond_a

    move-object/from16 v8, p1

    .line 225
    check-cast v8, Ljava/lang/reflect/WildcardType;

    .line 226
    .local v8, "original":Ljava/lang/reflect/WildcardType;
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    .line 227
    .local v9, "originalLowerBound":[Ljava/lang/reflect/Type;
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v10

    .line 229
    .local v10, "originalUpperBound":[Ljava/lang/reflect/Type;
    array-length v15, v9

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 230
    const/4 v15, 0x0

    aget-object v15, v9, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 231
    .local v5, "lowerBound":Ljava/lang/reflect/Type;
    const/4 v15, 0x0

    aget-object v15, v9, v15

    if-eq v5, v15, :cond_1

    .line 232
    invoke-static {v5}, Lcom/google/inject/util/Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v8

    goto/16 :goto_0

    .line 234
    .end local v5    # "lowerBound":Ljava/lang/reflect/Type;
    :cond_9
    array-length v15, v10

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 235
    const/4 v15, 0x0

    aget-object v15, v10, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 236
    .local v14, "upperBound":Ljava/lang/reflect/Type;
    const/4 v15, 0x0

    aget-object v15, v10, v15

    if-eq v14, v15, :cond_1

    .line 237
    invoke-static {v14}, Lcom/google/inject/util/Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v8

    goto/16 :goto_0

    .end local v8    # "original":Ljava/lang/reflect/WildcardType;
    .end local v9    # "originalLowerBound":[Ljava/lang/reflect/Type;
    .end local v10    # "originalUpperBound":[Ljava/lang/reflect/Type;
    .end local v14    # "upperBound":Ljava/lang/reflect/Type;
    :cond_a
    move-object/from16 v8, p1

    .line 243
    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    iget-object v0, p0, Lcom/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/inject/internal/MoreTypes;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
