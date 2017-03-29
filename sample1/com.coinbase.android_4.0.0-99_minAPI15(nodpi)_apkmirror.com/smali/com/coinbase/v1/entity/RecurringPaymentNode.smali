.class public Lcom/coinbase/v1/entity/RecurringPaymentNode;
.super Ljava/lang/Object;
.source "RecurringPaymentNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5bb3eb225977f1b8L


# instance fields
.field private _recurringPayment:Lcom/coinbase/v1/entity/RecurringPayment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecurringPayment()Lcom/coinbase/v1/entity/RecurringPayment;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPaymentNode;->_recurringPayment:Lcom/coinbase/v1/entity/RecurringPayment;

    return-object v0
.end method

.method public setRecurringPayment(Lcom/coinbase/v1/entity/RecurringPayment;)V
    .locals 0
    .param p1, "recurringPayment"    # Lcom/coinbase/v1/entity/RecurringPayment;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPaymentNode;->_recurringPayment:Lcom/coinbase/v1/entity/RecurringPayment;

    .line 18
    return-void
.end method
