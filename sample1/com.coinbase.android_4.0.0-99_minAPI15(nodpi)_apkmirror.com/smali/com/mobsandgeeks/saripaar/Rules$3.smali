.class final Lcom/mobsandgeeks/saripaar/Rules$3;
.super Lcom/mobsandgeeks/saripaar/Rule;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobsandgeeks/saripaar/Rules;->minLength(Ljava/lang/String;IZ)Lcom/mobsandgeeks/saripaar/Rule;
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
.field final synthetic val$minLength:I

.field final synthetic val$trimInput:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-boolean p2, p0, Lcom/mobsandgeeks/saripaar/Rules$3;->val$trimInput:Z

    iput p3, p0, Lcom/mobsandgeeks/saripaar/Rules$3;->val$minLength:I

    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Rule;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Landroid/widget/TextView;)Z
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-boolean v2, p0, Lcom/mobsandgeeks/saripaar/Rules$3;->val$trimInput:Z

    # invokes: Lcom/mobsandgeeks/saripaar/Rules;->getText(Landroid/widget/TextView;Z)Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/mobsandgeeks/saripaar/Rules;->access$000(Landroid/widget/TextView;Z)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/mobsandgeeks/saripaar/Rules$3;->val$minLength:I

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 178
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$3;->isValid(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method
