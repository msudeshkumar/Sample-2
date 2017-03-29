.class public abstract enum Lbutterknife/internal/Finder;
.super Ljava/lang/Enum;
.source "Finder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbutterknife/internal/Finder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbutterknife/internal/Finder;

.field public static final enum ACTIVITY:Lbutterknife/internal/Finder;

.field public static final enum DIALOG:Lbutterknife/internal/Finder;

.field public static final enum VIEW:Lbutterknife/internal/Finder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lbutterknife/internal/Finder$1;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v2}, Lbutterknife/internal/Finder$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbutterknife/internal/Finder;->VIEW:Lbutterknife/internal/Finder;

    .line 28
    new-instance v0, Lbutterknife/internal/Finder$2;

    const-string v1, "ACTIVITY"

    invoke-direct {v0, v1, v3}, Lbutterknife/internal/Finder$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbutterknife/internal/Finder;->ACTIVITY:Lbutterknife/internal/Finder;

    .line 37
    new-instance v0, Lbutterknife/internal/Finder$3;

    const-string v1, "DIALOG"

    invoke-direct {v0, v1, v4}, Lbutterknife/internal/Finder$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbutterknife/internal/Finder;->DIALOG:Lbutterknife/internal/Finder;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lbutterknife/internal/Finder;

    sget-object v1, Lbutterknife/internal/Finder;->VIEW:Lbutterknife/internal/Finder;

    aput-object v1, v0, v2

    sget-object v1, Lbutterknife/internal/Finder;->ACTIVITY:Lbutterknife/internal/Finder;

    aput-object v1, v0, v3

    sget-object v1, Lbutterknife/internal/Finder;->DIALOG:Lbutterknife/internal/Finder;

    aput-object v1, v0, v4

    sput-object v0, Lbutterknife/internal/Finder;->$VALUES:[Lbutterknife/internal/Finder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILbutterknife/internal/Finder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lbutterknife/internal/Finder$1;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lbutterknife/internal/Finder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbutterknife/internal/Finder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lbutterknife/internal/Finder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/Finder;

    return-object v0
.end method

.method public static values()[Lbutterknife/internal/Finder;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lbutterknife/internal/Finder;->$VALUES:[Lbutterknife/internal/Finder;

    invoke-virtual {v0}, [Lbutterknife/internal/Finder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbutterknife/internal/Finder;

    return-object v0
.end method


# virtual methods
.method public abstract findOptionalView(Ljava/lang/Object;I)Landroid/view/View;
.end method

.method public final findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "id"    # I
    .param p3, "who"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lbutterknife/internal/Finder;->findOptionalView(Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 68
    return-object v1

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2}, Lbutterknife/internal/Finder;->getResourceEntryName(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Required view \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not found. If this view is optional add \'@Nullable\' (fields) or \'@Optional\' (methods) annotation."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "id"    # I
    .param p3, "who"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 82
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lbutterknife/internal/Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, "view":Landroid/view/View;
    :try_start_0
    invoke-virtual {p4, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, v2, p2}, Lbutterknife/internal/Finder;->getResourceEntryName(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was of the wrong type. See cause for more info."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public abstract getContext(Ljava/lang/Object;)Landroid/content/Context;
.end method

.method protected getResourceEntryName(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "id"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lbutterknife/internal/Finder;->getContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
