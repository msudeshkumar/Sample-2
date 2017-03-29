.class public Lcom/coinbase/android/utils/KeyboardUtils;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# static fields
.field public static KEYPAD_IDS:[I

.field public static KEY_IDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 7
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coinbase/android/utils/KeyboardUtils;->KEY_IDS:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/coinbase/android/utils/KeyboardUtils;->KEYPAD_IDS:[I

    return-void

    .line 7
    nop

    :array_0
    .array-data 4
        0x7f0d02c2
        0x7f0d02b8
        0x7f0d02b9
        0x7f0d02ba
        0x7f0d02bb
        0x7f0d02bc
        0x7f0d02bd
        0x7f0d02be
        0x7f0d02bf
        0x7f0d02c0
        0x7f0d02f1
        0x7f0d02c3
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x7f0d02c2
        0x7f0d02b8
        0x7f0d02b9
        0x7f0d02ba
        0x7f0d02bb
        0x7f0d02bc
        0x7f0d02bd
        0x7f0d02be
        0x7f0d02bf
        0x7f0d02c0
        0x7f0d02c1
        0x7f0d02c3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyStroke(I)C
    .locals 1
    .param p0, "viewId"    # I

    .prologue
    const/16 v0, 0x2e

    .line 36
    sparse-switch p0, :sswitch_data_0

    .line 65
    :goto_0
    :sswitch_0
    return v0

    .line 38
    :sswitch_1
    const/16 v0, 0x30

    goto :goto_0

    .line 40
    :sswitch_2
    const/16 v0, 0x31

    goto :goto_0

    .line 42
    :sswitch_3
    const/16 v0, 0x32

    goto :goto_0

    .line 44
    :sswitch_4
    const/16 v0, 0x33

    goto :goto_0

    .line 46
    :sswitch_5
    const/16 v0, 0x34

    goto :goto_0

    .line 48
    :sswitch_6
    const/16 v0, 0x35

    goto :goto_0

    .line 50
    :sswitch_7
    const/16 v0, 0x36

    goto :goto_0

    .line 52
    :sswitch_8
    const/16 v0, 0x37

    goto :goto_0

    .line 54
    :sswitch_9
    const/16 v0, 0x38

    goto :goto_0

    .line 56
    :sswitch_a
    const/16 v0, 0x39

    goto :goto_0

    .line 60
    :sswitch_b
    const/16 v0, 0x2d

    goto :goto_0

    .line 62
    :sswitch_c
    const/16 v0, 0x3c

    goto :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        0x7f0d02b8 -> :sswitch_2
        0x7f0d02b9 -> :sswitch_3
        0x7f0d02ba -> :sswitch_4
        0x7f0d02bb -> :sswitch_5
        0x7f0d02bc -> :sswitch_6
        0x7f0d02bd -> :sswitch_7
        0x7f0d02be -> :sswitch_8
        0x7f0d02bf -> :sswitch_9
        0x7f0d02c0 -> :sswitch_a
        0x7f0d02c1 -> :sswitch_b
        0x7f0d02c2 -> :sswitch_1
        0x7f0d02c3 -> :sswitch_c
        0x7f0d02f1 -> :sswitch_0
    .end sparse-switch
.end method
