.class final Lcom/mobsandgeeks/saripaar/Rules$1;
.super Lcom/mobsandgeeks/saripaar/Rule;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobsandgeeks/saripaar/Rules;->required(Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;
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
.field final synthetic val$trimInput:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-boolean p2, p0, Lcom/mobsandgeeks/saripaar/Rules$1;->val$trimInput:Z

    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Rule;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Landroid/widget/TextView;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/mobsandgeeks/saripaar/Rules$1;->val$trimInput:Z

    # invokes: Lcom/mobsandgeeks/saripaar/Rules;->getText(Landroid/widget/TextView;Z)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/mobsandgeeks/saripaar/Rules;->access$000(Landroid/widget/TextView;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

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
    .line 124
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$1;->isValid(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method
