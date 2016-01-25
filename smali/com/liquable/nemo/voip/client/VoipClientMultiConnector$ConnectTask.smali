.class final Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;
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
    name = "ConnectTask"
.end annotation


# instance fields
.field private final servers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/util/ServerRegions$Server;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/util/ServerRegions$Server;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "servers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/util/ServerRegions$Server;>;"
    iput-object p1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;->servers:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v4, "serverNames":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    iget-object v6, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;->servers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    # setter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->totalClientSize:I
    invoke-static {v5, v6}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$002(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;I)I

    .line 38
    iget-object v5, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;->servers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/util/ServerRegions$Server;

    .line 40
    .local v3, "serverInfo":Lcom/liquable/nemo/util/ServerRegions$Server;
    iget-object v6, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->notConnectedClients:Ljava/util/Set;
    invoke-static {v6}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$300(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;

    move-result-object v6

    new-instance v7, Lcom/liquable/nemo/voip/client/VoipClient;

    iget-object v8, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->receivedVoicePacketListener:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;
    invoke-static {v8}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$100(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

    move-result-object v8

    iget-object v9, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    .line 42
    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->uniqueDeviceId:Ljava/lang/String;
    invoke-static {v10}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$200(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/liquable/nemo/voip/client/VoipClient;-><init>(Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;Lcom/liquable/nemo/voip/event/EventSink;Ljava/lang/String;)V

    .line 40
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v3}, Lcom/liquable/nemo/util/ServerRegions$Server;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47
    .end local v3    # "serverInfo":Lcom/liquable/nemo/util/ServerRegions$Server;
    :cond_0
    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$400()Lcom/liquable/nemo/util/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "starting choose best voip servers:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, "notStartReadFrameImmediately":Z
    const/4 v1, 0x0

    .line 50
    .local v1, "index":I
    iget-object v5, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->notConnectedClients:Ljava/util/Set;
    invoke-static {v5}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$300(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/VoipClient;

    .line 51
    .local v0, "client":Lcom/liquable/nemo/voip/client/VoipClient;
    iget-object v6, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;->servers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/util/ServerRegions$Server;

    .line 52
    .restart local v3    # "serverInfo":Lcom/liquable/nemo/util/ServerRegions$Server;
    add-int/lit8 v1, v1, 0x1

    .line 53
    invoke-virtual {v3}, Lcom/liquable/nemo/util/ServerRegions$Server;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-virtual {v3}, Lcom/liquable/nemo/util/ServerRegions$Server;->getPort()I

    move-result v7

    const/4 v8, 0x0

    .line 53
    invoke-virtual {v0, v6, v7, v8}, Lcom/liquable/nemo/voip/client/VoipClient;->connectAsync(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 57
    .end local v0    # "client":Lcom/liquable/nemo/voip/client/VoipClient;
    .end local v3    # "serverInfo":Lcom/liquable/nemo/util/ServerRegions$Server;
    :cond_1
    return-void
.end method
