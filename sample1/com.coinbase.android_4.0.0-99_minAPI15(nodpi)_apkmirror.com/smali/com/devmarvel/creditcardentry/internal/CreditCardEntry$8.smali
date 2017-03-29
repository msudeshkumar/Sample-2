.class Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$8;
.super Ljava/lang/Object;
.source "CreditCardEntry.java"

# interfaces
.implements Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->getDelegate(Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;)Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

.field final synthetic val$delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;


# direct methods
.method constructor <init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$8;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    iput-object p2, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$8;->val$delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusOnPreviousField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V
    .locals 0
    .param p1, "field"    # Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;

    .prologue
    .line 460
    return-void
.end method

.method public onBadInput(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "field"    # Landroid/widget/EditText;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$8;->val$delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->onBadInput(Landroid/widget/EditText;)V

    .line 454
    return-void
.end method

.method public onCardTypeChange(Lcom/devmarvel/creditcardentry/library/CardType;)V
    .locals 1
    .param p1, "type"    # Lcom/devmarvel/creditcardentry/library/CardType;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$8;->val$delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->onCardTypeChange(Lcom/devmarvel/creditcardentry/library/CardType;)V

    .line 444
    return-void
.end method

.method public onCreditCardNumberValid(Ljava/lang/String;)V
    .locals 1
    .param p1, "remainder"    # Ljava/lang/String;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$8;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    # invokes: Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->updateLast4()V
    invoke-static {v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->access$300(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)V

    .line 449
    return-void
.end method

.method public onExpirationDateValid(Ljava/lang/String;)V
    .locals 0
    .param p1, "remainder"    # Ljava/lang/String;

    .prologue
    .line 456
    return-void
.end method

.method public onSecurityCodeValid(Ljava/lang/String;)V
    .locals 0
    .param p1, "remainder"    # Ljava/lang/String;

    .prologue
    .line 457
    return-void
.end method

.method public onZipCodeValid()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method
