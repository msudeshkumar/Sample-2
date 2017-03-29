.class public Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;
.super Landroid/widget/BaseAdapter;
.source "JumioAcceptableDocumentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "this$0"    # Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p3, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "icons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;->this$0:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment;

    .line 84
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;->items:Ljava/util/List;

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 87
    new-instance v1, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;

    invoke-direct {v1, p0}, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;-><init>(Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;)V

    .line 88
    .local v1, "item":Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;->title:Ljava/lang/String;

    .line 89
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;->icon:I

    .line 90
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "item":Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;
    :cond_0
    iput-object p2, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;->context:Landroid/content/Context;

    .line 93
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 112
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030019

    const/4 v5, 0x0

    .line 113
    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "rowView":Landroid/view/View;
    const v3, 0x7f0d009b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 116
    .local v2, "text":Landroid/widget/TextView;
    const v3, 0x7f0d0074

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;

    invoke-virtual {v3}, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;

    invoke-virtual {v3}, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;->getIcon()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    return-object v1
.end method
