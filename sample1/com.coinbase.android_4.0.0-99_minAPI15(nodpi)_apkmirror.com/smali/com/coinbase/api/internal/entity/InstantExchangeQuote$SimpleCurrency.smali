.class public Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;
.super Ljava/lang/Object;
.source "InstantExchangeQuote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/api/internal/entity/InstantExchangeQuote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleCurrency"
.end annotation


# instance fields
.field _amount:Ljava/lang/String;

.field _currency:Ljava/lang/String;

.field final synthetic this$0:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;


# direct methods
.method public constructor <init>(Lcom/coinbase/api/internal/entity/InstantExchangeQuote;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;->this$0:Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;->_amount:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;->_currency:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;->_amount:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/InstantExchangeQuote$SimpleCurrency;->_currency:Ljava/lang/String;

    .line 57
    return-void
.end method
