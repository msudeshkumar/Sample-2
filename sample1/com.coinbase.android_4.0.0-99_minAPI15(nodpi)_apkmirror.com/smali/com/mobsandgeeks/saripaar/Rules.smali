.class public final Lcom/mobsandgeeks/saripaar/Rules;
.super Ljava/lang/Object;
.source "Rules.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/TextView;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/mobsandgeeks/saripaar/Rules;->getText(Landroid/widget/TextView;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs and(Ljava/lang/String;[Lcom/mobsandgeeks/saripaar/Rule;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<*>;)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "rules":[Lcom/mobsandgeeks/saripaar/Rule;, "[Lcom/mobsandgeeks/saripaar/Rule<*>;"
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$20;

    invoke-direct {v0, p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$20;-><init>(Ljava/lang/String;[Lcom/mobsandgeeks/saripaar/Rule;)V

    return-object v0
.end method

.method public static checked(Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "checked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/Checkable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$16;

    invoke-direct {v0, p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$16;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static eq(Ljava/lang/String;D)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "expectedDouble"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/mobsandgeeks/saripaar/Rules$13;-><init>(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static eq(Ljava/lang/String;F)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "expectedFloat"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$10;

    invoke-direct {v0, p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$10;-><init>(Ljava/lang/String;F)V

    return-object v0
.end method

.method public static eq(Ljava/lang/String;I)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 2
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "expectedInt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/Rules;->eq(Ljava/lang/String;J)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v0

    return-object v0
.end method

.method public static eq(Ljava/lang/String;J)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "expectedLong"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/mobsandgeeks/saripaar/Rules$7;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static eq(Ljava/lang/String;Landroid/widget/TextView;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 2
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "anotherTextView"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'anotherTextView\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$5;

    invoke-direct {v0, p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$5;-><init>(Ljava/lang/String;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static eq(Ljava/lang/String;Ljava/lang/String;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "expectedString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-static {p0, p1, v0, v0}, Lcom/mobsandgeeks/saripaar/Rules;->eq(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v0

    return-object v0
.end method

.method public static eq(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 2
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "expectedString"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z
    .param p3, "trimInput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    if-nez p1, :cond_0

    const-string v0, ""

    .line 272
    .local v0, "cleanString":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/mobsandgeeks/saripaar/Rules$6;

    invoke-direct {v1, p0, p3, p2, v0}, Lcom/mobsandgeeks/saripaar/Rules$6;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    return-object v1

    .end local v0    # "cleanString":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 270
    goto :goto_0
.end method

.method private static getText(Landroid/widget/TextView;Z)Ljava/lang/String;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "trim"    # Z

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 784
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz p0, :cond_0

    .line 785
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 786
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 789
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static gt(Ljava/lang/String;D)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "lesserDouble"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/mobsandgeeks/saripaar/Rules$14;-><init>(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static gt(Ljava/lang/String;F)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "lesserFloat"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$11;

    invoke-direct {v0, p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$11;-><init>(Ljava/lang/String;F)V

    return-object v0
.end method

.method public static gt(Ljava/lang/String;I)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 2
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "lesserInt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/Rules;->gt(Ljava/lang/String;J)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v0

    return-object v0
.end method

.method public static gt(Ljava/lang/String;J)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "lesserLong"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/mobsandgeeks/saripaar/Rules$8;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static lt(Ljava/lang/String;D)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "greaterDouble"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/mobsandgeeks/saripaar/Rules$15;-><init>(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static lt(Ljava/lang/String;F)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "greaterFloat"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$12;

    invoke-direct {v0, p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$12;-><init>(Ljava/lang/String;F)V

    return-object v0
.end method

.method public static lt(Ljava/lang/String;I)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 2
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "greaterInt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/mobsandgeeks/saripaar/Rules;->lt(Ljava/lang/String;J)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v0

    return-object v0
.end method

.method public static lt(Ljava/lang/String;J)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "greaterLong"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/mobsandgeeks/saripaar/Rules$9;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static maxLength(Ljava/lang/String;IZ)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "maxLength"    # I
    .param p2, "trimInput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/mobsandgeeks/saripaar/Rules$4;-><init>(Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public static minLength(Ljava/lang/String;IZ)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "minLength"    # I
    .param p2, "trimInput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/mobsandgeeks/saripaar/Rules$3;-><init>(Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public static varargs or(Ljava/lang/String;[Lcom/mobsandgeeks/saripaar/Rule;)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<*>;)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, "rules":[Lcom/mobsandgeeks/saripaar/Rule;, "[Lcom/mobsandgeeks/saripaar/Rule<*>;"
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$21;

    invoke-direct {v0, p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$21;-><init>(Ljava/lang/String;[Lcom/mobsandgeeks/saripaar/Rule;)V

    return-object v0
.end method

.method public static regex(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 2
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "trimInput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'regex\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/mobsandgeeks/saripaar/Rules$2;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static required(Ljava/lang/String;Z)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "trimInput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$1;

    invoke-direct {v0, p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static spinnerNotEq(Ljava/lang/String;I)Lcom/mobsandgeeks/saripaar/Rule;
    .locals 1
    .param p0, "failureMessage"    # Ljava/lang/String;
    .param p1, "selection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 665
    new-instance v0, Lcom/mobsandgeeks/saripaar/Rules$19;

    invoke-direct {v0, p0, p1}, Lcom/mobsandgeeks/saripaar/Rules$19;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
