.class Lcom/liquable/nemo/message/view/MembersToAddView$1$1;
.super Ljava/lang/Object;
.source "MembersToAddView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/MembersToAddView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/message/view/MembersToAddView$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/MembersToAddView$1;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/message/view/MembersToAddView$1;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/liquable/nemo/message/view/MembersToAddView$1$1;->this$1:Lcom/liquable/nemo/message/view/MembersToAddView$1;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/MembersToAddView$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/message/view/MembersToAddView$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 74
    return-void
.end method
