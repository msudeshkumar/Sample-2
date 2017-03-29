.class Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SlidingDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/ui/SlidingDrawerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;Landroid/content/Context;II)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I

    .prologue
    .line 92
    iput-object p1, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    .line 93
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 94
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v3, 0x7f0d009b

    const v5, 0x7f0d0071

    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 100
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;

    invoke-virtual {v2}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->isSelected()Z

    move-result v0

    .line 102
    .local v0, "isSelected":Z
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 103
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    .line 104
    invoke-virtual {v3}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Roboto-Medium"

    invoke-static {v3, v4}, Lcom/coinbase/android/ui/FontManager;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 107
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;

    iget v3, v3, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->drawableId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    return-object v1
.end method
