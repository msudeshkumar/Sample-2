.class public Lcom/coinbase/android/oauth/AccessGrantActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "AccessGrantActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/coinbase/android/CoinbaseActivity$RequiresAuthentication;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;,
        Lcom/coinbase/android/oauth/AccessGrantActivity$UpdateAvatarTask;
    }
.end annotation


# instance fields
.field mAuthorizeButton:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00b0
    .end annotation
.end field

.field mClientId:Ljava/lang/String;

.field mDenyButton:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00af
    .end annotation
.end field

.field mForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00aa
    .end annotation
.end field

.field mIconView:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00ad
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mMeta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

.field mPermissionsView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00ae
    .end annotation
.end field

.field mProgressView:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x102000d
    .end annotation
.end field

.field mRedirectUri:Ljava/lang/String;

.field mResponseType:Ljava/lang/String;

.field mScope:Ljava/lang/String;

.field mState:Ljava/lang/String;

.field mUserAvatarView:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00ac
    .end annotation
.end field

.field mUserView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00ab
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/coinbase/android/oauth/AccessGrantActivity;->getPermissionDescription(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPermissionDescription(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x7f07010e

    .line 178
    const-string v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 181
    :cond_0
    const-string v0, "merchant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const v0, 0x7f070180

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_1
    const-string v0, "balance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    const v0, 0x7f070297

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_2
    const-string v0, "addresses"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    const v0, 0x7f070298

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_3
    const-string v0, "buttons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    const v0, 0x7f0700d9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_4
    const-string v0, "buy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    const v0, 0x7f07009c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_5
    const-string v0, "contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    const v0, 0x7f07015a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_6
    const-string v0, "orders"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    const v0, 0x7f07015b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_7
    const-string v0, "sell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    const v0, 0x7f0701f1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_8
    const-string v0, "transactions"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 206
    const v0, 0x7f070299

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 208
    :cond_9
    const-string v0, "send"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 209
    const v0, 0x7f0701ba

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 211
    :cond_a
    const-string v0, "send:bypass_2fa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 212
    const v0, 0x7f0701b0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 214
    :cond_b
    const-string v0, "request"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 215
    const v0, 0x7f0701b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 217
    :cond_c
    const-string v0, "transfer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 218
    const v0, 0x7f0701bb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 220
    :cond_d
    const-string v0, "transfers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 221
    const v0, 0x7f0701bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 223
    :cond_e
    const-string v0, "user"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 224
    const v0, 0x7f0701bd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 226
    :cond_f
    const-string v0, "recurring_payments"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 227
    const v0, 0x7f0701b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 229
    :cond_10
    const-string v0, "oauth_apps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 230
    const v0, 0x7f0701b5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 232
    :cond_11
    const-string v0, "reports"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 233
    const v0, 0x7f0701b8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 236
    :cond_12
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mAuthorizeButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mForm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    new-instance v0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;

    iget-object v3, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mResponseType:Ljava/lang/String;

    iget-object v4, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mClientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mRedirectUri:Ljava/lang/String;

    iget-object v6, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mScope:Ljava/lang/String;

    iget-object v7, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mMeta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    iget-object v8, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mState:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;-><init>(Lcom/coinbase/android/oauth/AccessGrantActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->execute()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mDenyButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 172
    invoke-virtual {p0, v1}, Lcom/coinbase/android/oauth/AccessGrantActivity;->setResult(I)V

    .line 173
    invoke-virtual {p0}, Lcom/coinbase/android/oauth/AccessGrantActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/coinbase/android/oauth/AccessGrantActivity;->setContentView(I)V

    .line 139
    invoke-virtual {p0}, Lcom/coinbase/android/oauth/AccessGrantActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 140
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_0

    .line 141
    const-string v0, "response_type"

    invoke-virtual {v11, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mResponseType:Ljava/lang/String;

    .line 142
    const-string v0, "client_id"

    invoke-virtual {v11, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mClientId:Ljava/lang/String;

    .line 143
    const-string v0, "redirect_uri"

    invoke-virtual {v11, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mRedirectUri:Ljava/lang/String;

    .line 144
    const-string v0, "scope"

    invoke-virtual {v11, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mScope:Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    invoke-direct {v0}, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mMeta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    .line 146
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mMeta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    const-string v1, "meta[name]"

    invoke-virtual {v11, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;->setName(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mMeta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    const-string v1, "meta[send_limit_amount]"

    invoke-virtual {v11, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;->setSendLimitAmount(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mMeta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    const-string v1, "meta[send_limit_currency]"

    invoke-virtual {v11, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;->setSendLimitCurrency(Ljava/lang/String;)V

    .line 149
    const-string v0, "state"

    invoke-virtual {v11, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mState:Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;

    iget-object v3, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mResponseType:Ljava/lang/String;

    iget-object v4, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mClientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mRedirectUri:Ljava/lang/String;

    iget-object v6, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mScope:Ljava/lang/String;

    iget-object v7, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mMeta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    iget-object v8, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mState:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;-><init>(Lcom/coinbase/android/oauth/AccessGrantActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->execute()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getActiveUserEmail()Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, "email":Ljava/lang/String;
    const v0, 0x7f070202

    invoke-virtual {p0, v0}, Lcom/coinbase/android/oauth/AccessGrantActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v10, v1, v13

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "userString":Ljava/lang/String;
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mUserView:Landroid/widget/TextView;

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v0, Lcom/coinbase/android/oauth/AccessGrantActivity$UpdateAvatarTask;

    invoke-direct {v0, p0, v10}, Lcom/coinbase/android/oauth/AccessGrantActivity$UpdateAvatarTask;-><init>(Lcom/coinbase/android/oauth/AccessGrantActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coinbase/android/oauth/AccessGrantActivity$UpdateAvatarTask;->execute()V

    .line 160
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mAuthorizeButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mDenyButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method
