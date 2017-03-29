.class final Lcom/mobsandgeeks/saripaar/Rules$6;
.super Lcom/mobsandgeeks/saripaar/Rule;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobsandgeeks/saripaar/Rules;->eq(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/mobsandgeeks/saripaar/Rule;
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
.field final synthetic val$cleanString:Ljava/lang/String;

.field final synthetic val$ignoreCase:Z

.field final synthetic val$trimInput:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-boolean p2, p0, Lcom/mobsandgeeks/saripaar/Rules$6;->val$trimInput:Z

    iput-boolean p3, p0, Lcom/mobsandgeeks/saripaar/Rules$6;->val$ignoreCase:Z

    iput-object p4, p0, Lcom/mobsandgeeks/saripaar/Rules$6;->val$cleanString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Rule;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Landroid/widget/TextView;)Z
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, "valid":Z
    iget-boolean v2, p0, Lcom/mobsandgeeks/saripaar/Rules$6;->val$trimInput:Z

    # invokes: Lcom/mobsandgeeks/saripaar/Rules;->getText(Landroid/widget/TextView;Z)Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/mobsandgeeks/saripaar/Rules;->access$000(Landroid/widget/TextView;Z)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "actualString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 279
    iget-boolean v2, p0, Lcom/mobsandgeeks/saripaar/Rules$6;->val$ignoreCase:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mobsandgeeks/saripaar/Rules$6;->val$cleanString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/mobsandgeeks/saripaar/Rules$6;->val$cleanString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 272
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$6;->isValid(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method
