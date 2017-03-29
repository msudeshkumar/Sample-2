.class final Lcom/mobsandgeeks/saripaar/Rules$2;
.super Lcom/mobsandgeeks/saripaar/Rule;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobsandgeeks/saripaar/Rules;->regex(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;
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
.field final synthetic val$regex:Ljava/lang/String;

.field final synthetic val$trimInput:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-boolean p2, p0, Lcom/mobsandgeeks/saripaar/Rules$2;->val$trimInput:Z

    iput-object p3, p0, Lcom/mobsandgeeks/saripaar/Rules$2;->val$regex:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Rule;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Landroid/widget/TextView;)Z
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 157
    iget-boolean v1, p0, Lcom/mobsandgeeks/saripaar/Rules$2;->val$trimInput:Z

    # invokes: Lcom/mobsandgeeks/saripaar/Rules;->getText(Landroid/widget/TextView;Z)Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/mobsandgeeks/saripaar/Rules;->access$000(Landroid/widget/TextView;Z)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mobsandgeeks/saripaar/Rules$2;->val$regex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$2;->isValid(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method
