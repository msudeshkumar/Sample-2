.class public Lcom/coinbase/v1/entity/RecurringPaymentsResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "RecurringPaymentsResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x4cfbaa2de8259b69L


# instance fields
.field private _recurringPayments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/RecurringPayment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecurringPayments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/RecurringPayment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPaymentsResponse;->_recurringPayments:Ljava/util/List;

    return-object v0
.end method

.method public setRecurringPayments(Ljava/util/List;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        converter = Lcom/coinbase/v1/deserializer/RecurringPaymentsLifter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/RecurringPayment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "recurringPayments":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/RecurringPayment;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPaymentsResponse;->_recurringPayments:Ljava/util/List;

    .line 23
    return-void
.end method
