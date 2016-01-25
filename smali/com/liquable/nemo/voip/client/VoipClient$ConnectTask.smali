.class public final Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;
.super Ljava/lang/Object;
.source "VoipClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/client/VoipClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectTask"
.end annotation


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I

.field final synthetic this$0:Lcom/liquable/nemo/voip/client/VoipClient;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/client/VoipClient;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/client/VoipClient;
    .param p2, "port"    # I
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->port:I

    .line 47
    iput-object p3, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->host:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 52
    const/4 v3, 0x0

    .line 54
    .local v3, "socket":Ljava/net/Socket;
    :try_start_0
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    .line 59
    iget-object v4, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->socketRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v4}, Lcom/liquable/nemo/voip/client/VoipClient;->access$000(Lcom/liquable/nemo/voip/client/VoipClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "could not connect again on connected VoipClient#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->clientId:J
    invoke-static {v6}, Lcom/liquable/nemo/voip/client/VoipClient;->access$100(Lcom/liquable/nemo/voip/client/VoipClient;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/client/VoipClient;->access$200()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "voip socket#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->clientId:J
    invoke-static {v6}, Lcom/liquable/nemo/voip/client/VoipClient;->access$100(Lcom/liquable/nemo/voip/client/VoipClient;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " connecting fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->host:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", cause:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 78
    iget-object v4, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # invokes: Lcom/liquable/nemo/voip/client/VoipClient;->closeSocketWithEvent()V
    invoke-static {v4}, Lcom/liquable/nemo/voip/client/VoipClient;->access$300(Lcom/liquable/nemo/voip/client/VoipClient;)V

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 65
    :cond_0
    :try_start_1
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->host:Ljava/lang/String;

    iget v6, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->port:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0x4e20

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 69
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 84
    .local v1, "remoteSocketAddress":Ljava/net/InetSocketAddress;
    new-instance v2, Lcom/liquable/nemo/util/ServerRegions$Server;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/liquable/nemo/util/ServerRegions$Server;-><init>(Ljava/lang/String;I)V

    .line 87
    .local v2, "server":Lcom/liquable/nemo/util/ServerRegions$Server;
    monitor-enter v3

    .line 91
    :try_start_2
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/client/VoipClient;->access$200()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "voip socket#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->clientId:J
    invoke-static {v6}, Lcom/liquable/nemo/voip/client/VoipClient;->access$100(Lcom/liquable/nemo/voip/client/VoipClient;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " connected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", but was closed by other thread, abort."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 100
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 97
    :cond_1
    :try_start_3
    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/client/VoipClient;->access$200()Lcom/liquable/nemo/util/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "voip socket#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->clientId:J
    invoke-static {v6}, Lcom/liquable/nemo/voip/client/VoipClient;->access$100(Lcom/liquable/nemo/voip/client/VoipClient;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " connected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v4}, Lcom/liquable/nemo/voip/client/VoipClient;->access$400(Lcom/liquable/nemo/voip/client/VoipClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v5, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;

    iget-object v6, p0, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    invoke-direct {v5, v2, v6}, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;-><init>(Lcom/liquable/nemo/util/ServerRegions$Server;Lcom/liquable/nemo/voip/client/VoipClient;)V

    invoke-interface {v4, v5}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
