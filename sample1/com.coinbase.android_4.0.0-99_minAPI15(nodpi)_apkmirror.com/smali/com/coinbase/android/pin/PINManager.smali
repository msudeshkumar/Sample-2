.class public Lcom/coinbase/android/pin/PINManager;
.super Ljava/lang/Object;
.source "PINManager.java"


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/pin/PINManager$AccessType;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I

.field public static final KEYS:[Ljava/lang/String;

.field private static isQuitPINLock:Z

.field private static rand:Ljava/security/SecureRandom;


# instance fields
.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pin_enabled_app_open"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "pin_enabled_send_money"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "pin_enabled_buy_bitcoin"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "pin_enabled_sell_bitcoin"

    aput-object v3, v1, v2

    sput-object v1, Lcom/coinbase/android/pin/PINManager;->KEYS:[Ljava/lang/String;

    .line 41
    sput-boolean v4, Lcom/coinbase/android/pin/PINManager;->isQuitPINLock:Z

    .line 43
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Lcom/coinbase/android/pin/PINManager;->rand:Ljava/security/SecureRandom;

    .line 49
    :try_start_0
    invoke-static {}, Lcom/coinbase/android/pin/PINManager;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    sput v1, Lcom/coinbase/android/pin/PINManager;->BLOCK_SIZE:I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static generateSalt()[B
    .locals 2

    .prologue
    .line 119
    sget v1, Lcom/coinbase/android/pin/PINManager;->BLOCK_SIZE:I

    new-array v0, v1, [B

    .line 120
    .local v0, "result":[B
    sget-object v1, Lcom/coinbase/android/pin/PINManager;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 121
    return-object v0
.end method

.method private static getCipher()Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 112
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static isPinEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "enabled":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 104
    .local v2, "prefs":Landroid/content/SharedPreferences;
    sget-object v5, Lcom/coinbase/android/pin/PINManager;->KEYS:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v1, v5, v3

    .local v1, "key":Ljava/lang/String;
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    or-int/2addr v0, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static setPinEntered(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entered"    # Z

    .prologue
    .line 95
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_user_entered_pin"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void
.end method


# virtual methods
.method public isProtected(Landroid/content/Context;Lcom/coinbase/android/pin/PINManager$AccessType;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accessType"    # Lcom/coinbase/android/pin/PINManager$AccessType;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "prefs":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/coinbase/android/pin/PINManager$1;->$SwitchMap$com$coinbase$android$pin$PINManager$AccessType:[I

    invoke-virtual {p2}, Lcom/coinbase/android/pin/PINManager$AccessType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 79
    :goto_0
    return v1

    .line 70
    :pswitch_0
    const-string v2, "pin_enabled_app_open"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 72
    :pswitch_1
    const-string v2, "pin_enabled_send_money"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v2, "pin_enabled_buy_bitcoin"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 76
    :pswitch_3
    const-string v2, "pin_enabled_sell_bitcoin"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isQuitPINLock()Z
    .locals 1

    .prologue
    .line 185
    sget-boolean v0, Lcom/coinbase/android/pin/PINManager;->isQuitPINLock:Z

    return v0
.end method

.method public setPin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 129
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/coinbase/android/pin/PINManager;->generateSalt()[B

    move-result-object v3

    .line 131
    .local v3, "salt":[B
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/16 v5, 0x4b0

    const/16 v6, 0x80

    invoke-static {v4, v3, v5, v6}, Lcom/coinbase/android/crypto/CoinBaseCrypto;->getKey([C[BII)[B

    move-result-object v1

    .line 132
    .local v1, "encodedPin":[B
    const-string v4, "account_salt"

    invoke-static {v3}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    const-string v4, "account_pin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enc_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    iget-object v4, p0, Lcom/coinbase/android/pin/PINManager;->mBus:Lcom/squareup/otto/Bus;

    new-instance v5, Lcom/coinbase/android/event/UserDataUpdatedEvent;

    invoke-direct {v5}, Lcom/coinbase/android/event/UserDataUpdatedEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public setQuitPINLock(Z)V
    .locals 0
    .param p1, "quitPINLock"    # Z

    .prologue
    .line 178
    sput-boolean p1, Lcom/coinbase/android/pin/PINManager;->isQuitPINLock:Z

    .line 179
    return-void
.end method

.method public shouldGrantAccess(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "has_user_entered_pin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public verifyPin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enteredPin"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x4b0

    const/16 v11, 0x80

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 142
    if-eqz p2, :cond_0

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v7

    .line 145
    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 146
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "account_pin"

    invoke-interface {v5, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "pin":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 154
    const-string v8, "enc_"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 155
    const-string v8, "account_pin"

    invoke-interface {v5, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "plain_pin":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 159
    invoke-static {}, Lcom/coinbase/android/pin/PINManager;->generateSalt()[B

    move-result-object v4

    .line 160
    .local v4, "plain_salt":[B
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v7, v4, v12, v11}, Lcom/coinbase/android/crypto/CoinBaseCrypto;->getKey([C[BII)[B

    move-result-object v1

    .line 161
    .local v1, "encodedPin":[B
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 162
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v7, "account_pin"

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    const-string v7, "account_salt"

    invoke-static {v4}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    const-string v7, "account_pin"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enc_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "encodedPin":[B
    .end local v3    # "plain_pin":Ljava/lang/String;
    .end local v4    # "plain_salt":[B
    :cond_2
    const-string v7, "account_pin"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    const-string v7, "account_salt"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "salt":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v6}, Lcom/coinbase/android/crypto/ByteArrayUtils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v7, v8, v12, v11}, Lcom/coinbase/android/crypto/CoinBaseCrypto;->getKey([C[BII)[B

    move-result-object v1

    .line 171
    .restart local v1    # "encodedPin":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enc_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/coinbase/android/crypto/ByteArrayUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto/16 :goto_0
.end method
