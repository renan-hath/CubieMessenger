.class Lcom/liquable/nemo/chat/CreateChatGroupActivity$3;
.super Ljava/lang/Object;
.source "CreateChatGroupActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/CreateChatGroupActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/CreateChatGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$3;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 156
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$3;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    # getter for: Lcom/liquable/nemo/chat/CreateChatGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->access$000(Lcom/liquable/nemo/chat/CreateChatGroupActivity;)Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->toggleChecked(I)V

    .line 157
    return-void
.end method
