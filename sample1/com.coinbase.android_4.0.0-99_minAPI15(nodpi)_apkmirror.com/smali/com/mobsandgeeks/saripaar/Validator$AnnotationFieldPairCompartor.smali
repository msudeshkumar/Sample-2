.class Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPairCompartor;
.super Ljava/lang/Object;
.source "Validator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/saripaar/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnnotationFieldPairCompartor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobsandgeeks/saripaar/Validator;


# direct methods
.method private constructor <init>(Lcom/mobsandgeeks/saripaar/Validator;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPairCompartor;->this$0:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobsandgeeks/saripaar/Validator;Lcom/mobsandgeeks/saripaar/Validator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobsandgeeks/saripaar/Validator;
    .param p2, "x1"    # Lcom/mobsandgeeks/saripaar/Validator$1;

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPairCompartor;-><init>(Lcom/mobsandgeeks/saripaar/Validator;)V

    return-void
.end method

.method private getAnnotationOrder(Ljava/lang/annotation/Annotation;)I
    .locals 6
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 564
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 565
    .local v0, "annotatedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Checked;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    check-cast p1, Lcom/mobsandgeeks/saripaar/annotation/Checked;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lcom/mobsandgeeks/saripaar/annotation/Checked;->order()I

    move-result v1

    .line 593
    :goto_0
    return v1

    .line 568
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    check-cast p1, Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;->order()I

    move-result v1

    goto :goto_0

    .line 571
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Email;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    check-cast p1, Lcom/mobsandgeeks/saripaar/annotation/Email;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lcom/mobsandgeeks/saripaar/annotation/Email;->order()I

    move-result v1

    goto :goto_0

    .line 574
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_2
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/IpAddress;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 575
    check-cast p1, Lcom/mobsandgeeks/saripaar/annotation/IpAddress;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lcom/mobsandgeeks/saripaar/annotation/IpAddress;->order()I

    move-result v1

    goto :goto_0

    .line 577
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_3
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 578
    check-cast p1, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;->order()I

    move-result v1

    goto :goto_0

    .line 580
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_4
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Password;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 581
    check-cast p1, Lcom/mobsandgeeks/saripaar/annotation/Password;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lcom/mobsandgeeks/saripaar/annotation/Password;->order()I

    move-result v1

    goto :goto_0

    .line 583
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_5
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Regex;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 584
    check-cast p1, Lcom/mobsandgeeks/saripaar/annotation/Regex;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lcom/mobsandgeeks/saripaar/annotation/Regex;->order()I

    move-result v1

    goto :goto_0

    .line 586
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_6
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Required;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 587
    check-cast p1, Lcom/mobsandgeeks/saripaar/annotation/Required;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lcom/mobsandgeeks/saripaar/annotation/Required;->order()I

    move-result v1

    goto :goto_0

    .line 589
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_7
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Select;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 590
    check-cast p1, Lcom/mobsandgeeks/saripaar/annotation/Select;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lcom/mobsandgeeks/saripaar/annotation/Select;->order()I

    move-result v1

    goto :goto_0

    .line 592
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_8
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/TextRule;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 593
    check-cast p1, Lcom/mobsandgeeks/saripaar/annotation/TextRule;

    .end local p1    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {p1}, Lcom/mobsandgeeks/saripaar/annotation/TextRule;->order()I

    move-result v1

    goto/16 :goto_0

    .line 596
    .restart local p1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "%s is not a Saripaar annotation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public compare(Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;)I
    .locals 3
    .param p1, "lhs"    # Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;
    .param p2, "rhs"    # Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;

    .prologue
    .line 558
    iget-object v2, p1, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->annotation:Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v2}, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPairCompartor;->getAnnotationOrder(Ljava/lang/annotation/Annotation;)I

    move-result v0

    .line 559
    .local v0, "lhsOrder":I
    iget-object v2, p2, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->annotation:Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v2}, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPairCompartor;->getAnnotationOrder(Ljava/lang/annotation/Annotation;)I

    move-result v1

    .line 560
    .local v1, "rhsOrder":I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 554
    check-cast p1, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPairCompartor;->compare(Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;)I

    move-result v0

    return v0
.end method
