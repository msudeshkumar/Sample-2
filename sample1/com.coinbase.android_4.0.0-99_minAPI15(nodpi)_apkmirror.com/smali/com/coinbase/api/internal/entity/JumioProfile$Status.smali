.class public final enum Lcom/coinbase/api/internal/entity/JumioProfile$Status;
.super Ljava/lang/Enum;
.source "JumioProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/api/internal/entity/JumioProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/api/internal/entity/JumioProfile$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/api/internal/entity/JumioProfile$Status;

.field public static final enum COMPLETED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

.field public static final enum FAILED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

.field public static final enum NEW:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

.field public static final enum PENDING:Lcom/coinbase/api/internal/entity/JumioProfile$Status;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    const-string v1, "COMPLETED"

    const-string v2, "completed"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/api/internal/entity/JumioProfile$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->COMPLETED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 13
    new-instance v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    const-string v1, "FAILED"

    const-string v2, "failed"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/api/internal/entity/JumioProfile$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->FAILED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 14
    new-instance v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    const-string v1, "PENDING"

    const-string v2, "pending"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/api/internal/entity/JumioProfile$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->PENDING:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 15
    new-instance v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    const-string v1, "NEW"

    const-string v2, "new"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/api/internal/entity/JumioProfile$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->NEW:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    sget-object v1, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->COMPLETED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->FAILED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->PENDING:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->NEW:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->$VALUES:[Lcom/coinbase/api/internal/entity/JumioProfile$Status;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->_value:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->values()[Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 32
    .local v0, "status":Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    .end local v0    # "status":Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    :goto_1
    return-object v0

    .line 31
    .restart local v0    # "status":Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "status":Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->$VALUES:[Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    invoke-virtual {v0}, [Lcom/coinbase/api/internal/entity/JumioProfile$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->_value:Ljava/lang/String;

    return-object v0
.end method
