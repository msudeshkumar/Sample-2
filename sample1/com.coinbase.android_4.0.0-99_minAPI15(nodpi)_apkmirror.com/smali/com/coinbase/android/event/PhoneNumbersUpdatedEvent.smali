.class public Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;
.super Ljava/lang/Object;
.source "PhoneNumbersUpdatedEvent.java"


# instance fields
.field public toastMessage:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "toast"    # Ljava/lang/Object;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;->toastMessage:Ljava/lang/Object;

    .line 9
    return-void
.end method
