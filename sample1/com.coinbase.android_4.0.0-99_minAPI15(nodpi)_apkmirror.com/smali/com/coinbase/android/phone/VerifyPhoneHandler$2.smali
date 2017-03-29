.class Lcom/coinbase/android/phone/VerifyPhoneHandler$2;
.super Lcom/coinbase/android/phone/AddPhoneDialogFragment;
.source "VerifyPhoneHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/phone/VerifyPhoneHandler;->addPhone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/VerifyPhoneHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$2;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    invoke-direct {p0}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUserConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "tfa"    # Ljava/lang/String;
    .param p3, "countryAlpha2"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/coinbase/android/phone/AddPhoneDialogFragment;->onUserConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$2;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->createPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method
