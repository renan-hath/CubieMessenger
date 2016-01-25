.class Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$3;
.super Landroid/os/AsyncTask;
.source "SelectSharingChatGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->loadChatsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/group/model/ChatGroup;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/group/model/ChatGroup;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$3;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 612
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->listVisibleChatGroups()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    .line 613
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->listShareableChatGroups()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 609
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$3;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;>;"
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 619
    .local v1, "visibleChatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 621
    .local v0, "shareableChatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$3;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    # getter for: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->recentChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$400(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->filterByNotChannel(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->reset(Ljava/util/List;)V

    .line 622
    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$3;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    # getter for: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->oneToOneChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$500(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/liquable/nemo/group/model/ChatGroupManager;->filterByOneToOneOrNot(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/group/model/ChatGroupManager;->filterByNotChannel(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->reset(Ljava/util/List;)V

    .line 624
    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$3;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    # getter for: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->groupChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$600(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/liquable/nemo/group/model/ChatGroupManager;->filterByOneToOneOrNot(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/group/model/ChatGroupManager;->filterByNotChannel(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->reset(Ljava/util/List;)V

    .line 626
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 609
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$3;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
