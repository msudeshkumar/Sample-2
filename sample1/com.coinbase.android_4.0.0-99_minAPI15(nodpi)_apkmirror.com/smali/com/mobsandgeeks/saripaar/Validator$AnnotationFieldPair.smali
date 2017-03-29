.class Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;
.super Ljava/lang/Object;
.source "Validator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/saripaar/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnnotationFieldPair"
.end annotation


# instance fields
.field public annotation:Ljava/lang/annotation/Annotation;

.field public field:Ljava/lang/reflect/Field;

.field final synthetic this$0:Lcom/mobsandgeeks/saripaar/Validator;


# direct methods
.method public constructor <init>(Lcom/mobsandgeeks/saripaar/Validator;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Field;)V
    .locals 0
    .param p2, "annotation"    # Ljava/lang/annotation/Annotation;
    .param p3, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->this$0:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput-object p2, p0, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->annotation:Ljava/lang/annotation/Annotation;

    .line 550
    iput-object p3, p0, Lcom/mobsandgeeks/saripaar/Validator$AnnotationFieldPair;->field:Ljava/lang/reflect/Field;

    .line 551
    return-void
.end method
