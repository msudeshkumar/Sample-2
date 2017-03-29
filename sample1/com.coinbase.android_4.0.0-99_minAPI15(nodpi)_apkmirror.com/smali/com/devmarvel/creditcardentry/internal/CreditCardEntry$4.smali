.class Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$4;
.super Ljava/lang/Object;
.source "CreditCardEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->onBadInput(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

.field final synthetic val$field:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$4;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    iput-object p2, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$4;->val$field:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$4;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    # getter for: Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textColor:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->access$100(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$4;->val$field:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$4;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    # getter for: Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textColor:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->access$100(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 282
    :cond_0
    return-void
.end method
