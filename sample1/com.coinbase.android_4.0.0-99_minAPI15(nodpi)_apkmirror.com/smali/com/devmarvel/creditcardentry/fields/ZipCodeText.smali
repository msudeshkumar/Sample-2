.class public Lcom/devmarvel/creditcardentry/fields/ZipCodeText;
.super Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
.source "ZipCodeText.java"


# instance fields
.field private maxChars:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->init()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->init()V

    .line 25
    return-void
.end method


# virtual methods
.method public formatAndSetText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    return-void
.end method

.method public helperText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->context:Landroid/content/Context;

    sget v1, Lcom/devmarvel/creditcardentry/R$string;->ZipHelp:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method init()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->init()V

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->maxChars:I

    .line 30
    iget v0, p0, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->maxChars:I

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setMaxChars(I)V

    .line 31
    const-string v0, "   ZIP   "

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method

.method public setMaxChars(I)V
    .locals 3
    .param p1, "maxChars"    # I

    .prologue
    .line 71
    if-gtz p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iput p1, p0, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->maxChars:I

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public textChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^\\d+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->maxChars:I

    if-ne v0, v1, :cond_0

    .line 44
    invoke-virtual {p0, v3}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setValid(Z)V

    .line 45
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->onZipCodeValid()V

    .line 62
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0, v2}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setValid(Z)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 54
    invoke-virtual {p0, v3}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setValid(Z)V

    .line 56
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->maxChars:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->maxChars:I

    if-lez v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->onZipCodeValid()V

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p0, v2}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setValid(Z)V

    goto :goto_0
.end method
