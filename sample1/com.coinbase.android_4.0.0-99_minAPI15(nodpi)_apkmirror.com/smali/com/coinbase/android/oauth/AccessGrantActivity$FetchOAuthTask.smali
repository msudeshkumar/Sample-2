.class Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "AccessGrantActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/oauth/AccessGrantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchOAuthTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;",
        ">;"
    }
.end annotation


# instance fields
.field clientId:Ljava/lang/String;

.field meta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

.field redirectUri:Ljava/lang/String;

.field responseType:Ljava/lang/String;

.field scope:Ljava/lang/String;

.field state:Ljava/lang/String;

.field final synthetic this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

.field userConfirmed:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Lcom/coinbase/android/oauth/AccessGrantActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "responseType"    # Ljava/lang/String;
    .param p4, "clientId"    # Ljava/lang/String;
    .param p5, "redirectUri"    # Ljava/lang/String;
    .param p6, "scope"    # Ljava/lang/String;
    .param p7, "meta"    # Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;
    .param p8, "state"    # Ljava/lang/String;
    .param p9, "userConfirmed"    # Ljava/lang/Boolean;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    .line 50
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p3, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->responseType:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->clientId:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->redirectUri:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->scope:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->meta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    .line 56
    iput-object p8, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->state:Ljava/lang/String;

    .line 57
    iput-object p9, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->userConfirmed:Ljava/lang/Boolean;

    .line 58
    return-void
.end method


# virtual methods
.method public call()Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->responseType:Ljava/lang/String;

    iget-object v2, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->redirectUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->scope:Ljava/lang/String;

    iget-object v5, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->meta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    iget-object v6, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->state:Ljava/lang/String;

    iget-object v7, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->userConfirmed:Ljava/lang/Boolean;

    invoke-virtual/range {v0 .. v7}, Lcom/coinbase/api/internal/CoinbaseInternal;->createOAuthAccessGrant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->call()Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/coinbase/android/task/ApiTask;->onException(Ljava/lang/Exception;)V

    .line 95
    const-string v0, "Coinbase"

    const-string v1, "Could not fetch tokens"

    invoke-static {v0, v1}, Lcom/coinbase/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    iget-object v0, v0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    iget-object v0, v0, Lcom/coinbase/android/oauth/AccessGrantActivity;->mForm:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    return-void
.end method

.method protected onSuccess(Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;)V
    .locals 12
    .param p1, "response"    # Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/coinbase/android/task/ApiTask;->onSuccess(Ljava/lang/Object;)V

    .line 68
    iget-object v8, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    iget-object v8, v8, Lcom/coinbase/android/oauth/AccessGrantActivity;->mProgressView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v8, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    iget-object v8, v8, Lcom/coinbase/android/oauth/AccessGrantActivity;->mForm:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;->getAuthorized()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;->getAccessGrant()Lcom/coinbase/api/internal/entity/OAuthAccessGrant;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->getRedirectUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;->getAccessGrant()Lcom/coinbase/api/internal/entity/OAuthAccessGrant;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->getRedirectUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 74
    .local v6, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    invoke-virtual {v7, v3}, Lcom/coinbase/android/oauth/AccessGrantActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    iget-object v7, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    invoke-virtual {v7}, Lcom/coinbase/android/oauth/AccessGrantActivity;->finish()V

    .line 90
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;->getAccessGrant()Lcom/coinbase/api/internal/entity/OAuthAccessGrant;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->getApplication()Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;->getName()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "appName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v2, "builder":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    const v9, 0x7f07007c

    invoke-virtual {v8, v9}, Lcom/coinbase/android/oauth/AccessGrantActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;->getAccessGrant()Lcom/coinbase/api/internal/entity/OAuthAccessGrant;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->getScope()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "scopes":Ljava/lang/String;
    const-string v8, "[, ]"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v4, v8, v7

    .line 84
    .local v4, "scope":Ljava/lang/String;
    const-string v10, "<br>- "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    # invokes: Lcom/coinbase/android/oauth/AccessGrantActivity;->getPermissionDescription(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v4, v11}, Lcom/coinbase/android/oauth/AccessGrantActivity;->access$000(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 85
    .end local v4    # "scope":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    iget-object v7, v7, Lcom/coinbase/android/oauth/AccessGrantActivity;->mPermissionsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;->getAccessGrant()Lcom/coinbase/api/internal/entity/OAuthAccessGrant;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coinbase/api/internal/entity/OAuthAccessGrant;->getApplication()Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Application;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "appIcon":Ljava/lang/String;
    iget-object v7, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    invoke-static {v7}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    iget-object v8, p0, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->this$0:Lcom/coinbase/android/oauth/AccessGrantActivity;

    iget-object v8, v8, Lcom/coinbase/android/oauth/AccessGrantActivity;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    check-cast p1, Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/oauth/AccessGrantActivity$FetchOAuthTask;->onSuccess(Lcom/coinbase/api/internal/entity/OAuthAccessGrantResponse;)V

    return-void
.end method
