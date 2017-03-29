.class Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TransferSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transfers/TransferSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailSuggestionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;",
        ">;"
    }
.end annotation


# instance fields
.field radius:I

.field final synthetic this$0:Lcom/coinbase/android/transfers/TransferSendFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/transfers/TransferSendFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 846
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    .line 847
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 844
    const/16 v0, 0x3c

    iput v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->radius:I

    .line 848
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f02007f

    const/4 v9, 0x0

    .line 852
    if-nez p2, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 854
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f03009d

    invoke-virtual {v4, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 857
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    iget-object v1, v6, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;->email:Ljava/lang/String;

    .line 858
    .local v1, "email":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    iget-object v5, v6, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;->name:Ljava/lang/String;

    .line 860
    .local v5, "name":Ljava/lang/String;
    move-object v0, v1

    .line 861
    .local v0, "display":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 862
    move-object v0, v5

    .line 865
    :cond_1
    const v6, 0x7f0d0165

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 866
    .local v3, "gravatarView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    .line 867
    invoke-static {v1}, Lcom/coinbase/android/utils/Utils;->getGravatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 868
    invoke-virtual {v6, v8}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 869
    invoke-virtual {v6, v8}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    new-instance v7, Lcom/coinbase/android/utils/RoundedTransformation;

    iget v8, p0, Lcom/coinbase/android/transfers/TransferSendFragment$EmailSuggestionAdapter;->radius:I

    invoke-direct {v7, v8, v9}, Lcom/coinbase/android/utils/RoundedTransformation;-><init>(II)V

    .line 870
    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 871
    invoke-virtual {v6, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 873
    const v6, 0x7f0d0166

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    const v6, 0x7f0d02c7

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 875
    .local v2, "emailLabel":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 876
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 882
    :goto_0
    return-object p2

    .line 879
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
