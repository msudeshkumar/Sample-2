.class Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;
.super Ljava/lang/Object;
.source "FloatingActionsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;


# direct methods
.method constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;->this$0:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->toggle()V

    .line 184
    return-void
.end method
