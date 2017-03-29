.class Lcom/google/inject/spi/InjectionPoint$InjectableMembers;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/spi/InjectionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InjectableMembers"
.end annotation


# instance fields
.field head:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

.field tail:Lcom/google/inject/spi/InjectionPoint$InjectableMember;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/google/inject/spi/InjectionPoint$InjectableMember;)V
    .locals 1
    .param p1, "member"    # Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    if-nez v0, :cond_0

    .line 497
    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->tail:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    .line 503
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->tail:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object v0, p1, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->previous:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    .line 500
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->tail:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object p1, v0, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    .line 501
    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->tail:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    goto :goto_0
.end method

.method addAll(Lcom/google/inject/spi/InjectionPoint$InjectableMembers;)V
    .locals 1
    .param p1, "members"    # Lcom/google/inject/spi/InjectionPoint$InjectableMembers;

    .prologue
    .line 506
    iget-object v0, p1, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    .line 507
    .local v0, "memberToAdd":Lcom/google/inject/spi/InjectionPoint$InjectableMember;
    :goto_0
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0, v0}, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->add(Lcom/google/inject/spi/InjectionPoint$InjectableMember;)V

    .line 509
    iget-object v0, v0, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    goto :goto_0

    .line 511
    :cond_0
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method remove(Lcom/google/inject/spi/InjectionPoint$InjectableMember;)V
    .locals 2
    .param p1, "member"    # Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    .prologue
    .line 514
    iget-object v0, p1, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->previous:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p1, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->previous:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    iget-object v1, p1, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object v1, v0, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    .line 517
    :cond_0
    iget-object v0, p1, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p1, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    iget-object v1, p1, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->previous:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object v1, v0, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->previous:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    if-ne v0, p1, :cond_2

    .line 521
    iget-object v0, p1, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->next:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object v0, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->head:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->tail:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    if-ne v0, p1, :cond_3

    .line 524
    iget-object v0, p1, Lcom/google/inject/spi/InjectionPoint$InjectableMember;->previous:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    iput-object v0, p0, Lcom/google/inject/spi/InjectionPoint$InjectableMembers;->tail:Lcom/google/inject/spi/InjectionPoint$InjectableMember;

    .line 526
    :cond_3
    return-void
.end method
