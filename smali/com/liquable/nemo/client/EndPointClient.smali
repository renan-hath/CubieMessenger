.class public Lcom/liquable/nemo/client/EndPointClient;
.super Ljava/lang/Thread;
.source "EndPointClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;,
        Lcom/liquable/nemo/client/EndPointClient$LazyHolder;
    }
.end annotation


# instance fields
.field private final connectedServerInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/client/ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionListener:Lcom/liquable/nemo/client/ConnectionListener;

.field private final endPointServerPicker:Lcom/liquable/nemo/client/home/EndPointServerPicker;

.field private final epFrameLayer:Lcom/liquable/nemo/client/layer/EpFrameLayer;

.field private final handler:Landroid/os/Handler;

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private final sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

.field private socket:Ljava/net/Socket;

.field private final wrtieWorker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/home/EndPointServerPicker;Lcom/liquable/nemo/client/ConnectionListener;Lcom/liquable/nemo/android/service/EndPointFrameQueue;Landroid/os/Handler;Lcom/liquable/nemo/util/Pref;Ljava/lang/String;)V
    .locals 3
    .param p1, "endPointServerPicker"    # Lcom/liquable/nemo/client/home/EndPointServerPicker;
    .param p2, "connectionListener"    # Lcom/liquable/nemo/client/ConnectionListener;
    .param p3, "sendQueue"    # Lcom/liquable/nemo/android/service/EndPointFrameQueue;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p6, "uniqueDeviceId"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string/jumbo v0, "EndPointClientThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->connectedServerInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 100
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstanceForNetwork()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->logger:Lcom/liquable/nemo/util/Logger;

    .line 108
    new-instance v0, Lcom/liquable/nemo/client/EndPointClient$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/EndPointClient$1;-><init>(Lcom/liquable/nemo/client/EndPointClient;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->wrtieWorker:Ljava/util/concurrent/ExecutorService;

    .line 139
    iput-object p1, p0, Lcom/liquable/nemo/client/EndPointClient;->endPointServerPicker:Lcom/liquable/nemo/client/home/EndPointServerPicker;

    .line 140
    iput-object p2, p0, Lcom/liquable/nemo/client/EndPointClient;->connectionListener:Lcom/liquable/nemo/client/ConnectionListener;

    .line 141
    iput-object p3, p0, Lcom/liquable/nemo/client/EndPointClient;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    .line 143
    if-eqz p4, :cond_0

    .line 144
    iput-object p4, p0, Lcom/liquable/nemo/client/EndPointClient;->handler:Landroid/os/Handler;

    .line 149
    :goto_0
    sget-object v0, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->INSTANCE:Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;

    # getter for: Lcom/liquable/nemo/client/EndPointClient$LazyHolder;->MAPPER:Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;
    invoke-static {}, Lcom/liquable/nemo/client/EndPointClient$LazyHolder;->access$100()Lcom/liquable/nemo/endpoint/frame/JacksonEpFrameMapper;

    move-result-object v1

    invoke-virtual {v0, p5, p6, v1}, Lcom/liquable/nemo/client/layer/EpFrameLayerSelector;->select(Lcom/liquable/nemo/util/Pref;Ljava/lang/String;Lcom/liquable/nemo/endpoint/frame/IEpFrameMapper;)Lcom/liquable/nemo/client/layer/EpFrameLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->epFrameLayer:Lcom/liquable/nemo/client/layer/EpFrameLayer;

    .line 151
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EndPoint use "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/client/EndPointClient;->epFrameLayer:Lcom/liquable/nemo/client/layer/EpFrameLayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 152
    return-void

    .line 146
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/client/EndPointClient;)Lcom/liquable/nemo/client/ConnectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/client/EndPointClient;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->connectionListener:Lcom/liquable/nemo/client/ConnectionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/client/EndPointClient;)Lcom/liquable/nemo/util/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/client/EndPointClient;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/client/EndPointClient;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/client/EndPointClient;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "disconnect"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 159
    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->socket:Ljava/net/Socket;

    invoke-static {v1}, Landroid/support/v4/net/TrafficStatsCompat;->untagSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->wrtieWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 166
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disconnect error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getLayer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->epFrameLayer:Lcom/liquable/nemo/client/layer/EpFrameLayer;

    if-nez v0, :cond_0

    .line 170
    const-string/jumbo v0, "none"

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->epFrameLayer:Lcom/liquable/nemo/client/layer/EpFrameLayer;

    invoke-interface {v0}, Lcom/liquable/nemo/client/layer/EpFrameLayer;->toShortDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getServerInfo()Lcom/liquable/nemo/client/ServerInfo;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->connectedServerInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/ServerInfo;

    return-object v0
.end method

.method public declared-synchronized interrupt()V
    .locals 4

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "interrupt"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->socket:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 185
    :try_start_1
    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interrupt error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 182
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 11

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->epFrameLayer:Lcom/liquable/nemo/client/layer/EpFrameLayer;

    invoke-interface {v0}, Lcom/liquable/nemo/client/layer/EpFrameLayer;->createSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v9

    .line 205
    .local v9, "ssf":Ljavax/net/SocketFactory;
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->endPointServerPicker:Lcom/liquable/nemo/client/home/EndPointServerPicker;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/home/EndPointServerPicker;->pickServer()Lcom/liquable/nemo/client/ServerInfo;

    move-result-object v8

    .line 206
    .local v8, "serverInfo":Lcom/liquable/nemo/client/ServerInfo;
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->connectedServerInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/client/EndPointClient$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/client/EndPointClient$2;-><init>(Lcom/liquable/nemo/client/EndPointClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    :try_start_1
    invoke-virtual {p0}, Lcom/liquable/nemo/client/EndPointClient;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    invoke-direct {p0}, Lcom/liquable/nemo/client/EndPointClient;->disconnect()V

    .line 257
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/client/EndPointClient$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/client/EndPointClient$5;-><init>(Lcom/liquable/nemo/client/EndPointClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    .end local v8    # "serverInfo":Lcom/liquable/nemo/client/ServerInfo;
    .end local v9    # "ssf":Ljavax/net/SocketFactory;
    :goto_0
    return-void

    .line 218
    .restart local v8    # "serverInfo":Lcom/liquable/nemo/client/ServerInfo;
    .restart local v9    # "ssf":Ljavax/net/SocketFactory;
    :cond_0
    :try_start_2
    invoke-virtual {v8}, Lcom/liquable/nemo/client/ServerInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/liquable/nemo/client/ServerInfo;->getPort()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->socket:Ljava/net/Socket;

    .line 219
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    const v0, 0xf00d

    :try_start_3
    invoke-static {v0}, Landroid/support/v4/net/TrafficStatsCompat;->setThreadStatsTag(I)V

    .line 221
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->socket:Ljava/net/Socket;

    invoke-static {v0}, Landroid/support/v4/net/TrafficStatsCompat;->tagSocket(Ljava/net/Socket;)V

    .line 222
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 224
    .local v7, "inputStream":Ljava/io/InputStream;
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->epFrameLayer:Lcom/liquable/nemo/client/layer/EpFrameLayer;

    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->socket:Ljava/net/Socket;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/client/layer/EpFrameLayer;->begin(Ljava/net/Socket;)V

    .line 226
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/client/EndPointClient$3;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/client/EndPointClient$3;-><init>(Lcom/liquable/nemo/client/EndPointClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    iget-object v10, p0, Lcom/liquable/nemo/client/EndPointClient;->wrtieWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;

    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    iget-object v2, p0, Lcom/liquable/nemo/client/EndPointClient;->socket:Ljava/net/Socket;

    .line 234
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/client/EndPointClient;->connectionListener:Lcom/liquable/nemo/client/ConnectionListener;

    iget-object v4, p0, Lcom/liquable/nemo/client/EndPointClient;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/liquable/nemo/client/EndPointClient;->epFrameLayer:Lcom/liquable/nemo/client/layer/EpFrameLayer;

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;-><init>(Lcom/liquable/nemo/android/service/EndPointFrameQueue;Ljava/io/OutputStream;Lcom/liquable/nemo/client/ConnectionListener;Landroid/os/Handler;Lcom/liquable/nemo/client/layer/EpFrameLayer;)V

    .line 233
    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->epFrameLayer:Lcom/liquable/nemo/client/layer/EpFrameLayer;

    new-instance v1, Lcom/liquable/nemo/client/EndPointClient$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/client/EndPointClient$4;-><init>(Lcom/liquable/nemo/client/EndPointClient;)V

    invoke-interface {v0, v7, v1}, Lcom/liquable/nemo/client/layer/EpFrameLayer;->startReadingFrames(Ljava/io/InputStream;Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    invoke-direct {p0}, Lcom/liquable/nemo/client/EndPointClient;->disconnect()V

    .line 257
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/client/EndPointClient$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/client/EndPointClient$5;-><init>(Lcom/liquable/nemo/client/EndPointClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 219
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 252
    .end local v8    # "serverInfo":Lcom/liquable/nemo/client/ServerInfo;
    .end local v9    # "ssf":Ljavax/net/SocketFactory;
    :catch_0
    move-exception v6

    .line 253
    .local v6, "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EndpointClient disconnect error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 256
    invoke-direct {p0}, Lcom/liquable/nemo/client/EndPointClient;->disconnect()V

    .line 257
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/client/EndPointClient$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/client/EndPointClient$5;-><init>(Lcom/liquable/nemo/client/EndPointClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 256
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/liquable/nemo/client/EndPointClient;->disconnect()V

    .line 257
    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/liquable/nemo/client/EndPointClient$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/client/EndPointClient$5;-><init>(Lcom/liquable/nemo/client/EndPointClient;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
