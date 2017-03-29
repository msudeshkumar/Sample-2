.class final Lcom/mobsandgeeks/saripaar/Rules$19;
.super Lcom/mobsandgeeks/saripaar/Rule;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobsandgeeks/saripaar/Rules;->spinnerNotEq(Ljava/lang/String;I)Lcom/mobsandgeeks/saripaar/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/Rule",
        "<",
        "Landroid/widget/Spinner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$selection:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 665
    iput p2, p0, Lcom/mobsandgeeks/saripaar/Rules$19;->val$selection:I

    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Rule;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isValid(Landroid/widget/Spinner;)Z
    .locals 2
    .param p1, "spinner"    # Landroid/widget/Spinner;

    .prologue
    .line 669
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/mobsandgeeks/saripaar/Rules$19;->val$selection:I

    if-eq v0, v1, :cond_0

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
    .line 665
    check-cast p1, Landroid/widget/Spinner;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$19;->isValid(Landroid/widget/Spinner;)Z

    move-result v0

    return v0
.end method
