.class final Lcom/mobsandgeeks/saripaar/Rules$16;
.super Lcom/mobsandgeeks/saripaar/Rule;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobsandgeeks/saripaar/Rules;->checked(Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/Rule",
        "<",
        "Landroid/widget/Checkable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 585
    iput-boolean p2, p0, Lcom/mobsandgeeks/saripaar/Rules$16;->val$checked:Z

    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Rule;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Landroid/widget/Checkable;)Z
    .locals 2
    .param p1, "view"    # Landroid/widget/Checkable;

    .prologue
    .line 589
    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/mobsandgeeks/saripaar/Rules$16;->val$checked:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 585
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$16;->isValid(Landroid/widget/Checkable;)Z

    move-result v0

    return v0
.end method
