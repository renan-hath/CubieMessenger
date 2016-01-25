.class public Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;
.super Ljava/lang/Object;
.source "VoipClientMultiConnector.java"

# interfaces
.implements Lcom/liquable/nemo/voip/event/EventSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;,
        Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PrefetchRelayServerRegionsTask;,
        Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PickRelayServerTask;,
        Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;,
        Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/voip/event/EventSink",
        "<",
        "Lcom/liquable/nemo/voip/event/VoipEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private allProcessed:Z

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final failedClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/liquable/nemo/voip/client/VoipClient;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeService:Lcom/liquable/nemo/client/service/NodeService;

.field private final notConnectedClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/liquable/nemo/voip/client/VoipClient;",
            ">;"
        }
    .end annotation
.end field

.field private final receivedVoicePacketListener:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

.field private final rootEventSink:Lcom/liquable/nemo/voip/event/EventSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;"
        }
    .end annotation
.end field

.field private success:Z

.field private totalClientSize:I

.field private final uniqueDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    const-class v0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;Lcom/liquable/nemo/voip/event/EventSink;Ljava/lang/String;Lcom/liquable/nemo/client/service/NodeService;)V
    .locals 1
    .param p1, "receivedVoicePacketListener"    # Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;
    .param p3, "uniqueDeviceId"    # Ljava/lang/String;
    .param p4, "nodeService"    # Lcom/liquable/nemo/client/service/NodeService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;",
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/client/service/NodeService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 202
    .local p2, "rootEventSink":Lcom/liquable/nemo/voip/event/EventSink;, "Lcom/liquable/nemo/voip/event/EventSink<Lcom/liquable/nemo/voip/event/VoipEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->notConnectedClients:Ljava/util/Set;

    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->failedClients:Ljava/util/Set;

    .line 203
    iput-object p4, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->nodeService:Lcom/liquable/nemo/client/service/NodeService;

    .line 204
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->executor:Ljava/util/concurrent/ExecutorService;

    .line 206
    iput-object p1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->receivedVoicePacketListener:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

    .line 207
    iput-object p2, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->rootEventSink:Lcom/liquable/nemo/voip/event/EventSink;

    .line 208
    iput-object p3, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->uniqueDeviceId:Ljava/lang/String;

    .line 209
    new-instance v0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PrefetchRelayServerRegionsTask;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PrefetchRelayServerRegionsTask;-><init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)V

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->trySubmitTask(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    .prologue
    .line 26
    iget v0, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->totalClientSize:I

    return v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->totalClientSize:I

    return p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->receivedVoicePacketListener:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Lcom/liquable/nemo/voip/event/EventSink;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->rootEventSink:Lcom/liquable/nemo/voip/event/EventSink;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->uniqueDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->notConnectedClients:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->allProcessed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->allProcessed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->failedClients:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Lcom/liquable/nemo/client/service/NodeService;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->nodeService:Lcom/liquable/nemo/client/service/NodeService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->trySubmitTask(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->success:Z

    return v0
.end method

.method static synthetic access$902(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->success:Z

    return p1
.end method

.method private trySubmitTask(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    const/4 v1, 0x1

    .line 247
    :goto_0
    return v1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connectBest()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PickRelayServerTask;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PickRelayServerTask;-><init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)V

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->trySubmitTask(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method public connectSingle(Lcom/liquable/nemo/util/ServerRegions$Server;)V
    .locals 3
    .param p1, "server"    # Lcom/liquable/nemo/util/ServerRegions$Server;

    .prologue
    .line 217
    new-instance v0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/liquable/nemo/util/ServerRegions$Server;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ConnectTask;-><init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->trySubmitTask(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method

.method public destroySync()V
    .locals 5

    .prologue
    .line 221
    new-instance v1, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$DestroyResourcesTask;-><init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$1;)V

    invoke-direct {p0, v1}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->trySubmitTask(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->executor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    sget-object v1, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "voip client multi connector destroyed"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public offer(Lcom/liquable/nemo/voip/event/VoipEvent;)Z
    .locals 1
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipEvent;

    .prologue
    .line 239
    new-instance v0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$ProcessEventTask;-><init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;Lcom/liquable/nemo/voip/event/VoipEvent;)V

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->trySubmitTask(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/liquable/nemo/voip/event/VoipEvent;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->offer(Lcom/liquable/nemo/voip/event/VoipEvent;)Z

    move-result v0

    return v0
.end method
