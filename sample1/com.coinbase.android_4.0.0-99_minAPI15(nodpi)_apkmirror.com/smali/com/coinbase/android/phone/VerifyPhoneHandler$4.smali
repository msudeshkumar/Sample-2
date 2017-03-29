.class Lcom/coinbase/android/phone/VerifyPhoneHandler$4;
.super Lroboguice/receiver/RoboBroadcastReceiver;
.source "VerifyPhoneHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/phone/VerifyPhoneHandler;
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
    .line 176
    iput-object p1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$4;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    invoke-direct {p0}, Lroboguice/receiver/RoboBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 179
    invoke-super/range {p0 .. p2}, Lroboguice/receiver/RoboBroadcastReceiver;->handleReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 182
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 184
    :try_start_0
    const-string v11, "pdus"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    move-object v0, v11

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    .line 185
    .local v9, "pdus":[Ljava/lang/Object;
    array-length v12, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_1

    aget-object v8, v9, v11

    .line 186
    .local v8, "pdu":Ljava/lang/Object;
    check-cast v8, [B

    .end local v8    # "pdu":Ljava/lang/Object;
    check-cast v8, [B

    invoke-static {v8}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 187
    .local v6, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "body":Ljava/lang/String;
    const-string v13, "Coinbase"

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 190
    const-string v10, "\\d{5,8}"

    .line 191
    .local v10, "regex":Ljava/lang/String;
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 192
    .local v7, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 193
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 194
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "code":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/coinbase/android/phone/VerifyPhoneHandler$4;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mPhoneNumber:Lcom/coinbase/api/internal/models/phoneNumber/Data;
    invoke-static {v13}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$200(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/coinbase/api/internal/models/phoneNumber/Data;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 196
    const-string v13, "Coinbase"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got code from SMS: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/coinbase/android/phone/VerifyPhoneHandler$4;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    iget-object v13, v13, Lcom/coinbase/android/phone/VerifyPhoneHandler;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/coinbase/android/phone/VerifyPhoneHandler$4;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    iget-object v14, v14, Lcom/coinbase/android/phone/VerifyPhoneHandler;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/coinbase/android/phone/VerifyPhoneHandler$4;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # invokes: Lcom/coinbase/android/phone/VerifyPhoneHandler;->verifyPhoneNumber(Ljava/lang/String;)V
    invoke-static {v13, v3}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$700(Lcom/coinbase/android/phone/VerifyPhoneHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v3    # "code":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "pattern":Ljava/util/regex/Pattern;
    .end local v10    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "body":Ljava/lang/String;
    .end local v6    # "message":Landroid/telephony/SmsMessage;
    .end local v9    # "pdus":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 204
    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "Coinbase"

    const-string v12, "Exception in VerifyPhoneHandler BroadcastReceiver"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
