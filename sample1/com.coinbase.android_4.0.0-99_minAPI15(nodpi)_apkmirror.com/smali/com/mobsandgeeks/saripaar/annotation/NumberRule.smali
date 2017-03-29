.class public interface abstract annotation Lcom/mobsandgeeks/saripaar/annotation/NumberRule;
.super Ljava/lang/Object;
.source "NumberRule.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/mobsandgeeks/saripaar/annotation/NumberRule;
        eq = 1.7976931348623157E308
        gt = 1.7976931348623157E308
        lt = 4.9E-324
        message = ""
        messageResId = 0x0
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract eq()D
.end method

.method public abstract gt()D
.end method

.method public abstract lt()D
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract messageResId()I
.end method

.method public abstract order()I
.end method

.method public abstract type()Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;
.end method
