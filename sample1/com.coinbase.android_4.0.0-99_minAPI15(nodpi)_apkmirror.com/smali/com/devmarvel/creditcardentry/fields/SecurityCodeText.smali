.class public Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;
.super Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
.source "SecurityCodeText.java"


# instance fields
.field private length:I

.field private type:Lcom/devmarvel/creditcardentry/library/CardType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->init()V

    .line 30
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->type:Lcom/devmarvel/creditcardentry/library/CardType;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 43
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 38
    return-void
.end method

.method public formatAndSetText(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public getType()Lcom/devmarvel/creditcardentry/library/CardType;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->type:Lcom/devmarvel/creditcardentry/library/CardType;

    return-object v0
.end method

.method public helperText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->context:Landroid/content/Context;

    sget v1, Lcom/devmarvel/creditcardentry/R$string;->SecurityCodeHelp:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method init()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->init()V

    .line 34
    const-string v0, "CVV"

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->setHint(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method public setType(Lcom/devmarvel/creditcardentry/library/CardType;)V
    .locals 1
    .param p1, "type"    # Lcom/devmarvel/creditcardentry/library/CardType;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->type:Lcom/devmarvel/creditcardentry/library/CardType;

    .line 75
    invoke-static {p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardUtil;->securityCodeValid(Lcom/devmarvel/creditcardentry/library/CardType;)I

    move-result v0

    iput v0, p0, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->length:I

    .line 76
    return-void
.end method

.method public textChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->type:Lcom/devmarvel/creditcardentry/library/CardType;

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->length:I

    if-lt v1, v2, :cond_2

    .line 55
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->setValid(Z)V

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "remainder":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_0
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->length:I

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v1, v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->onSecurityCodeValid(Ljava/lang/String;)V

    .line 66
    .end local v0    # "remainder":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    invoke-virtual {p0, v3}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->setValid(Z)V

    goto :goto_0
.end method
