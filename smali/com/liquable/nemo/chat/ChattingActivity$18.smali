.class Lcom/liquable/nemo/chat/ChattingActivity$18;
.super Landroid/os/AsyncTask;
.source "ChattingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->loadMessages(Z)V
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
        "Lcom/liquable/nemo/message/model/DomainMessage;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;

.field final synthetic val$enteringSameGroup:Z


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput-boolean p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->val$enteringSameGroup:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private indexOfFirstUnread(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1058
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1059
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/DomainMessage;->isReadMark()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1063
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1058
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1063
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 8
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
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0xc8

    const/16 v2, 0x1e

    const/4 v3, 0x0

    .line 1044
    const/4 v1, 0x0

    .line 1045
    .local v1, "unreadCount":I
    iget-boolean v4, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->val$enteringSameGroup:Z

    if-nez v4, :cond_1

    .line 1046
    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v4}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getUnreadCount()I

    move-result v1

    .line 1047
    const/16 v0, 0xa

    .line 1048
    .local v0, "bufferToPreventLoadMore":I
    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    if-lez v1, :cond_0

    .line 1049
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1048
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    :cond_0
    # setter for: Lcom/liquable/nemo/chat/ChattingActivity;->messageCountOnScreen:I
    invoke-static {v4, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1102(Lcom/liquable/nemo/chat/ChattingActivity;I)I

    .line 1051
    .end local v0    # "bufferToPreventLoadMore":I
    :cond_1
    new-instance v4, Landroid/util/Pair;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v5}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 1052
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->messageCountOnScreen:I
    invoke-static {v6}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1100(Lcom/liquable/nemo/chat/ChattingActivity;)I

    move-result v6

    .line 1051
    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->listMessages(Ljava/lang/String;II)Ljava/util/List;
    invoke-static {v2, v5, v6, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1200(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    if-le v1, v7, :cond_2

    const/4 v2, 0x1

    .line 1053
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :cond_2
    move v2, v3

    .line 1051
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1040
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$18;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1068
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 1069
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1070
    .local v2, "tooManyUnreadMessages":Z
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/ChattingActivity$18;->indexOfFirstUnread(Ljava/util/List;)I

    move-result v0

    .line 1071
    .local v0, "index":I
    if-eq v0, v5, :cond_0

    if-eqz v2, :cond_2

    .line 1072
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1300(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/ChattingAdapter;->clearUnreadMessageStartIndex()V

    .line 1076
    :goto_0
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1300(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v4}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/liquable/nemo/chat/ChattingAdapter;->reset(Ljava/util/List;Z)V

    .line 1079
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "SCROLL_TO_BOTTOM"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1080
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "SCROLL_TO_BOTTOM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1081
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->scrollToLast()V
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1400(Lcom/liquable/nemo/chat/ChattingActivity;)V

    .line 1095
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->markAllMessageAsRead()V
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1600(Lcom/liquable/nemo/chat/ChattingActivity;)V

    .line 1097
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v4}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setTopic(Ljava/lang/String;)V

    .line 1098
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->updateIsFinishedLoading()V
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1700(Lcom/liquable/nemo/chat/ChattingActivity;)V

    .line 1099
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->refreshFriendsInfo()V
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1800(Lcom/liquable/nemo/chat/ChattingActivity;)V

    .line 1100
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->updateMessageFileTransferState()V
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$300(Lcom/liquable/nemo/chat/ChattingActivity;)V

    .line 1101
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->updateRemainUnreadCount()V

    .line 1102
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # setter for: Lcom/liquable/nemo/chat/ChattingActivity;->isLoadingMessages:Z
    invoke-static {v3, v6}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1902(Lcom/liquable/nemo/chat/ChattingActivity;Z)Z

    .line 1103
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->processEventQueue()V
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$2000(Lcom/liquable/nemo/chat/ChattingActivity;)V

    .line 1104
    return-void

    .line 1074
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1300(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->setUnreadMessageStartIndex(I)V

    goto :goto_0

    .line 1084
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1085
    if-eq v0, v5, :cond_4

    if-eqz v2, :cond_5

    .line 1086
    :cond_4
    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->val$enteringSameGroup:Z

    if-nez v3, :cond_1

    .line 1087
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->scrollToLast()V
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1400(Lcom/liquable/nemo/chat/ChattingActivity;)V

    goto :goto_1

    .line 1090
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$18;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->scrollToUnreadIndex()V
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1500(Lcom/liquable/nemo/chat/ChattingActivity;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1040
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$18;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
