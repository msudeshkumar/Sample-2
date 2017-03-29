.class public Lcom/mobsandgeeks/saripaar/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPairCompartor;,
        Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;,
        Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;,
        Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;
    }
.end annotation


# instance fields
.field private mAnnotationsProcessed:Z

.field private mAsyncValidationTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Ljava/lang/Object;

.field private mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mValidationListener:Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;

.field private mViewsAndRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobsandgeeks/saripaar/Validator;->mAnnotationsProcessed:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobsandgeeks/saripaar/Validator;->mViewsAndRules:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobsandgeeks/saripaar/Validator;->mProperties:Ljava/util/Map;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "controller"    # Ljava/lang/Object;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mobsandgeeks/saripaar/Validator;-><init>()V

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'controller\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/Validator;->mController:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/mobsandgeeks/saripaar/Validator;)Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;
    .locals 1
    .param p0, "x0"    # Lcom/mobsandgeeks/saripaar/Validator;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mobsandgeeks/saripaar/Validator;->validateAllRules()Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mobsandgeeks/saripaar/Validator;)Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;
    .locals 1
    .param p0, "x0"    # Lcom/mobsandgeeks/saripaar/Validator;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Validator;->mValidationListener:Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mobsandgeeks/saripaar/Validator;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/mobsandgeeks/saripaar/Validator;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/Validator;->mAsyncValidationTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private createRulesFromAnnotations(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "annotationFieldPairs":Ljava/util/List;, "Ljava/util/List<Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;>;"
    const/4 v8, 0x0

    .line 374
    const/4 v3, 0x0

    .line 375
    .local v3, "passwordTextView":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 377
    .local v0, "confirmPasswordTextView":Landroid/widget/TextView;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;

    .line 379
    .local v2, "pair":Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;
    iget-object v5, v2, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/mobsandgeeks/saripaar/annotation/Password;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 380
    if-nez v3, :cond_2

    .line 381
    iget-object v5, v2, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->field:Ljava/lang/reflect/Field;

    invoke-direct {p0, v5}, Lcom/mobsandgeeks/saripaar/Validator;->getView(Ljava/lang/reflect/Field;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "passwordTextView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 389
    .restart local v3    # "passwordTextView":Landroid/widget/TextView;
    :cond_1
    iget-object v5, v2, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 390
    if-nez v3, :cond_3

    .line 391
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "A @Password annotated field is required before you can use @ConfirmPassword."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 383
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "You cannot annotate two fields in the same Activity with @Password."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 393
    :cond_3
    if-eqz v0, :cond_4

    .line 394
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "You cannot annotate two fields in the same Activity with @ConfirmPassword."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 396
    :cond_4
    if-nez v0, :cond_5

    .line 397
    iget-object v5, v2, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->field:Ljava/lang/reflect/Field;

    invoke-direct {p0, v5}, Lcom/mobsandgeeks/saripaar/Validator;->getView(Ljava/lang/reflect/Field;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "confirmPasswordTextView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 402
    .restart local v0    # "confirmPasswordTextView":Landroid/widget/TextView;
    :cond_5
    const/4 v4, 0x0

    .line 403
    .local v4, "viewRulePair":Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;
    iget-object v5, v2, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 404
    iget-object v5, v2, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->field:Ljava/lang/reflect/Field;

    iget-object v6, v2, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->annotation:Ljava/lang/annotation/Annotation;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-direct {p0, v5, v6, v7}, Lcom/mobsandgeeks/saripaar/Validator;->getViewAndRule(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/Object;)Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;

    move-result-object v4

    .line 408
    :goto_1
    if-eqz v4, :cond_0

    .line 414
    iget-object v5, p0, Lcom/mobsandgeeks/saripaar/Validator;->mViewsAndRules:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    :cond_6
    iget-object v5, v2, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->field:Ljava/lang/reflect/Field;

    iget-object v6, v2, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->annotation:Ljava/lang/annotation/Annotation;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-direct {p0, v5, v6, v7}, Lcom/mobsandgeeks/saripaar/Validator;->getViewAndRule(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/Object;)Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;

    move-result-object v4

    goto :goto_1

    .line 417
    .end local v2    # "pair":Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;
    .end local v4    # "viewRulePair":Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;
    :cond_7
    return-void
.end method

.method private getAllViewFields()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v2, "viewFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v1, 0x0

    .line 492
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/mobsandgeeks/saripaar/Validator;->mController:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 493
    iget-object v3, p0, Lcom/mobsandgeeks/saripaar/Validator;->mController:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mobsandgeeks/saripaar/Validator;->getDeclaredViewFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 494
    iget-object v3, p0, Lcom/mobsandgeeks/saripaar/Validator;->mController:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 498
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 499
    invoke-direct {p0, v1}, Lcom/mobsandgeeks/saripaar/Validator;->getDeclaredViewFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 500
    .local v0, "declaredViewFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 501
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 503
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 504
    goto :goto_0

    .line 506
    .end local v0    # "declaredViewFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_2
    return-object v2
.end method

.method private getDeclaredViewFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v5, "viewFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 512
    .local v1, "declaredFields":[Ljava/lang/reflect/Field;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 513
    .local v2, "f":Ljava/lang/reflect/Field;
    const-class v6, Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 514
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 517
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_1
    return-object v5
.end method

.method private getSaripaarAnnotatedFields()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v1, "annotationFieldPairs":Ljava/util/List;, "Ljava/util/List<Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;>;"
    invoke-direct {p0}, Lcom/mobsandgeeks/saripaar/Validator;->getViewFieldsWithAnnotations()Ljava/util/List;

    move-result-object v5

    .line 455
    .local v5, "fieldsWithAnnotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 456
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 457
    .local v2, "annotations":[Ljava/lang/annotation/Annotation;
    move-object v3, v2

    .local v3, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v3, v7

    .line 458
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {p0, v0}, Lcom/mobsandgeeks/saripaar/Validator;->isSaripaarAnnotation(Ljava/lang/annotation/Annotation;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 464
    new-instance v9, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;

    invoke-direct {v9, p0, v0, v4}, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;-><init>(Lcom/mobsandgeeks/saripaar/Validator;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 469
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v3    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_2
    new-instance v9, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPairCompartor;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPairCompartor;-><init>(Lcom/mobsandgeeks/saripaar/Validator;Lcom/mobsandgeeks/saripaar/Validator$1;)V

    invoke-static {v1, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 471
    return-object v1
.end method

.method private getView(Ljava/lang/reflect/Field;)Landroid/view/View;
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 439
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 440
    iget-object v1, p0, Lcom/mobsandgeeks/saripaar/Validator;->mController:Ljava/lang/Object;

    .line 442
    .local v1, "instance":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 448
    .end local v1    # "instance":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 448
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 445
    :catch_1
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private varargs getViewAndRule(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/Object;)Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;
    .locals 8
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "annotation"    # Ljava/lang/annotation/Annotation;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 420
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Validator;->getView(Ljava/lang/reflect/Field;)Landroid/view/View;

    move-result-object v1

    .line 421
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 422
    const-string v3, "Validator"

    const-string v4, "Your %s - %s is null. Please check your field assignment(s)."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    :goto_0
    return-object v2

    .line 427
    :cond_1
    const/4 v0, 0x0

    .line 428
    .local v0, "rule":Lcom/mobsandgeeks/saripaar/Rule;, "Lcom/mobsandgeeks/saripaar/Rule<*>;"
    if-eqz p3, :cond_2

    array-length v3, p3

    if-lez v3, :cond_2

    .line 429
    invoke-static {p1, v1, p2, p3}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getRule(Ljava/lang/reflect/Field;Landroid/view/View;Ljava/lang/annotation/Annotation;[Ljava/lang/Object;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v0

    .line 434
    :goto_1
    if-eqz v0, :cond_0

    new-instance v2, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;

    invoke-direct {v2, p0, v1, v0}, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;-><init>(Lcom/mobsandgeeks/saripaar/Validator;Landroid/view/View;Lcom/mobsandgeeks/saripaar/Rule;)V

    goto :goto_0

    .line 431
    :cond_2
    invoke-static {p1, v1, p2}, Lcom/mobsandgeeks/saripaar/AnnotationRuleFactory;->getRule(Ljava/lang/reflect/Field;Landroid/view/View;Ljava/lang/annotation/Annotation;)Lcom/mobsandgeeks/saripaar/Rule;

    move-result-object v0

    goto :goto_1
.end method

.method private getViewFieldsWithAnnotations()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v2, "fieldsWithAnnotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0}, Lcom/mobsandgeeks/saripaar/Validator;->getAllViewFields()Ljava/util/List;

    move-result-object v4

    .line 477
    .local v4, "viewFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 478
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 479
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-eqz v5, :cond_0

    .line 482
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    .end local v0    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    return-object v2
.end method

.method private isSaripaarAnnotation(Ljava/lang/annotation/Annotation;)Z
    .locals 2
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 521
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 522
    .local v0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Checked;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/ConfirmPassword;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Email;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/IpAddress;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/NumberRule;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Password;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Regex;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Required;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Select;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/TextRule;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validateAllRules()Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;
    .locals 5

    .prologue
    .line 345
    iget-boolean v3, p0, Lcom/mobsandgeeks/saripaar/Validator;->mAnnotationsProcessed:Z

    if-nez v3, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/mobsandgeeks/saripaar/Validator;->getSaripaarAnnotatedFields()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mobsandgeeks/saripaar/Validator;->createRulesFromAnnotations(Ljava/util/List;)V

    .line 347
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mobsandgeeks/saripaar/Validator;->mAnnotationsProcessed:Z

    .line 350
    :cond_0
    iget-object v3, p0, Lcom/mobsandgeeks/saripaar/Validator;->mViewsAndRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 351
    const-string v3, "Validator"

    const-string v4, "No rules found. Passing validation by default."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v0, 0x0

    .line 370
    :cond_1
    :goto_0
    return-object v0

    .line 355
    :cond_2
    const/4 v0, 0x0

    .line 356
    .local v0, "failedViewRulePair":Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;
    iget-object v3, p0, Lcom/mobsandgeeks/saripaar/Validator;->mViewsAndRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;

    .line 357
    .local v2, "pair":Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;
    if-eqz v2, :cond_3

    .line 360
    iget-object v3, v2, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;->view:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 361
    iget-object v3, v2, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 364
    :cond_4
    iget-object v3, v2, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;->rule:Lcom/mobsandgeeks/saripaar/Rule;

    iget-object v4, v2, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;->view:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/mobsandgeeks/saripaar/Rule;->isValid(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 365
    move-object v0, v2

    .line 366
    goto :goto_0
.end method


# virtual methods
.method public setValidationListener(Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;)V
    .locals 0
    .param p1, "validationListener"    # Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/Validator;->mValidationListener:Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;

    .line 253
    return-void
.end method

.method public declared-synchronized validate()V
    .locals 4

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobsandgeeks/saripaar/Validator;->mValidationListener:Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before attempting to validate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 156
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/mobsandgeeks/saripaar/Validator;->validateAllRules()Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;

    move-result-object v0

    .line 157
    .local v0, "failedViewRulePair":Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;
    if-nez v0, :cond_1

    .line 158
    iget-object v1, p0, Lcom/mobsandgeeks/saripaar/Validator;->mValidationListener:Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;

    invoke-interface {v1}, Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;->onValidationSucceeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/mobsandgeeks/saripaar/Validator;->mValidationListener:Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;

    iget-object v2, v0, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;->view:Landroid/view/View;

    iget-object v3, v0, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;->rule:Lcom/mobsandgeeks/saripaar/Rule;

    invoke-interface {v1, v2, v3}, Lcom/mobsandgeeks/saripaar/Validator$ValidationListener;->onValidationFailed(Landroid/view/View;Lcom/mobsandgeeks/saripaar/Rule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
