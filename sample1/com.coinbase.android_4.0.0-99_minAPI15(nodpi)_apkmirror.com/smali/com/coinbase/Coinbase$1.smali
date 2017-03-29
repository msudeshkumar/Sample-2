.class Lcom/coinbase/Coinbase$1;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "Coinbase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/Coinbase;->getExchangeRates()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/math/BigDecimal;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/Coinbase;


# direct methods
.method constructor <init>(Lcom/coinbase/Coinbase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/Coinbase;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/coinbase/Coinbase$1;->this$0:Lcom/coinbase/Coinbase;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
