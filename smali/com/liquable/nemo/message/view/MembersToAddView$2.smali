.class Lcom/liquable/nemo/message/view/MembersToAddView$2;
.super Ljava/lang/Object;
.source "MembersToAddView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/MembersToAddView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/MembersToAddView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/MembersToAddView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/MembersToAddView;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/liquable/nemo/message/view/MembersToAddView$2;->this$0:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "memberUid":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/message/view/MembersToAddView$2;->this$0:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/view/MembersToAddView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/message/view/MembersToAddView$2;->this$0:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/view/MembersToAddView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/liquable/nemo/profile/ViewAddFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
