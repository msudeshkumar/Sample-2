.class final enum Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;
.super Ljava/lang/Enum;
.source "CreatePriceAlertAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

.field public static final enum ITEM:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

.field public static final enum PLACEHOLDER:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 27
    new-instance v2, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    const-string v3, "PLACEHOLDER"

    invoke-direct {v2, v3, v1, v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->PLACEHOLDER:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    .line 28
    new-instance v2, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    const-string v3, "ITEM"

    invoke-direct {v2, v3, v4, v4}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->ITEM:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    .line 26
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    sget-object v3, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->PLACEHOLDER:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->ITEM:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    aput-object v3, v2, v4

    sput-object v2, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->$VALUES:[Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->map:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->values()[Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    move-result-object v2

    array-length v3, v2

    .local v0, "viewType":Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 38
    sget-object v4, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->map:Ljava/util/Map;

    iget v5, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->id:I

    .line 32
    return-void
.end method

.method public static valueOf(I)Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 45
    sget-object v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->map:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->$VALUES:[Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewType;

    return-object v0
.end method
