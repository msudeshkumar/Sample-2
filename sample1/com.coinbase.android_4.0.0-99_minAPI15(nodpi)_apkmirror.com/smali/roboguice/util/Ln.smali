.class public final Lroboguice/util/Ln;
.super Ljava/lang/Object;
.source "Ln.java"


# static fields
.field protected static lnImpl:Lroboguice/util/LnInterface;
    .annotation runtime Lcom/google/inject/Inject;
        optional = true
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lroboguice/util/LnImpl;

    invoke-direct {v0}, Lroboguice/util/LnImpl;-><init>()V

    sput-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "s1"    # Ljava/lang/Object;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 85
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1}, Lroboguice/util/LnInterface;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->d(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 89
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1, p2}, Lroboguice/util/LnInterface;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static varargs e(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "s1"    # Ljava/lang/Object;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 121
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1}, Lroboguice/util/LnInterface;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->e(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 125
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1, p2}, Lroboguice/util/LnInterface;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getLoggingLevel()I
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0}, Lroboguice/util/LnInterface;->getLoggingLevel()I

    move-result v0

    return v0
.end method

.method public static varargs i(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "s1"    # Ljava/lang/Object;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 97
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1}, Lroboguice/util/LnInterface;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->i(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 101
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1, p2}, Lroboguice/util/LnInterface;->i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0}, Lroboguice/util/LnInterface;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public static isVerboseEnabled()Z
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0}, Lroboguice/util/LnInterface;->isVerboseEnabled()Z

    move-result v0

    return v0
.end method

.method public static logLevelToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "loglevel"    # I

    .prologue
    .line 145
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->logLevelToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setLoggingLevel(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 141
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->setLoggingLevel(I)V

    .line 142
    return-void
.end method

.method public static varargs v(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "s1"    # Ljava/lang/Object;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 73
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1}, Lroboguice/util/LnInterface;->v(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->v(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 77
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1, p2}, Lroboguice/util/LnInterface;->v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static varargs w(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "s1"    # Ljava/lang/Object;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 109
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1}, Lroboguice/util/LnInterface;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->w(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static varargs w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 113
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1, p2}, Lroboguice/util/LnInterface;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
