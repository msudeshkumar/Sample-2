.class public Lcom/devmarvel/creditcardentry/fields/ExpDateText;
.super Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
.source "ExpDateText.java"


# instance fields
.field private previousString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->init()V

    .line 27
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "updatedString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->previousString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->formatAndSetText(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->previousString:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public formatAndSetText(Ljava/lang/String;)V
    .locals 4
    .param p1, "updatedString"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 50
    invoke-static {p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->formatExpirationDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "formatted":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->setSelection(I)V

    .line 53
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 56
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->setValid(Z)V

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "remainder":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v2, v1}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->onExpirationDateValid(Ljava/lang/String;)V

    .line 66
    .end local v1    # "remainder":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 63
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->setValid(Z)V

    .line 64
    iget-object v2, p0, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v2, p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->onBadInput(Landroid/widget/EditText;)V

    goto :goto_0
.end method

.method public helperText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->context:Landroid/content/Context;

    sget v1, Lcom/devmarvel/creditcardentry/R$string;->ExpirationDateHelp:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method init()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->init()V

    .line 31
    const-string v0, "MM/YY"

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method
