.class Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;
.super Lroboguice/util/RoboAsyncTask;
.source "TransferSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transfers/TransferSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetGoogleSuggestionsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lroboguice/util/RoboAsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mFilter:Ljava/lang/String;

.field final synthetic this$0:Lcom/coinbase/android/transfers/TransferSendFragment;


# direct methods
.method protected constructor <init>(Lcom/coinbase/android/transfers/TransferSendFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/TransferSendFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "filter"    # Ljava/lang/String;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    .line 901
    invoke-direct {p0, p2}, Lroboguice/util/RoboAsyncTask;-><init>(Landroid/content/Context;)V

    .line 902
    iput-object p3, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->mFilter:Ljava/lang/String;

    .line 903
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
    .line 896
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 907
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v9, "emlRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 909
    .local v10, "emlRecsHS":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 910
    .local v6, "context":Landroid/content/Context;
    if-nez v6, :cond_0

    .line 941
    :goto_0
    return-object v4

    .line 913
    :cond_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 914
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v2, v12

    const-string v1, "display_name"

    aput-object v1, v2, v13

    .line 920
    .local v2, "PROJECTION":[Ljava/lang/String;
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->mFilter:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 921
    const/4 v3, 0x0

    .line 926
    .local v3, "filter":Ljava/lang/String;
    :goto_1
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 927
    .local v7, "cur":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 930
    :cond_1
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 931
    .local v8, "emlAddr":Ljava/lang/String;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 934
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 935
    new-instance v1, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    invoke-direct {v1, v8, v11, v4}, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/android/transfers/TransferSendFragment$1;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 940
    .end local v8    # "emlAddr":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v9

    .line 941
    goto :goto_0

    .line 923
    .end local v3    # "filter":Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data1 LIKE \'%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->mFilter:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%\' OR "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "display_name"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " LIKE \'%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->mFilter:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "filter":Ljava/lang/String;
    goto :goto_1
.end method

.method protected onFinally()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

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
    .line 896
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;>;"
    const/4 v2, 0x0

    .line 946
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 947
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mContactsHeader:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$800(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 959
    :goto_0
    return-void

    .line 951
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 952
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mContactsHeader:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$800(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 958
    :cond_2
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mGoogleSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;
    invoke-static {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$900(Lcom/coinbase/android/transfers/TransferSendFragment;)Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 954
    :cond_3
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mContactsHeader:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$800(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    .line 956
    .local v0, "suggestion":Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment$GetGoogleSuggestionsTask;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mGoogleSuggestionsAdapter:Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;
    invoke-static {v2}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$900(Lcom/coinbase/android/transfers/TransferSendFragment;)Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1
.end method
