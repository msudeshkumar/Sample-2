.class final Lcom/google/inject/internal/TypeConverterBindingProcessor$2;
.super Ljava/lang/Object;
.source "TypeConverterBindingProcessor.java"

# interfaces
.implements Lcom/google/inject/spi/TypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/TypeConverterBindingProcessor;->prepareBuiltInConverters(Lcom/google/inject/internal/InjectorImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;Lcom/google/inject/TypeLiteral;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "toType":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    invoke-virtual {p2}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "TypeConverter<E extends Enum<E>>"

    return-object v0
.end method
