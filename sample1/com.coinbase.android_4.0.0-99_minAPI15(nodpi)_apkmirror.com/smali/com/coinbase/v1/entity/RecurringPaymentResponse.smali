.class public Lcom/coinbase/v1/entity/RecurringPaymentResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "RecurringPaymentResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x1828b86ee27fb53aL


# instance fields
.field private _recurringPayment:Lcom/coinbase/v1/entity/RecurringPayment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecurringPayment()Lcom/coinbase/v1/entity/RecurringPayment;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPaymentResponse;->_recurringPayment:Lcom/coinbase/v1/entity/RecurringPayment;

    return-object v0
.end method

.method public setRecurringPayment(Lcom/coinbase/v1/entity/RecurringPayment;)V
    .locals 0
    .param p1, "recurringPayment"    # Lcom/coinbase/v1/entity/RecurringPayment;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPaymentResponse;->_recurringPayment:Lcom/coinbase/v1/entity/RecurringPayment;

    .line 16
    return-void
.end method
