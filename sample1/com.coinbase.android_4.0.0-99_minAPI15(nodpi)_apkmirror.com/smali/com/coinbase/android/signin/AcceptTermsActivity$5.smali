.class Lcom/coinbase/android/signin/AcceptTermsActivity$5;
.super Ljava/lang/Object;
.source "AcceptTermsActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/AcceptTermsActivity;->agreeToTerms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/AcceptTermsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/AcceptTermsActivity;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v1, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Lcom/coinbase/android/signin/AcceptTermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/AcceptTermsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 165
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 9
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    const/4 v8, 0x0

    .line 124
    iget-object v5, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v5, v5, Lcom/coinbase/android/signin/AcceptTermsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 126
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    iget-object v5, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v5, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 131
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "account_needs_user_agreement"

    .line 132
    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 133
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    :try_start_0
    iget-object v5, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v5, v5, Lcom/coinbase/android/signin/AcceptTermsActivity;->mMemoryStore:Lcom/coinbase/android/utils/MemoryStore;

    invoke-virtual {v5}, Lcom/coinbase/android/utils/MemoryStore;->getRequestedIntent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 139
    iget-object v5, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v5, v5, Lcom/coinbase/android/signin/AcceptTermsActivity;->mMemoryStore:Lcom/coinbase/android/utils/MemoryStore;

    invoke-virtual {v5}, Lcom/coinbase/android/utils/MemoryStore;->getRequestedIntent()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 144
    .local v4, "requestedIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-virtual {v5}, Lcom/coinbase/android/signin/AcceptTermsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "clazz":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v4    # "requestedIntent":Landroid/content/Intent;
    :goto_1
    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    iget-object v5, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-virtual {v5, v2}, Lcom/coinbase/android/signin/AcceptTermsActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    iget-object v5, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-virtual {v5}, Lcom/coinbase/android/signin/AcceptTermsActivity;->finish()V

    .line 156
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v5

    const-string v6, "Event - Accept Terms of Service"

    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v5

    const-string v6, "Event - Transactions dashboard shown"

    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/ClassNotFoundException;

    invoke-direct {v5}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$5;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    const-class v6, Lcom/coinbase/android/MainActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    goto :goto_2
.end method
