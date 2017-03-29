.class public interface abstract Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;
.super Ljava/lang/Object;
.source "GetPaymentMethodsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetPaymentMethodsListener"
.end annotation


# virtual methods
.method public abstract onException()V
.end method

.method public abstract onFinally(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/Data;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPreExecute()V
.end method
