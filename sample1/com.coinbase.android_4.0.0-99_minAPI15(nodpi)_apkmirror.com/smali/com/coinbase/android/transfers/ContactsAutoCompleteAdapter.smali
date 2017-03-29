.class public Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContactsAutoCompleteAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field radius:I

.field private resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 28
    const/16 v0, 0x3c

    iput v0, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->radius:I

    .line 37
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->fetchContacts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private fetchContacts(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 100
    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/coinbase/api/internal/CoinbaseInternal;->getContacts(Ljava/lang/String;)Lcom/coinbase/v1/entity/ContactsResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v1/entity/ContactsResponse;->getContacts()Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Contact;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Contact;

    .line 102
    .local v0, "contact":Lcom/coinbase/v1/entity/Contact;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/Contact;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v0    # "contact":Lcom/coinbase/v1/entity/Contact;
    .end local v1    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Contact;>;"
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter$1;

    invoke-direct {v0, p0}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter$1;-><init>(Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;)V

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->resultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 52
    if-nez p2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 54
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030052

    invoke-virtual {v2, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 57
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "email":Ljava/lang/String;
    const v3, 0x7f0d0165

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 59
    .local v1, "gravatarView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-static {v0}, Lcom/coinbase/android/utils/Utils;->getGravatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/utils/RoundedTransformation;

    iget v5, p0, Lcom/coinbase/android/transfers/ContactsAutoCompleteAdapter;->radius:I

    invoke-direct {v4, v5, v6}, Lcom/coinbase/android/utils/RoundedTransformation;-><init>(II)V

    .line 60
    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 62
    const v3, 0x7f0d0166

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-object p2
.end method
