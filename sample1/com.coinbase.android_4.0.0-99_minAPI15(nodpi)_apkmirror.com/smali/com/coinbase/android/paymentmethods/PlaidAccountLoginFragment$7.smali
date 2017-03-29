.class synthetic Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$7;
.super Ljava/lang/Object;
.source "PlaidAccountLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$coinbase$api$internal$models$achSetupSession$mfa$Mfa$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 251
    invoke-static {}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->values()[Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$7;->$SwitchMap$com$coinbase$api$internal$models$achSetupSession$mfa$Mfa$Type:[I

    :try_start_0
    sget-object v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$7;->$SwitchMap$com$coinbase$api$internal$models$achSetupSession$mfa$Mfa$Type:[I

    sget-object v1, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->CODE:Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$7;->$SwitchMap$com$coinbase$api$internal$models$achSetupSession$mfa$Mfa$Type:[I

    sget-object v1, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->SELECTIONS:Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$7;->$SwitchMap$com$coinbase$api$internal$models$achSetupSession$mfa$Mfa$Type:[I

    sget-object v1, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->QUESTIONS:Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
