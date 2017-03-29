.class Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;
.super Ljava/lang/Object;
.source "AddPhoneDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/phone/AddPhoneDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountryCode"
.end annotation


# instance fields
.field alpha2:Ljava/lang/String;

.field code:Ljava/lang/String;

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/AddPhoneDialogFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "alpha2"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;->this$0:Lcom/coinbase/android/phone/AddPhoneDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;->code:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;->name:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;->alpha2:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getAlpha2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;->alpha2:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/coinbase/android/phone/AddPhoneDialogFragment$CountryCode;->name:Ljava/lang/String;

    return-object v0
.end method
