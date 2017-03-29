.class Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;
.super Ljava/lang/Object;
.source "SlidingDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/ui/SlidingDrawerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionsListItem"
.end annotation


# instance fields
.field public drawableId:I

.field public mintent:Lcom/coinbase/android/ui/Mintent;

.field public text:Ljava/lang/String;

.field final synthetic this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;IILcom/coinbase/android/ui/Mintent;)V
    .locals 1
    .param p2, "text"    # I
    .param p3, "drawableId"    # I
    .param p4, "mintent"    # Lcom/coinbase/android/ui/Mintent;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1, p2}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->text:Ljava/lang/String;

    .line 66
    iput p3, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->drawableId:I

    .line 67
    iput-object p4, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->mintent:Lcom/coinbase/android/ui/Mintent;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;Ljava/lang/String;ILcom/coinbase/android/ui/Mintent;)V
    .locals 0
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "drawableId"    # I
    .param p4, "mintent"    # Lcom/coinbase/android/ui/Mintent;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->text:Ljava/lang/String;

    .line 60
    iput p3, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->drawableId:I

    .line 61
    iput-object p4, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->mintent:Lcom/coinbase/android/ui/Mintent;

    .line 62
    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/coinbase/android/CoinbaseDrawerActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/CoinbaseDrawerActivity;->getSelectedSection()Lcom/coinbase/android/ui/Mintent;

    move-result-object v0

    .line 76
    .local v0, "selectedIntent":Lcom/coinbase/android/ui/Mintent;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->mintent:Lcom/coinbase/android/ui/Mintent;

    iget-object v1, v1, Lcom/coinbase/android/ui/Mintent;->section:Lcom/coinbase/android/utils/Section;

    iget-object v2, v0, Lcom/coinbase/android/ui/Mintent;->section:Lcom/coinbase/android/utils/Section;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->mintent:Lcom/coinbase/android/ui/Mintent;

    iget-object v1, v1, Lcom/coinbase/android/ui/Mintent;->data:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/coinbase/android/ui/Mintent;->data:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->mintent:Lcom/coinbase/android/ui/Mintent;

    iget-object v1, v1, Lcom/coinbase/android/ui/Mintent;->data:Ljava/lang/Object;

    check-cast v1, Lcom/coinbase/v2/models/account/Data;

    .line 81
    invoke-virtual {v1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Lcom/coinbase/android/ui/Mintent;->data:Ljava/lang/Object;

    check-cast v1, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->text:Ljava/lang/String;

    return-object v0
.end method
