.class final Lcom/mobsandgeeks/saripaar/Rules$11;
.super Lcom/mobsandgeeks/saripaar/Rule;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobsandgeeks/saripaar/Rules;->gt(Ljava/lang/String;F)Lcom/mobsandgeeks/saripaar/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/Rule",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$lesserFloat:F


# direct methods
.method constructor <init>(Ljava/lang/String;F)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 450
    iput p2, p0, Lcom/mobsandgeeks/saripaar/Rules$11;->val$lesserFloat:F

    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Rule;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Landroid/widget/TextView;)Z
    .locals 6
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "valid":Z
    # invokes: Lcom/mobsandgeeks/saripaar/Rules;->getText(Landroid/widget/TextView;Z)Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/mobsandgeeks/saripaar/Rules;->access$000(Landroid/widget/TextView;Z)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "actualFloat":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 457
    const-string v4, "[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iget v5, p0, Lcom/mobsandgeeks/saripaar/Rules$11;->val$lesserFloat:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v1, v2

    .line 461
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v3

    .line 457
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 450
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$11;->isValid(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method
