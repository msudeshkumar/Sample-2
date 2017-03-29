.class Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;
.super Ljava/lang/Object;
.source "JumioAcceptableDocumentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItem"
.end annotation


# instance fields
.field icon:I

.field final synthetic this$1:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;->this$1:Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;->icon:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;->icon:I

    .line 77
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioAcceptableDocumentsFragment$DocsAdapter$ListItem;->title:Ljava/lang/String;

    .line 69
    return-void
.end method
