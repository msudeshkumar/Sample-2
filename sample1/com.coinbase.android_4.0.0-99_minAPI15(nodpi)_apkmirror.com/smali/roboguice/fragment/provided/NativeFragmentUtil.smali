.class public Lroboguice/fragment/provided/NativeFragmentUtil;
.super Ljava/lang/Object;
.source "NativeFragmentUtil.java"

# interfaces
.implements Lroboguice/fragment/FragmentUtil$f;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/fragment/provided/NativeFragmentUtil$FragmentManagerProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lroboguice/fragment/FragmentUtil$f",
        "<",
        "Landroid/app/Fragment;",
        "Landroid/app/FragmentManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    const-class v0, Landroid/app/FragmentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    return-void
.end method


# virtual methods
.method public findFragmentById(Landroid/app/FragmentManager;I)Landroid/app/Fragment;
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "id"    # I

    .prologue
    .line 39
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findFragmentById(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 20
    check-cast p1, Landroid/app/FragmentManager;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lroboguice/fragment/provided/NativeFragmentUtil;->findFragmentById(Landroid/app/FragmentManager;I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findFragmentByTag(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findFragmentByTag(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    check-cast p1, Landroid/app/FragmentManager;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lroboguice/fragment/provided/NativeFragmentUtil;->findFragmentByTag(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public fragmentManagerProviderType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lroboguice/fragment/provided/NativeFragmentUtil$FragmentManagerProvider;

    return-object v0
.end method

.method public fragmentManagerType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/app/FragmentManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const-class v0, Landroid/app/FragmentManager;

    return-object v0
.end method

.method public fragmentType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    const-class v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public getView(Landroid/app/Fragment;)Landroid/view/View;
    .locals 1
    .param p1, "frag"    # Landroid/app/Fragment;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getView(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Landroid/app/Fragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lroboguice/fragment/provided/NativeFragmentUtil;->getView(Landroid/app/Fragment;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
