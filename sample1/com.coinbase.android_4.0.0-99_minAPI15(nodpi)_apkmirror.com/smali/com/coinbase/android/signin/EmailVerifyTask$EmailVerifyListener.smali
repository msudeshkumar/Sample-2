.class public interface abstract Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;
.super Ljava/lang/Object;
.source "EmailVerifyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/signin/EmailVerifyTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmailVerifyListener"
.end annotation


# virtual methods
.method public abstract onEmailUnverified()V
.end method

.method public abstract onEmailVerified(Lcom/coinbase/v1/entity/User;)V
.end method
