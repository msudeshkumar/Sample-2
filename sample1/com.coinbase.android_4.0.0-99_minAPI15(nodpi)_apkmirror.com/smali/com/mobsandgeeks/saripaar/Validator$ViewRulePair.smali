.class Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;
.super Ljava/lang/Object;
.source "Validator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/saripaar/Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewRulePair"
.end annotation


# instance fields
.field public rule:Lcom/mobsandgeeks/saripaar/Rule;

.field final synthetic this$0:Lcom/mobsandgeeks/saripaar/Validator;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mobsandgeeks/saripaar/Validator;Landroid/view/View;Lcom/mobsandgeeks/saripaar/Rule;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/mobsandgeeks/saripaar/Rule",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p3, "rule":Lcom/mobsandgeeks/saripaar/Rule;, "Lcom/mobsandgeeks/saripaar/Rule<*>;"
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;->this$0:Lcom/mobsandgeeks/saripaar/Validator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p2, p0, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;->view:Landroid/view/View;

    .line 540
    iput-object p3, p0, Lcom/mobsandgeeks/saripaar/Validator$ViewRulePair;->rule:Lcom/mobsandgeeks/saripaar/Rule;

    .line 541
    return-void
.end method
