.class public final enum Lcom/coinbase/api/internal/entity/JumioProfileType;
.super Ljava/lang/Enum;
.source "JumioProfileType.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonRootName;
    value = "type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/api/internal/entity/JumioProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/api/internal/entity/JumioProfileType;

.field public static final enum DRIVERS_LICENSE:Lcom/coinbase/api/internal/entity/JumioProfileType;

.field public static final enum ID_CARD:Lcom/coinbase/api/internal/entity/JumioProfileType;

.field public static final enum PASSPORT:Lcom/coinbase/api/internal/entity/JumioProfileType;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/coinbase/api/internal/entity/JumioProfileType;

    const-string v1, "DRIVERS_LICENSE"

    const-string v2, "drivers_licence"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/api/internal/entity/JumioProfileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/JumioProfileType;->DRIVERS_LICENSE:Lcom/coinbase/api/internal/entity/JumioProfileType;

    .line 11
    new-instance v0, Lcom/coinbase/api/internal/entity/JumioProfileType;

    const-string v1, "PASSPORT"

    const-string v2, "passport"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/api/internal/entity/JumioProfileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/JumioProfileType;->PASSPORT:Lcom/coinbase/api/internal/entity/JumioProfileType;

    .line 12
    new-instance v0, Lcom/coinbase/api/internal/entity/JumioProfileType;

    const-string v1, "ID_CARD"

    const-string v2, "id_card"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/api/internal/entity/JumioProfileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/JumioProfileType;->ID_CARD:Lcom/coinbase/api/internal/entity/JumioProfileType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/coinbase/api/internal/entity/JumioProfileType;

    sget-object v1, Lcom/coinbase/api/internal/entity/JumioProfileType;->DRIVERS_LICENSE:Lcom/coinbase/api/internal/entity/JumioProfileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/api/internal/entity/JumioProfileType;->PASSPORT:Lcom/coinbase/api/internal/entity/JumioProfileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/api/internal/entity/JumioProfileType;->ID_CARD:Lcom/coinbase/api/internal/entity/JumioProfileType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/coinbase/api/internal/entity/JumioProfileType;->$VALUES:[Lcom/coinbase/api/internal/entity/JumioProfileType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/coinbase/api/internal/entity/JumioProfileType;->_value:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/api/internal/entity/JumioProfileType;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/coinbase/api/internal/entity/JumioProfileType;->values()[Lcom/coinbase/api/internal/entity/JumioProfileType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 30
    .local v0, "type":Lcom/coinbase/api/internal/entity/JumioProfileType;
    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/JumioProfileType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    .end local v0    # "type":Lcom/coinbase/api/internal/entity/JumioProfileType;
    :goto_1
    return-object v0

    .line 29
    .restart local v0    # "type":Lcom/coinbase/api/internal/entity/JumioProfileType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "type":Lcom/coinbase/api/internal/entity/JumioProfileType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/api/internal/entity/JumioProfileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/coinbase/api/internal/entity/JumioProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/entity/JumioProfileType;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/api/internal/entity/JumioProfileType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfileType;->$VALUES:[Lcom/coinbase/api/internal/entity/JumioProfileType;

    invoke-virtual {v0}, [Lcom/coinbase/api/internal/entity/JumioProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/api/internal/entity/JumioProfileType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfileType;->_value:Ljava/lang/String;

    return-object v0
.end method
