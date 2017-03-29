.class public final enum Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;
.super Ljava/lang/Enum;
.source "QuickstartManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/quickstart/QuickstartManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

.field public static final enum EMAIL:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

.field public static final enum JUMIO:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

.field public static final enum PAYMENT_METHOD:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

.field public static final enum PERSONAL_DETAILS:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

.field public static final enum PHONE:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

.field public static final enum REGION_UNSUPPORTED:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

.field public static final enum UNSUPPORTED:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

.field public static final enum VOGOGO:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

.field public static final enum ZERO_LIMIT:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    const-string v1, "EMAIL"

    const-string v2, "email"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->EMAIL:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    .line 92
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    const-string v1, "PHONE"

    const-string v2, "phone"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->PHONE:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    .line 93
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    const-string v1, "PERSONAL_DETAILS"

    const-string v2, "personal_details"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->PERSONAL_DETAILS:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    .line 94
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    const-string v1, "JUMIO"

    const-string v2, "jumio"

    invoke-direct {v0, v1, v7, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->JUMIO:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    .line 95
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    const-string v1, "VOGOGO"

    const-string v2, "vogogo"

    invoke-direct {v0, v1, v8, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->VOGOGO:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    .line 96
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    const-string v1, "PAYMENT_METHOD"

    const/4 v2, 0x5

    const-string v3, "payment_method"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->PAYMENT_METHOD:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    .line 97
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    const-string v1, "ZERO_LIMIT"

    const/4 v2, 0x6

    const-string v3, "zero_limit"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->ZERO_LIMIT:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    .line 98
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    const-string v1, "REGION_UNSUPPORTED"

    const/4 v2, 0x7

    const-string v3, "region_unsupported"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->REGION_UNSUPPORTED:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    .line 99
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    const-string v1, "UNSUPPORTED"

    const/16 v2, 0x8

    const-string v3, "unsupported"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->UNSUPPORTED:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    .line 89
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->EMAIL:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->PHONE:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->PERSONAL_DETAILS:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->JUMIO:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->VOGOGO:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->PAYMENT_METHOD:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->ZERO_LIMIT:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->REGION_UNSUPPORTED:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->UNSUPPORTED:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->$VALUES:[Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput-object p3, p0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->_value:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 113
    if-eqz p0, :cond_1

    .line 114
    invoke-static {}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->values()[Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 115
    .local v0, "str":Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;
    invoke-virtual {v0}, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    .end local v0    # "str":Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;
    :goto_1
    return-object v0

    .line 114
    .restart local v0    # "str":Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "str":Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;
    :cond_1
    sget-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->UNSUPPORTED:Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->$VALUES:[Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    invoke-virtual {v0}, [Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/coinbase/android/quickstart/QuickstartManager$VerificationType;->_value:Ljava/lang/String;

    return-object v0
.end method
