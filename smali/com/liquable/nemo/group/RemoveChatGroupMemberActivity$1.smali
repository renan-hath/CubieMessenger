.class Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$1;
.super Ljava/lang/Object;
.source "RemoveChatGroupMemberActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$1;->this$0:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 107
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    iget-object v1, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$1;->this$0:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    iget-object v2, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$1;->this$0:Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    # getter for: Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v2}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->access$000(Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->show(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/friend/model/Account;)V
    invoke-static {v1, v2, v0}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->access$100(Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/friend/model/Account;)V

    .line 108
    return-void
.end method
