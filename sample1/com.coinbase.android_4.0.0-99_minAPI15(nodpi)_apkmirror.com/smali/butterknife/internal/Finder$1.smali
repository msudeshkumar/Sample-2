.class final enum Lbutterknife/internal/Finder$1;
.super Lbutterknife/internal/Finder;
.source "Finder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbutterknife/internal/Finder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbutterknife/internal/Finder;-><init>(Ljava/lang/String;ILbutterknife/internal/Finder$1;)V

    return-void
.end method


# virtual methods
.method public findOptionalView(Ljava/lang/Object;I)Landroid/view/View;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "id"    # I

    .prologue
    .line 12
    check-cast p1, Landroid/view/View;

    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContext(Ljava/lang/Object;)Landroid/content/Context;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Landroid/view/View;

    .end local p1    # "source":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getResourceEntryName(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "id"    # I

    .prologue
    .line 20
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 22
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const-string v1, "<unavailable while editing>"

    .line 25
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Lbutterknife/internal/Finder;->getResourceEntryName(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
