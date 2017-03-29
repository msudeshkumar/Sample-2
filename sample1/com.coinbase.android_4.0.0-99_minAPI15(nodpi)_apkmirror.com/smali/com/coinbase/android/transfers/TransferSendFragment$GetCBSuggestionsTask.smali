.class Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "TransferSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transfers/TransferSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCBSuggestionsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/coinbase/v1/entity/Contact;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mFilter:Ljava/lang/String;

.field final synthetic this$0:Lcom/coinbase/android/transfers/TransferSendFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/transfers/TransferSendFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "filter"    # Ljava/lang/String;

    .prologue
    .line 993
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    .line 994
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 995
    iput-object p3, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->mFilter:Ljava/lang/String;

    .line 996
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Contact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1001
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->getContacts()Lcom/coinbase/v1/entity/ContactsResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v1/entity/ContactsResponse;->getContacts()Ljava/util/List;

    move-result-object v0

    .line 1006
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Contact;>;"
    :goto_0
    return-object v0

    .line 1004
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Contact;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->mFilter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->getContacts(Ljava/lang/String;)Lcom/coinbase/v1/entity/ContactsResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v1/entity/ContactsResponse;->getContacts()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Contact;>;"
    goto :goto_0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mRecentContactsHeader:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$1100(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1028
    const-string v0, "Coinbase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in fetching contact suggestions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method protected onFinally()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1033
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    :goto_0
    return-void

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    const/4 v1, 0x0

    # setter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mGetGoogleSuggestionsTask:Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;
    invoke-static {v0, v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$1002(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;)Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;

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
    .line 989
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Contact;>;"
    const/4 v5, 0x0

    const/16 v2, 0x8

    .line 1011
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mRecentContactsHeader:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$1100(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1023
    :goto_0
    return-void

    .line 1015
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1016
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mRecentContactsHeader:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$1100(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1022
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mCBSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;
    invoke-static {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$1200(Lcom/coinbase/android/transfers/TransferSendFragment;)Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1018
    :cond_2
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mRecentContactsHeader:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$1100(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1019
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Contact;

    .line 1020
    .local v0, "contact":Lcom/coinbase/v1/entity/Contact;
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetCBSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mCBSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;
    invoke-static {v2}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$1200(Lcom/coinbase/android/transfers/TransferSendFragment;)Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    invoke-virtual {v0}, Lcom/coinbase/v1/entity/Contact;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5, v5}, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/android/transfers/TransferSendFragment$1;)V

    invoke-virtual {v2, v3}, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1
.end method
