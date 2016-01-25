.class Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;
.super Ljava/lang/Object;
.source "CreateChatGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$groupNameEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/CreateChatGroupActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->val$groupNameEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 78
    iget-object v2, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->val$groupNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "groupName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x19

    if-le v2, v3, :cond_1

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    iget-object v3, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    const v4, 0x7f0d02dd

    .line 81
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 80
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 123
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    # getter for: Lcom/liquable/nemo/chat/CreateChatGroupActivity;->friendListAdapter:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->access$000(Lcom/liquable/nemo/chat/CreateChatGroupActivity;)Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->getSelectedMemberIds()Ljava/util/List;

    move-result-object v1

    .line 88
    .local v1, "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 89
    iget-object v2, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    iget-object v3, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    const v4, 0x7f0d038d

    .line 90
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 89
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 94
    :cond_2
    new-instance v2, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;

    iget-object v3, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;-><init>(Lcom/liquable/nemo/chat/CreateChatGroupActivity$1;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    new-array v3, v5, [Ljava/lang/Void;

    .line 121
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/CreateChatGroupActivity$1$1;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
