.class Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;
.super Ljava/lang/Object;
.source "ViewFriendProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->changeDisplayName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

.field final synthetic val$editNicknameEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    iput-object p2, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;->val$editNicknameEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;->val$editNicknameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "input":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v1}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/model/Account;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const/4 v0, 0x0

    .line 72
    :cond_1
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v2}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/friend/model/FriendManager;->updateDisplayName(Lcom/liquable/nemo/friend/model/Account;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v2}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->setDisplayName(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    iget-object v2, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v2}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendUpdated(Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v3, p0, Lcom/liquable/nemo/profile/ViewFriendProfileFragment$1;->this$0:Lcom/liquable/nemo/profile/ViewFriendProfileFragment;

    .line 76
    # getter for: Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->friend:Lcom/liquable/nemo/friend/model/Account;
    invoke-static {v3}, Lcom/liquable/nemo/profile/ViewFriendProfileFragment;->access$000(Lcom/liquable/nemo/profile/ViewFriendProfileFragment;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->enableOneToOneChatGroup(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupTitleChanged(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->changeFriendDisplayName()V

    goto :goto_0
.end method
