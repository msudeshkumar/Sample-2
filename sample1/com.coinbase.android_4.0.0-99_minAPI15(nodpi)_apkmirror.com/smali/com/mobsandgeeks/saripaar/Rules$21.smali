.class final Lcom/mobsandgeeks/saripaar/Rules$21;
.super Lcom/mobsandgeeks/saripaar/Rule;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobsandgeeks/saripaar/Rules;->or(Ljava/lang/String;[Lcom/mobsandgeeks/saripaar/Rule;)Lcom/mobsandgeeks/saripaar/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/Rule",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$rules:[Lcom/mobsandgeeks/saripaar/Rule;


# direct methods
.method constructor <init>(Ljava/lang/String;[Lcom/mobsandgeeks/saripaar/Rule;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 707
    iput-object p2, p0, Lcom/mobsandgeeks/saripaar/Rules$21;->val$rules:[Lcom/mobsandgeeks/saripaar/Rule;

    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Rule;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Landroid/view/View;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 711
    const/4 v4, 0x0

    .line 712
    .local v4, "valid":Z
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Rules$21;->val$rules:[Lcom/mobsandgeeks/saripaar/Rule;

    .local v0, "arr$":[Lcom/mobsandgeeks/saripaar/Rule;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 713
    .local v3, "rule":Lcom/mobsandgeeks/saripaar/Rule;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/mobsandgeeks/saripaar/Rule;->isValid(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 714
    :cond_0
    if-eqz v4, :cond_2

    .line 717
    .end local v3    # "rule":Lcom/mobsandgeeks/saripaar/Rule;
    :cond_1
    return v4

    .line 712
    .restart local v3    # "rule":Lcom/mobsandgeeks/saripaar/Rule;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 707
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$21;->isValid(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
