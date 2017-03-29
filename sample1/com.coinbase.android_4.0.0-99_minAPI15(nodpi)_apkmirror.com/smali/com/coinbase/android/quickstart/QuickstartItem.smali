.class public final enum Lcom/coinbase/android/quickstart/QuickstartItem;
.super Ljava/lang/Enum;
.source "QuickstartItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/quickstart/QuickstartItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/quickstart/QuickstartItem;

.field public static final enum ADD_BANK_ACCOUNT:Lcom/coinbase/android/quickstart/QuickstartItem;

.field public static final enum ADD_PAYMENT_METHOD:Lcom/coinbase/android/quickstart/QuickstartItem;

.field public static final enum ADD_PAYMENT_VIA_WEBSITE:Lcom/coinbase/android/quickstart/QuickstartItem;

.field public static final enum COMPLETE_CDV:Lcom/coinbase/android/quickstart/QuickstartItem;

.field public static final enum DEPOSIT_FUNDS:Lcom/coinbase/android/quickstart/QuickstartItem;

.field public static final enum REGION_UNSUPPORTED:Lcom/coinbase/android/quickstart/QuickstartItem;

.field public static final enum VERIFY_EMAIL:Lcom/coinbase/android/quickstart/QuickstartItem;

.field public static final enum VERIFY_IDENTITY:Lcom/coinbase/android/quickstart/QuickstartItem;

.field public static final enum VERIFY_PHONE_NUMBER:Lcom/coinbase/android/quickstart/QuickstartItem;


# instance fields
.field private mIconResource:I

.field private mTitleResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v3, 0x7f020055

    .line 9
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartItem;

    const-string v1, "ADD_PAYMENT_METHOD"

    const v2, 0x7f0701db

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/coinbase/android/quickstart/QuickstartItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartItem;->ADD_PAYMENT_METHOD:Lcom/coinbase/android/quickstart/QuickstartItem;

    .line 10
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartItem;

    const-string v1, "ADD_BANK_ACCOUNT"

    const v2, 0x7f0701da

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/coinbase/android/quickstart/QuickstartItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartItem;->ADD_BANK_ACCOUNT:Lcom/coinbase/android/quickstart/QuickstartItem;

    .line 11
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartItem;

    const-string v1, "COMPLETE_CDV"

    const v2, 0x7f0701dd

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/coinbase/android/quickstart/QuickstartItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartItem;->COMPLETE_CDV:Lcom/coinbase/android/quickstart/QuickstartItem;

    .line 12
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartItem;

    const-string v1, "DEPOSIT_FUNDS"

    const v2, 0x7f0701de

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/coinbase/android/quickstart/QuickstartItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartItem;->DEPOSIT_FUNDS:Lcom/coinbase/android/quickstart/QuickstartItem;

    .line 13
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartItem;

    const-string v1, "VERIFY_IDENTITY"

    const/4 v2, 0x4

    const v3, 0x7f0701e1

    const v4, 0x7f020119

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coinbase/android/quickstart/QuickstartItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartItem;->VERIFY_IDENTITY:Lcom/coinbase/android/quickstart/QuickstartItem;

    .line 14
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartItem;

    const-string v1, "VERIFY_PHONE_NUMBER"

    const/4 v2, 0x5

    const v3, 0x7f0701e2

    const v4, 0x7f020143

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coinbase/android/quickstart/QuickstartItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartItem;->VERIFY_PHONE_NUMBER:Lcom/coinbase/android/quickstart/QuickstartItem;

    .line 15
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartItem;

    const-string v1, "VERIFY_EMAIL"

    const/4 v2, 0x6

    const v3, 0x7f0702e9

    const v4, 0x7f0200c9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coinbase/android/quickstart/QuickstartItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartItem;->VERIFY_EMAIL:Lcom/coinbase/android/quickstart/QuickstartItem;

    .line 16
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartItem;

    const-string v1, "ADD_PAYMENT_VIA_WEBSITE"

    const/4 v2, 0x7

    const v3, 0x7f0701dc

    const v4, 0x7f0200f5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coinbase/android/quickstart/QuickstartItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartItem;->ADD_PAYMENT_VIA_WEBSITE:Lcom/coinbase/android/quickstart/QuickstartItem;

    .line 17
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartItem;

    const-string v1, "REGION_UNSUPPORTED"

    const/16 v2, 0x8

    const v3, 0x7f0702e8

    const v4, 0x7f0200f5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coinbase/android/quickstart/QuickstartItem;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartItem;->REGION_UNSUPPORTED:Lcom/coinbase/android/quickstart/QuickstartItem;

    .line 8
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/coinbase/android/quickstart/QuickstartItem;

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartItem;->ADD_PAYMENT_METHOD:Lcom/coinbase/android/quickstart/QuickstartItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartItem;->ADD_BANK_ACCOUNT:Lcom/coinbase/android/quickstart/QuickstartItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartItem;->COMPLETE_CDV:Lcom/coinbase/android/quickstart/QuickstartItem;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartItem;->DEPOSIT_FUNDS:Lcom/coinbase/android/quickstart/QuickstartItem;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/coinbase/android/quickstart/QuickstartItem;->VERIFY_IDENTITY:Lcom/coinbase/android/quickstart/QuickstartItem;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/coinbase/android/quickstart/QuickstartItem;->VERIFY_PHONE_NUMBER:Lcom/coinbase/android/quickstart/QuickstartItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/coinbase/android/quickstart/QuickstartItem;->VERIFY_EMAIL:Lcom/coinbase/android/quickstart/QuickstartItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/coinbase/android/quickstart/QuickstartItem;->ADD_PAYMENT_VIA_WEBSITE:Lcom/coinbase/android/quickstart/QuickstartItem;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/coinbase/android/quickstart/QuickstartItem;->REGION_UNSUPPORTED:Lcom/coinbase/android/quickstart/QuickstartItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartItem;->$VALUES:[Lcom/coinbase/android/quickstart/QuickstartItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "titleResource"    # I
    .param p4, "iconResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/coinbase/android/quickstart/QuickstartItem;->mTitleResource:I

    .line 24
    iput p4, p0, Lcom/coinbase/android/quickstart/QuickstartItem;->mIconResource:I

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/quickstart/QuickstartItem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/quickstart/QuickstartItem;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/quickstart/QuickstartItem;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/coinbase/android/quickstart/QuickstartItem;->$VALUES:[Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-virtual {v0}, [Lcom/coinbase/android/quickstart/QuickstartItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/quickstart/QuickstartItem;

    return-object v0
.end method


# virtual methods
.method public getIconResource()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/coinbase/android/quickstart/QuickstartItem;->mIconResource:I

    return v0
.end method

.method public getTitleResource()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/coinbase/android/quickstart/QuickstartItem;->mTitleResource:I

    return v0
.end method
