.class public Lcom/devmarvel/creditcardentry/library/CreditCard;
.super Ljava/lang/Object;
.source "CreditCard.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final cardNumber:Ljava/lang/String;

.field private final cardType:Lcom/devmarvel/creditcardentry/library/CardType;

.field private final expDate:Ljava/lang/String;

.field private final securityCode:Ljava/lang/String;

.field private final zipCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/devmarvel/creditcardentry/library/CardType;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;
    .param p2, "expDate"    # Ljava/lang/String;
    .param p3, "securityCode"    # Ljava/lang/String;
    .param p4, "zipCode"    # Ljava/lang/String;
    .param p5, "cardType"    # Lcom/devmarvel/creditcardentry/library/CardType;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/library/CreditCard;->cardNumber:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/devmarvel/creditcardentry/library/CreditCard;->expDate:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/devmarvel/creditcardentry/library/CreditCard;->securityCode:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/devmarvel/creditcardentry/library/CreditCard;->zipCode:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/devmarvel/creditcardentry/library/CreditCard;->cardType:Lcom/devmarvel/creditcardentry/library/CardType;

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CreditCard{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "cardNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/devmarvel/creditcardentry/library/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", expDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/devmarvel/creditcardentry/library/CreditCard;->expDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", securityCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/devmarvel/creditcardentry/library/CreditCard;->securityCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", zipCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/devmarvel/creditcardentry/library/CreditCard;->zipCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/devmarvel/creditcardentry/library/CreditCard;->cardType:Lcom/devmarvel/creditcardentry/library/CardType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
