.class public final enum Lcom/coinbase/v1/entity/RecurringPayment$StartType;
.super Ljava/lang/Enum;
.source "RecurringPayment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/RecurringPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/RecurringPayment$StartType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/RecurringPayment$StartType;

.field public static final enum NOW:Lcom/coinbase/v1/entity/RecurringPayment$StartType;

.field public static final enum ON:Lcom/coinbase/v1/entity/RecurringPayment$StartType;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    const-string v1, "ON"

    const-string v2, "on"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/v1/entity/RecurringPayment$StartType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/RecurringPayment$StartType;->ON:Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    .line 39
    new-instance v0, Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    const-string v1, "NOW"

    const-string v2, "now"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/RecurringPayment$StartType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/RecurringPayment$StartType;->NOW:Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    sget-object v1, Lcom/coinbase/v1/entity/RecurringPayment$StartType;->ON:Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/v1/entity/RecurringPayment$StartType;->NOW:Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coinbase/v1/entity/RecurringPayment$StartType;->$VALUES:[Lcom/coinbase/v1/entity/RecurringPayment$StartType;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coinbase/v1/entity/RecurringPayment$StartType;->_value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/RecurringPayment$StartType;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcom/coinbase/v1/entity/RecurringPayment$StartType;->values()[Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 50
    .local v0, "type":Lcom/coinbase/v1/entity/RecurringPayment$StartType;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/RecurringPayment$StartType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    .end local v0    # "type":Lcom/coinbase/v1/entity/RecurringPayment$StartType;
    :goto_1
    return-object v0

    .line 49
    .restart local v0    # "type":Lcom/coinbase/v1/entity/RecurringPayment$StartType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "type":Lcom/coinbase/v1/entity/RecurringPayment$StartType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/RecurringPayment$StartType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/RecurringPayment$StartType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/coinbase/v1/entity/RecurringPayment$StartType;->$VALUES:[Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/RecurringPayment$StartType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment$StartType;->_value:Ljava/lang/String;

    return-object v0
.end method
