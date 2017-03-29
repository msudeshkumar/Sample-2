.class public interface abstract annotation Lcom/mobsandgeeks/saripaar/annotation/TextRule;
.super Ljava/lang/Object;
.source "TextRule.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/mobsandgeeks/saripaar/annotation/TextRule;
        maxLength = 0x7fffffff
        message = ""
        messageResId = 0x0
        minLength = 0x0
        trim = true
    .end subannotation
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
.method public abstract maxLength()I
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract messageResId()I
.end method

.method public abstract minLength()I
.end method

.method public abstract order()I
.end method

.method public abstract trim()Z
.end method
