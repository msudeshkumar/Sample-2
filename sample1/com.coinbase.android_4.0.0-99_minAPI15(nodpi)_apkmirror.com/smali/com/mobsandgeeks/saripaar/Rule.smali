.class public abstract Lcom/mobsandgeeks/saripaar/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFailureMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "failureMessage"    # Ljava/lang/String;

    .prologue
    .line 35
    .local p0, "this":Lcom/mobsandgeeks/saripaar/Rule;, "Lcom/mobsandgeeks/saripaar/Rule<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/Rule;->mFailureMessage:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getFailureMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/mobsandgeeks/saripaar/Rule;, "Lcom/mobsandgeeks/saripaar/Rule<TT;>;"
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Rule;->mFailureMessage:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isValid(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
