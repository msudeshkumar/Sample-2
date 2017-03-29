.class Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$5;
.super Ljava/lang/Object;
.source "CreditCardEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->focusOnField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

.field final synthetic val$field:Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;


# direct methods
.method constructor <init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$5;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    iput-object p2, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$5;->val$field:Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 305
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$5;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    const/4 v2, 0x0

    # setter for: Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->scrolling:Z
    invoke-static {v1, v2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->access$202(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;Z)Z

    .line 307
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$5;->val$field:Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;

    invoke-virtual {v1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$5;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 309
    .local v0, "newFocus":Landroid/view/View;
    instance-of v1, v0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$5;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    check-cast v0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;

    .end local v0    # "newFocus":Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->focusOnField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V

    .line 313
    :cond_0
    return-void
.end method
