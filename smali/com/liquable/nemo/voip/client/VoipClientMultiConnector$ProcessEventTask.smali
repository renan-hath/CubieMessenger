.class final Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;
.super Ljava/lang/Object;
.source "VoipClientMultiConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProcessEventTask"
.end annotation


# instance fields
.field private final event:Lcom/liquable/nemo/voip/event/VoipEvent;

.field final synthetic this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Lcom/liquable/nemo/voip/event/VoipEvent;)V
    .locals 0
    .param p2, "event"    # Lcom/liquable/nemo/voip/event/VoipEvent;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->event:Lcom/liquable/nemo/voip/event/VoipEvent;

    .line 117
    return-void
.end method

.method private doSuccessClient(Lcom/liquable/nemo/voip/event/VoipConnectedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipConnectedEvent;

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;->getVoipClient()Lcom/liquable/nemo/voip/client/VoipClient;

    move-result-object v0

    .line 121
    .local v0, "client":Lcom/liquable/nemo/voip/client/VoipClient;
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->notConnectedClients:Ljava/util/Set;
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$300(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 122
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    const/4 v3, 0x1

    # setter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->success:Z
    invoke-static {v2, v3}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$902(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Z)Z

    .line 123
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->rootEventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$1000(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/voip/client/VoipClient;->setEventSink(Lcom/liquable/nemo/voip/event/EventSink;)V

    .line 124
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/client/VoipClient;->startRead()V

    .line 126
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->rootEventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$1000(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->notConnectedClients:Ljava/util/Set;
    invoke-static {v3}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$300(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/voip/client/VoipClient;

    .line 129
    .local v1, "restClient":Lcom/liquable/nemo/voip/client/VoipClient;
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/client/VoipClient;->disconnectSync()V

    goto :goto_0

    .line 131
    .end local v1    # "restClient":Lcom/liquable/nemo/voip/client/VoipClient;
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 135
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->allProcessed:Z
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$500(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->event:Lcom/liquable/nemo/voip/event/VoipEvent;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/event/VoipEvent;->getType()Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->CONNECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->success:Z
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$900(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->event:Lcom/liquable/nemo/voip/event/VoipEvent;

    check-cast v2, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;

    invoke-direct {p0, v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->doSuccessClient(Lcom/liquable/nemo/voip/event/VoipConnectedEvent;)V

    goto :goto_0

    .line 143
    :cond_2
    const/4 v0, 0x0

    .line 144
    .local v0, "failClient":Lcom/liquable/nemo/voip/client/VoipClient;
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->event:Lcom/liquable/nemo/voip/event/VoipEvent;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/event/VoipEvent;->getType()Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->CONNECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    if-ne v2, v3, :cond_3

    .line 145
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->event:Lcom/liquable/nemo/voip/event/VoipEvent;

    check-cast v2, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;->getVoipClient()Lcom/liquable/nemo/voip/client/VoipClient;

    move-result-object v0

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->event:Lcom/liquable/nemo/voip/event/VoipEvent;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/event/VoipEvent;->getType()Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DISCONNECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    if-ne v2, v3, :cond_4

    .line 149
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->event:Lcom/liquable/nemo/voip/event/VoipEvent;

    check-cast v2, Lcom/liquable/nemo/voip/event/VoipDisconnectedEvent;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/event/VoipDisconnectedEvent;->getVoipClient()Lcom/liquable/nemo/voip/client/VoipClient;

    move-result-object v0

    .line 152
    :cond_4
    if-eqz v0, :cond_5

    .line 153
    sget-object v2, Lcom/liquable/nemo/voip/event/DummyVoipEventSink;->INSTANCE:Lcom/liquable/nemo/voip/event/DummyVoipEventSink;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/voip/client/VoipClient;->setEventSink(Lcom/liquable/nemo/voip/event/EventSink;)V

    .line 154
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/client/VoipClient;->disconnectSync()V

    .line 155
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->failedClients:Ljava/util/Set;
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$600(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_5
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->failedClients:Ljava/util/Set;
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$600(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->totalClientSize:I
    invoke-static {v3}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$000(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->success:Z
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$900(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 160
    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$400()Lcom/liquable/nemo/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "all connects to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->totalClientSize:I
    invoke-static {v4}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$000(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (servers) failed, abort"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 163
    sget-object v2, Lcom/liquable/nemo/voip/client/RelayServerPicker;->INSTANCE:Lcom/liquable/nemo/voip/client/RelayServerPicker;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/client/RelayServerPicker;->reset()V

    .line 165
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->failedClients:Ljava/util/Set;
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$600(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/voip/client/VoipClient;

    .line 166
    .local v1, "failedOne":Lcom/liquable/nemo/voip/client/VoipClient;
    if-eqz v1, :cond_6

    .line 167
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->rootEventSink:Lcom/liquable/nemo/voip/event/EventSink;
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$1000(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Lcom/liquable/nemo/voip/event/EventSink;

    move-result-object v2

    new-instance v3, Lcom/liquable/nemo/voip/event/VoipDisconnectedEvent;

    invoke-direct {v3, v1}, Lcom/liquable/nemo/voip/event/VoipDisconnectedEvent;-><init>(Lcom/liquable/nemo/voip/client/VoipClient;)V

    invoke-interface {v2, v3}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    .line 170
    :cond_6
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    new-instance v3, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;

    iget-object v4, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;-><init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$1;)V

    # invokes: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->trySubmitTask(Ljava/lang/Runnable;)Z
    invoke-static {v2, v3}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$800(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 174
    .end local v1    # "failedOne":Lcom/liquable/nemo/voip/client/VoipClient;
    :cond_7
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->failedClients:Ljava/util/Set;
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$600(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->totalClientSize:I
    invoke-static {v3}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$000(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->success:Z
    invoke-static {v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$900(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    new-instance v3, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;

    iget-object v4, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    invoke-direct {v3, v4, v5}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;-><init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$1;)V

    # invokes: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->trySubmitTask(Ljava/lang/Runnable;)Z
    invoke-static {v2, v3}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$800(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
