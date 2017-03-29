.class final Lcom/mobsandgeeks/saripaar/Rules$5;
.super Lcom/mobsandgeeks/saripaar/Rule;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobsandgeeks/saripaar/Rules;->eq(Ljava/lang/String;Landroid/widget/TextView;)Lcom/mobsandgeeks/saripaar/Rule;
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
.field final synthetic val$anotherTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p2, p0, Lcom/mobsandgeeks/saripaar/Rules$5;->val$anotherTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Rule;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Landroid/widget/TextView;)Z
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobsandgeeks/saripaar/Rules$5;->val$anotherTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 231
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$5;->isValid(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method
