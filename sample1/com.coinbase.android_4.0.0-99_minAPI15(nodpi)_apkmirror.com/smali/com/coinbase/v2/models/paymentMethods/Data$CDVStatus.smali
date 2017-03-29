.class public final enum Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;
.super Ljava/lang/Enum;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v2/models/paymentMethods/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CDVStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

.field public static final enum IN_PROGRESS:Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

.field public static final enum READY:Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    const-string v1, "READY"

    const-string v2, "ready"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->READY:Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    .line 83
    new-instance v0, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    const-string v1, "IN_PROGRESS"

    const-string v2, "in_progress"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->IN_PROGRESS:Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    sget-object v1, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->READY:Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->IN_PROGRESS:Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->$VALUES:[Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

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
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->_value:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->values()[Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 100
    .local v0, "type":Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    .end local v0    # "type":Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;
    :goto_1
    return-object v0

    .line 99
    .restart local v0    # "type":Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "type":Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->$VALUES:[Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    invoke-virtual {v0}, [Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->_value:Ljava/lang/String;

    return-object v0
.end method
