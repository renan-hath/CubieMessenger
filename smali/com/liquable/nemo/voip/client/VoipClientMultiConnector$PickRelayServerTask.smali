.class public final Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PickRelayServerTask;
.super Ljava/lang/Object;
.source "VoipClientMultiConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PickRelayServerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PickRelayServerTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 78
    .local v3, "picked":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/util/ServerRegions$Server;>;"
    const/4 v2, 0x3

    .line 79
    .local v2, "maxTry":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 80
    sget-object v4, Lcom/liquable/nemo/voip/client/RelayServerPicker;->INSTANCE:Lcom/liquable/nemo/voip/client/RelayServerPicker;

    iget-object v5, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PickRelayServerTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->nodeService:Lcom/liquable/nemo/client/service/NodeService;
    invoke-static {v5}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$700(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Lcom/liquable/nemo/client/service/NodeService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/voip/client/RelayServerPicker;->pickServersSync(Lcom/liquable/nemo/client/service/NodeService;)Ljava/util/List;

    move-result-object v3

    .line 81
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 97
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/liquable/nemo/util/ServerRegions$Server;

    new-instance v5, Lcom/liquable/nemo/util/ServerRegions$Server;

    const-string/jumbo v6, "127.0.0.5"

    invoke-direct {v5, v6, v7}, Lcom/liquable/nemo/util/ServerRegions$Server;-><init>(Ljava/lang/String;I)V

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PickRelayServerTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    new-instance v5, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;

    iget-object v6, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PickRelayServerTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    invoke-direct {v5, v6, v3}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;-><init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Ljava/util/List;)V

    # invokes: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->trySubmitTask(Ljava/lang/Runnable;)Z
    invoke-static {v4, v5}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$800(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Ljava/lang/Runnable;)Z

    .line 102
    return-void

    .line 85
    :cond_2
    add-int/lit8 v4, v1, 0x1

    if-eq v4, v8, :cond_0

    .line 89
    :try_start_0
    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$400()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "could not pick relay servers, retry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 90
    add-int/lit8 v4, v1, 0x1

    mul-int/lit16 v4, v4, 0x7d0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method
