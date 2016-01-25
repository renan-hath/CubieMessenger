.class final Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;
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
    name = "DestroyResourcesTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$1;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;-><init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    const/4 v2, 0x1

    # setter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->allProcessed:Z
    invoke-static {v1, v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$502(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Z)Z

    .line 64
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->notConnectedClients:Ljava/util/Set;
    invoke-static {v1}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$300(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/VoipClient;

    .line 65
    .local v0, "client":Lcom/liquable/nemo/voip/client/VoipClient;
    sget-object v2, Lcom/liquable/nemo/voip/event/DummyVoipEventSink;->INSTANCE:Lcom/liquable/nemo/voip/event/DummyVoipEventSink;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/voip/client/VoipClient;->setEventSink(Lcom/liquable/nemo/voip/event/EventSink;)V

    .line 66
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/client/VoipClient;->disconnectSync()V

    goto :goto_0

    .line 68
    .end local v0    # "client":Lcom/liquable/nemo/voip/client/VoipClient;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->notConnectedClients:Ljava/util/Set;
    invoke-static {v1}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$300(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 69
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->failedClients:Ljava/util/Set;
    invoke-static {v1}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$600(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 70
    return-void
.end method
