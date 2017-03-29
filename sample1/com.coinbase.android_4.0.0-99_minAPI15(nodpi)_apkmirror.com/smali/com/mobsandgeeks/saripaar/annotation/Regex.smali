.class public interface abstract annotation Lcom/mobsandgeeks/saripaar/annotation/Regex;
.super Ljava/lang/Object;
.source "Regex.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/mobsandgeeks/saripaar/annotation/Regex;
        message = ""
        messageResId = 0x0
        pattern = "."
        patternResId = 0x0
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
.method public abstract message()Ljava/lang/String;
.end method

.method public abstract messageResId()I
.end method

.method public abstract order()I
.end method

.method public abstract pattern()Ljava/lang/String;
.end method

.method public abstract patternResId()I
.end method

.method public abstract trim()Z
.end method
