.class public interface abstract Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;
.super Ljava/lang/Object;
.source "Validator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/saripaar/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ValidationListener"
.end annotation


# virtual methods
.method public abstract onValidationFailed(Landroid/view/View;Lcom/mobsandgeeks/saripaar/Rule;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract onValidationSucceeded()V
.end method
