.class Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter$1;
.super Landroid/widget/Filter;
.source "ContactsAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter$1;->this$0:Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 73
    .local v0, "filterResults":Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter$1;->this$0:Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

    iget-object v2, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter$1;->this$0:Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->fetchContacts(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->access$100(Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    # setter for: Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->access$002(Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 78
    iget-object v1, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter$1;->this$0:Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

    # getter for: Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->access$000(Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter$1;->this$0:Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

    # getter for: Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->access$000(Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 81
    :cond_0
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 86
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter$1;->this$0:Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->notifyDataSetChanged()V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter$1;->this$0:Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
