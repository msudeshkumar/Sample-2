.class public Lcom/coinbase/android/event/SectionSelectedEvent;
.super Ljava/lang/Object;
.source "SectionSelectedEvent.java"


# instance fields
.field selected:Lcom/coinbase/android/utils/Section;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/utils/Section;)V
    .locals 0
    .param p1, "selected"    # Lcom/coinbase/android/utils/Section;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/coinbase/android/event/SectionSelectedEvent;->selected:Lcom/coinbase/android/utils/Section;

    .line 11
    return-void
.end method
