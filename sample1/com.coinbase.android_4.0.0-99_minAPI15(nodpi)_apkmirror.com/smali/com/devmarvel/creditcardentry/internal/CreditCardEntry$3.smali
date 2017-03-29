.class Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$3;
.super Ljava/lang/Object;
.source "CreditCardEntry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;-><init>(Landroid/content/Context;ZZZLandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;


# direct methods
.method constructor <init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$3;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$3;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$3;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    # getter for: Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;
    invoke-static {v1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->access$000(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->focusOnField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V

    .line 203
    return-void
.end method
