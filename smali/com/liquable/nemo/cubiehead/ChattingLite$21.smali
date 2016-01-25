.class Lcom/liquable/nemo/cubiehead/ChattingLite$21;
.super Landroid/os/AsyncTask;
.source "ChattingLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;->loadMessages(Ljava/lang/String;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/message/model/DomainMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

.field final synthetic val$topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    iput-object p2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->val$topic:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private filterExpiredSecretMessage(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v0, "filteredMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 680
    .local v1, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v4, v1, Lcom/liquable/nemo/message/model/ISecret;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 681
    check-cast v2, Lcom/liquable/nemo/message/model/ISecret;

    .line 683
    .local v2, "secretMessage":Lcom/liquable/nemo/message/model/ISecret;
    sget-object v4, Lcom/liquable/nemo/message/model/ISecret$State;->OPENED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-interface {v2, v4}, Lcom/liquable/nemo/message/model/ISecret;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 684
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/liquable/nemo/message/model/ISecret;->isAutoCountDown(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    iget-object v4, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v4}, Lcom/liquable/nemo/cubiehead/ChattingLite;->scheduleSecretMessageTimer()V

    .line 694
    .end local v2    # "secretMessage":Lcom/liquable/nemo/message/model/ISecret;
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 688
    .restart local v2    # "secretMessage":Lcom/liquable/nemo/message/model/ISecret;
    :cond_1
    sget-object v4, Lcom/liquable/nemo/message/model/ISecret$State;->EXPIRED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-interface {v2, v4}, Lcom/liquable/nemo/message/model/ISecret;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 689
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    goto :goto_0

    .line 696
    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v2    # "secretMessage":Lcom/liquable/nemo/message/model/ISecret;
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 671
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->val$topic:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->listMessages(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 671
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    const/4 v5, 0x0

    .line 701
    invoke-direct {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->filterExpiredSecretMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 702
    .local v0, "filteredResult":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 707
    .local v2, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->chatGroupItems:Ljava/util/Map;
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$900(Lcom/liquable/nemo/cubiehead/ChattingLite;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;

    .line 708
    .local v1, "item":Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;
    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/cubiehead/ChattingLiteChatGroupItem;->insertAllMessages(Ljava/util/List;)V

    .line 713
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->scrollToLast()V
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1800(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    .line 714
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 715
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->readMore:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1900(Lcom/liquable/nemo/cubiehead/ChattingLite;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 717
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->updateMessageFileTransferState()V
    invoke-static {v3}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$100(Lcom/liquable/nemo/cubiehead/ChattingLite;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$21;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->readMore:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1900(Lcom/liquable/nemo/cubiehead/ChattingLite;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 723
    return-void
.end method
