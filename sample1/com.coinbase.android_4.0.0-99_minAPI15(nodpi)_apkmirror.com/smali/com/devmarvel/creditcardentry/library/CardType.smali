.class public final enum Lcom/devmarvel/creditcardentry/library/CardType;
.super Ljava/lang/Enum;
.source "CardType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/devmarvel/creditcardentry/library/CardType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/devmarvel/creditcardentry/library/CardType;

.field public static final enum AMEX:Lcom/devmarvel/creditcardentry/library/CardType;

.field public static final enum DISCOVER:Lcom/devmarvel/creditcardentry/library/CardType;

.field public static final enum INVALID:Lcom/devmarvel/creditcardentry/library/CardType;

.field public static final enum MASTERCARD:Lcom/devmarvel/creditcardentry/library/CardType;

.field public static final enum VISA:Lcom/devmarvel/creditcardentry/library/CardType;


# instance fields
.field public final backResource:I

.field public final frontResource:I

.field public final fullRegex:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final typeRegex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/devmarvel/creditcardentry/library/CardType;

    const-string v1, "VISA"

    const-string v3, "VISA"

    sget v4, Lcom/devmarvel/creditcardentry/R$drawable;->visa:I

    const-string v5, "^4[0-9]{15}?"

    const-string v6, "^4[0-9]{3}?"

    invoke-direct/range {v0 .. v6}, Lcom/devmarvel/creditcardentry/library/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devmarvel/creditcardentry/library/CardType;->VISA:Lcom/devmarvel/creditcardentry/library/CardType;

    .line 29
    new-instance v3, Lcom/devmarvel/creditcardentry/library/CardType;

    const-string v4, "MASTERCARD"

    const-string v6, "MasterCard"

    sget v7, Lcom/devmarvel/creditcardentry/R$drawable;->master_card:I

    const-string v8, "^5[1-5][0-9]{14}$"

    const-string v9, "^5[1-5][0-9]{2}$"

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/devmarvel/creditcardentry/library/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/devmarvel/creditcardentry/library/CardType;->MASTERCARD:Lcom/devmarvel/creditcardentry/library/CardType;

    .line 30
    new-instance v3, Lcom/devmarvel/creditcardentry/library/CardType;

    const-string v4, "AMEX"

    const-string v6, "American Express"

    sget v7, Lcom/devmarvel/creditcardentry/R$drawable;->amex:I

    const-string v8, "^3[47][0-9]{13}$"

    const-string v9, "^3[47][0-9]{2}$"

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/devmarvel/creditcardentry/library/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/devmarvel/creditcardentry/library/CardType;->AMEX:Lcom/devmarvel/creditcardentry/library/CardType;

    .line 31
    new-instance v3, Lcom/devmarvel/creditcardentry/library/CardType;

    const-string v4, "DISCOVER"

    const-string v6, "Discover"

    sget v7, Lcom/devmarvel/creditcardentry/R$drawable;->discover:I

    const-string v8, "^6(?:011|5[0-9]{2})[0-9]{12}$"

    const-string v9, "^6(?:011|5[0-9]{2})$"

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/devmarvel/creditcardentry/library/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/devmarvel/creditcardentry/library/CardType;->DISCOVER:Lcom/devmarvel/creditcardentry/library/CardType;

    .line 32
    new-instance v3, Lcom/devmarvel/creditcardentry/library/CardType;

    const-string v4, "INVALID"

    const-string v6, "Unknown"

    sget v7, Lcom/devmarvel/creditcardentry/R$drawable;->unknown_cc:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lcom/devmarvel/creditcardentry/library/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/devmarvel/creditcardentry/library/CardType;->INVALID:Lcom/devmarvel/creditcardentry/library/CardType;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/devmarvel/creditcardentry/library/CardType;

    sget-object v1, Lcom/devmarvel/creditcardentry/library/CardType;->VISA:Lcom/devmarvel/creditcardentry/library/CardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/devmarvel/creditcardentry/library/CardType;->MASTERCARD:Lcom/devmarvel/creditcardentry/library/CardType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/devmarvel/creditcardentry/library/CardType;->AMEX:Lcom/devmarvel/creditcardentry/library/CardType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/devmarvel/creditcardentry/library/CardType;->DISCOVER:Lcom/devmarvel/creditcardentry/library/CardType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/devmarvel/creditcardentry/library/CardType;->INVALID:Lcom/devmarvel/creditcardentry/library/CardType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/devmarvel/creditcardentry/library/CardType;->$VALUES:[Lcom/devmarvel/creditcardentry/library/CardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "imageResource"    # I
    .param p5, "fullRegex"    # Ljava/lang/String;
    .param p6, "typeRegex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    sget v0, Lcom/devmarvel/creditcardentry/R$drawable;->cc_back:I

    iput v0, p0, Lcom/devmarvel/creditcardentry/library/CardType;->backResource:I

    .line 50
    iput-object p3, p0, Lcom/devmarvel/creditcardentry/library/CardType;->name:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/devmarvel/creditcardentry/library/CardType;->frontResource:I

    .line 52
    iput-object p5, p0, Lcom/devmarvel/creditcardentry/library/CardType;->fullRegex:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/devmarvel/creditcardentry/library/CardType;->typeRegex:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/devmarvel/creditcardentry/library/CardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/devmarvel/creditcardentry/library/CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/devmarvel/creditcardentry/library/CardType;

    return-object v0
.end method

.method public static values()[Lcom/devmarvel/creditcardentry/library/CardType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/devmarvel/creditcardentry/library/CardType;->$VALUES:[Lcom/devmarvel/creditcardentry/library/CardType;

    invoke-virtual {v0}, [Lcom/devmarvel/creditcardentry/library/CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/devmarvel/creditcardentry/library/CardType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/library/CardType;->name:Ljava/lang/String;

    return-object v0
.end method
