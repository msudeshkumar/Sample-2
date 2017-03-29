.class public Lcom/devmarvel/creditcardentry/fields/CreditCardText;
.super Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
.source "CreditCardText.java"


# instance fields
.field private type:Lcom/devmarvel/creditcardentry/library/CardType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->init()V

    .line 29
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 45
    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->formatAndSetText(Ljava/lang/String;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->type:Lcom/devmarvel/creditcardentry/library/CardType;

    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->type:Lcom/devmarvel/creditcardentry/library/CardType;

    .line 49
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    sget-object v2, Lcom/devmarvel/creditcardentry/library/CardType;->INVALID:Lcom/devmarvel/creditcardentry/library/CardType;

    invoke-interface {v1, v2}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->onCardTypeChange(Lcom/devmarvel/creditcardentry/library/CardType;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 39
    return-void
.end method

.method public formatAndSetText(Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 56
    invoke-static {p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->findCardType(Ljava/lang/String;)Lcom/devmarvel/creditcardentry/library/CardType;

    move-result-object v2

    .line 58
    .local v2, "type":Lcom/devmarvel/creditcardentry/library/CardType;
    sget-object v3, Lcom/devmarvel/creditcardentry/library/CardType;->INVALID:Lcom/devmarvel/creditcardentry/library/CardType;

    invoke-virtual {v2, v3}, Lcom/devmarvel/creditcardentry/library/CardType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {p0, v5}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->setValid(Z)V

    .line 60
    iget-object v3, p0, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v3, p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->onBadInput(Landroid/widget/EditText;)V

    .line 93
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->type:Lcom/devmarvel/creditcardentry/library/CardType;

    if-eq v3, v2, :cond_1

    .line 65
    iget-object v3, p0, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v3, v2}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->onCardTypeChange(Lcom/devmarvel/creditcardentry/library/CardType;)V

    .line 67
    :cond_1
    iput-object v2, p0, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->type:Lcom/devmarvel/creditcardentry/library/CardType;

    .line 69
    invoke-static {p1, v2}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->formatForViewing(Ljava/lang/String;Lcom/devmarvel/creditcardentry/library/CardType;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "formatted":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 71
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->setSelection(I)V

    .line 74
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->lengthOfFormattedStringForType(Lcom/devmarvel/creditcardentry/library/CardType;)I

    move-result v4

    if-lt v3, v4, :cond_5

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "remainder":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_3
    invoke-static {v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->isValidNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 84
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->setValid(Z)V

    .line 85
    iget-object v3, p0, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v3, v1}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->onCreditCardNumberValid(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {p0, v5}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->setValid(Z)V

    .line 88
    iget-object v3, p0, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v3, p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->onBadInput(Landroid/widget/EditText;)V

    goto :goto_0

    .line 91
    .end local v1    # "remainder":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->setValid(Z)V

    goto :goto_0
.end method

.method public getType()Lcom/devmarvel/creditcardentry/library/CardType;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->type:Lcom/devmarvel/creditcardentry/library/CardType;

    return-object v0
.end method

.method public helperText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->context:Landroid/content/Context;

    sget v1, Lcom/devmarvel/creditcardentry/R$string;->CreditCardNumberHelp:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method init()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    .line 34
    invoke-super {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->init()V

    .line 35
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->setGravity(I)V

    .line 36
    return-void
.end method
