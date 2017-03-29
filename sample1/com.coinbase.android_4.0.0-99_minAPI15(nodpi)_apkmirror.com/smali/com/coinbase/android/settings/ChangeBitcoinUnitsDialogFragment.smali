.class public Lcom/coinbase/android/settings/ChangeBitcoinUnitsDialogFragment;
.super Lcom/coinbase/android/dialog/SpinnerDialogFragment;
.source "ChangeBitcoinUnitsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/dialog/SpinnerDialogFragment",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final bitcoinUnitOptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BTC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bits"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/android/settings/ChangeBitcoinUnitsDialogFragment;->bitcoinUnitOptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/coinbase/android/dialog/SpinnerDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getOptionDisplayText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/settings/ChangeBitcoinUnitsDialogFragment;->getOptionDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptionDisplayText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 21
    return-object p1
.end method

.method public bridge synthetic getOptions()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/coinbase/android/settings/ChangeBitcoinUnitsDialogFragment;->getOptions()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/coinbase/android/settings/ChangeBitcoinUnitsDialogFragment;->bitcoinUnitOptions:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onChosenValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/settings/ChangeBitcoinUnitsDialogFragment;->onChosenValue(Ljava/lang/String;)V

    return-void
.end method

.method public onChosenValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "chosenValue"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v1, Lcom/coinbase/v1/entity/User;

    invoke-direct {v1}, Lcom/coinbase/v1/entity/User;-><init>()V

    .line 27
    .local v1, "user":Lcom/coinbase/v1/entity/User;
    invoke-virtual {v1, p1}, Lcom/coinbase/v1/entity/User;->setBitcoinUnits(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/coinbase/android/settings/UpdateUserTask;

    invoke-virtual {p0}, Lcom/coinbase/android/settings/ChangeBitcoinUnitsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "account_bitcoin_units"

    invoke-direct {v0, v2, v1, v3, p1}, Lcom/coinbase/android/settings/UpdateUserTask;-><init>(Landroid/content/Context;Lcom/coinbase/v1/entity/User;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v0, "task":Lcom/coinbase/android/settings/UpdateUserTask;
    invoke-virtual {v0}, Lcom/coinbase/android/settings/UpdateUserTask;->execute()V

    .line 30
    return-void
.end method
