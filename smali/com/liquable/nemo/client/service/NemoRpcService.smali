.class public Lcom/liquable/nemo/client/service/NemoRpcService;
.super Ljava/lang/Object;
.source "NemoRpcService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/client/service/NemoRpcService$SendErrorException;,
        Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;
    }
.end annotation


# static fields
.field public static final LOG_NOT_RPC:Ljava/lang/String; = "NOT_RPC"

.field public static final LOG_RPC:Ljava/lang/String; = "RPC"

.field public static final RPC_TIMEOUT_INTERVAL:I = 0x1e

.field private static final timeoutScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final completers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/future/Completer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final intentServiceHelper:Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private final remoteAccessLog:Lcom/liquable/nemo/util/RemoteAccessLog;

.field private final rpcErrorListener:Lcom/liquable/nemo/client/ReceiveDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<",
            "Lcom/liquable/nemo/endpoint/frame/RpcError;",
            ">;"
        }
    .end annotation
.end field

.field private final rpcListener:Lcom/liquable/nemo/client/ReceiveDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<",
            "Lcom/liquable/nemo/endpoint/frame/RpcResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final sendAckListener:Lcom/liquable/nemo/client/ReceiveDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<",
            "Lcom/liquable/nemo/endpoint/frame/SendAck;",
            ">;"
        }
    .end annotation
.end field

.field private final sendErrorListener:Lcom/liquable/nemo/client/ReceiveDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<",
            "Lcom/liquable/nemo/endpoint/frame/SendError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/client/service/NemoRpcService;->timeoutScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;)V
    .locals 1
    .param p1, "intentServiceHelper"    # Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Lcom/liquable/nemo/util/RemoteAccessLog$RemoteAccessLogFactory;->getLogger()Lcom/liquable/nemo/util/RemoteAccessLog;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->remoteAccessLog:Lcom/liquable/nemo/util/RemoteAccessLog;

    .line 114
    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NemoRpcService$1;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V

    iput-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->sendErrorListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    .line 124
    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NemoRpcService$2;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V

    iput-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->sendAckListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    .line 134
    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NemoRpcService$3;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V

    iput-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->rpcListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    .line 145
    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NemoRpcService$4;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V

    iput-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->rpcErrorListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    .line 179
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->completers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 181
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->logger:Lcom/liquable/nemo/util/Logger;

    .line 186
    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->intentServiceHelper:Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/client/service/NemoRpcService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/client/service/NemoRpcService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->completers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendFrameWithResult$0(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/liquable/future/Completer;)V
    .locals 0

    invoke-static {p0}, Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendFrameWithFuture$1(Lcom/liquable/future/Completer;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/endpoint/frame/RpcRequest;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendFrameWithFuture$2(Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/endpoint/frame/RpcRequest;Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendTextWithResult$3(Lcom/liquable/nemo/endpoint/frame/SendText;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/liquable/future/Completer;)V
    .locals 0

    invoke-static {p0}, Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendTextWithFuture$4(Lcom/liquable/future/Completer;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendTextWithFuture$5(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6(Lcom/liquable/nemo/client/service/NemoRpcService$SendErrorException;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendTextWithFuture$6(Lcom/liquable/nemo/client/service/NemoRpcService$SendErrorException;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;JLjava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendTextWithFuture$7(Lcom/liquable/nemo/endpoint/frame/SendText;JLjava/util/concurrent/ScheduledFuture;)V

    return-void
.end method

.method private checkNotMainThread()V
    .locals 3

    .prologue
    .line 309
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendFrameWithResult must be called in non-ui thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 316
    :cond_0
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private generateRpcId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$sendFrameWithFuture$1(Lcom/liquable/future/Completer;)V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/liquable/nemo/client/TimeOutException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/TimeOutException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    .line 252
    return-void
.end method

.method private synthetic lambda$sendFrameWithFuture$2(Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/endpoint/frame/RpcRequest;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->completers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " wastes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->intentServiceHelper:Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

    invoke-virtual {v0, p5}, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->removeFrameFromService(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 263
    const/4 v0, 0x1

    invoke-interface {p6, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 264
    return-void
.end method

.method private synthetic lambda$sendFrameWithResult$0(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithFuture(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$13;->lambdaFactory$(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/liquable/future/Consumer;

    move-result-object v1

    .line 217
    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$14;->lambdaFactory$(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/liquable/future/Consumer;

    move-result-object v2

    .line 218
    invoke-interface {v0, v1, v2}, Lcom/liquable/future/IFuture;->consumeError(Ljava/lang/Class;Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$15;->lambdaFactory$(Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v1

    .line 219
    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->whenComplete(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;

    .line 220
    return-void
.end method

.method private static synthetic lambda$sendTextWithFuture$4(Lcom/liquable/future/Completer;)V
    .locals 1

    .prologue
    .line 324
    new-instance v0, Lcom/liquable/nemo/client/TimeOutException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/TimeOutException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    .line 325
    return-void
.end method

.method private static synthetic lambda$sendTextWithFuture$5(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "input"    # Ljava/lang/Object;

    .prologue
    .line 329
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$sendTextWithFuture$6(Lcom/liquable/nemo/client/service/NemoRpcService$SendErrorException;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "input"    # Lcom/liquable/nemo/client/service/NemoRpcService$SendErrorException;

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$sendTextWithFuture$7(Lcom/liquable/nemo/endpoint/frame/SendText;JLjava/util/concurrent/ScheduledFuture;)V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->completers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/SendText;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendText wastes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->intentServiceHelper:Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->removeFrameFromService(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 339
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 340
    return-void
.end method

.method private synthetic lambda$sendTextWithResult$3(Lcom/liquable/nemo/endpoint/frame/SendText;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendTextWithFuture(Lcom/liquable/nemo/endpoint/frame/SendText;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$10;->lambdaFactory$(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/liquable/future/Consumer;

    move-result-object v1

    .line 283
    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$11;->lambdaFactory$(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/liquable/future/Consumer;

    move-result-object v2

    .line 284
    invoke-interface {v0, v1, v2}, Lcom/liquable/future/IFuture;->consumeError(Ljava/lang/Class;Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$12;->lambdaFactory$(Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v1

    .line 285
    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->whenComplete(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;

    .line 286
    return-void
.end method

.method private sendFrameWithFuture(Ljava/lang/String;[Ljava/lang/Object;)Lcom/liquable/future/IFuture;
    .locals 11
    .param p1, "serviceMethod"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 246
    .local v3, "startTime":J
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->remoteAccessLog:Lcom/liquable/nemo/util/RemoteAccessLog;

    const-string/jumbo v2, "RPC"

    invoke-interface {v0, p1, v2}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/liquable/future/Futures;->createCompleter()Lcom/liquable/future/Completer;

    move-result-object v7

    .line 248
    .local v7, "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/client/service/NemoRpcService;->generateRpcId()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "id":Ljava/lang/String;
    new-instance v5, Lcom/liquable/nemo/endpoint/frame/RpcRequest;

    sget-object v0, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    invoke-direct {v5, v1, p1, p2, v0}, Lcom/liquable/nemo/endpoint/frame/RpcRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/NemoVersion;)V

    .line 250
    .local v5, "request":Lcom/liquable/nemo/endpoint/frame/RpcRequest;
    sget-object v0, Lcom/liquable/nemo/client/service/NemoRpcService;->timeoutScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v7}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$2;->lambdaFactory$(Lcom/liquable/future/Completer;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v8, 0x1e

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v8, v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v6

    .line 253
    .local v6, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->completers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->intentServiceHelper:Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->sendFrameToService(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 255
    invoke-virtual {v7}, Lcom/liquable/future/Completer;->getFuture()Lcom/liquable/future/IFuture;

    move-result-object v8

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->lambdaFactory$(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/endpoint/frame/RpcRequest;Ljava/util/concurrent/ScheduledFuture;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/liquable/future/IFuture;->whenComplete(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method private sendTextWithFuture(Lcom/liquable/nemo/endpoint/frame/SendText;)Lcom/liquable/future/IFuture;
    .locals 9
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/SendText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/endpoint/frame/SendText;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v4, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->remoteAccessLog:Lcom/liquable/nemo/util/RemoteAccessLog;

    const-class v5, Lcom/liquable/nemo/endpoint/frame/SendText;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "NOT_RPC"

    invoke-interface {v4, v5, v6}, Lcom/liquable/nemo/util/RemoteAccessLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 322
    .local v2, "startTime":J
    invoke-static {}, Lcom/liquable/future/Futures;->createCompleter()Lcom/liquable/future/Completer;

    move-result-object v0

    .line 323
    .local v0, "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Ljava/lang/Object;>;"
    sget-object v4, Lcom/liquable/nemo/client/service/NemoRpcService;->timeoutScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$6;->lambdaFactory$(Lcom/liquable/future/Completer;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 326
    .local v1, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    iget-object v4, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->completers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/SendText;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v4, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->intentServiceHelper:Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

    invoke-virtual {v4, p1}, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->sendFrameToService(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 328
    invoke-virtual {v0}, Lcom/liquable/future/Completer;->getFuture()Lcom/liquable/future/IFuture;

    move-result-object v4

    invoke-static {}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$7;->lambdaFactory$()Lcom/liquable/future/Function;

    move-result-object v5

    .line 329
    invoke-interface {v4, v5}, Lcom/liquable/future/IFuture;->map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v4

    const-class v5, Lcom/liquable/nemo/client/service/NemoRpcService$SendErrorException;

    invoke-static {}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$8;->lambdaFactory$()Lcom/liquable/future/Function;

    move-result-object v6

    .line 330
    invoke-interface {v4, v5, v6}, Lcom/liquable/future/IFuture;->mapError(Ljava/lang/Class;Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v4

    invoke-static {p0, p1, v2, v3, v1}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;->lambdaFactory$(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;JLjava/util/concurrent/ScheduledFuture;)Ljava/lang/Runnable;

    move-result-object v5

    .line 331
    invoke-interface {v4, v5}, Lcom/liquable/future/IFuture;->whenComplete(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method protected isSendTextInSendQueue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->intentServiceHelper:Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->askServiceIsSendTextExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registToFrameReceiver(Lcom/liquable/nemo/android/service/IEpFrameReceiver;)V
    .locals 2
    .param p1, "frameReceiver"    # Lcom/liquable/nemo/android/service/IEpFrameReceiver;

    .prologue
    .line 198
    const-class v0, Lcom/liquable/nemo/endpoint/frame/RpcResponse;

    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->rpcListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    invoke-interface {p1, v0, v1}, Lcom/liquable/nemo/android/service/IEpFrameReceiver;->addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V

    .line 199
    const-class v0, Lcom/liquable/nemo/endpoint/frame/RpcError;

    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->rpcErrorListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    invoke-interface {p1, v0, v1}, Lcom/liquable/nemo/android/service/IEpFrameReceiver;->addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V

    .line 200
    const-class v0, Lcom/liquable/nemo/endpoint/frame/SendAck;

    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->sendAckListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    invoke-interface {p1, v0, v1}, Lcom/liquable/nemo/android/service/IEpFrameReceiver;->addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V

    .line 201
    const-class v0, Lcom/liquable/nemo/endpoint/frame/SendError;

    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->sendErrorListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    invoke-interface {p1, v0, v1}, Lcom/liquable/nemo/android/service/IEpFrameReceiver;->addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V

    .line 202
    return-void
.end method

.method public sendFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService;->intentServiceHelper:Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->sendFrameToService(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 206
    return-void
.end method

.method public sendFrameWithFuture(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/future/IFuture;
    .locals 2
    .param p1, "serviceMethod"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/liquable/nemo/client/mapper/ResultMapper",
            "<TT;>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 270
    .local p3, "mapper":Lcom/liquable/nemo/client/mapper/ResultMapper;, "Lcom/liquable/nemo/client/mapper/ResultMapper<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithFuture(Ljava/lang/String;[Ljava/lang/Object;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$4;->lambdaFactory$(Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/future/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    .locals 9
    .param p1, "serviceMethod"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/liquable/nemo/client/mapper/ResultMapper",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 211
    .local p3, "mapper":Lcom/liquable/nemo/client/mapper/ResultMapper;, "Lcom/liquable/nemo/client/mapper/ResultMapper<TT;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/client/service/NemoRpcService;->checkNotMainThread()V

    .line 212
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 213
    .local v5, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .local v4, "resultRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 215
    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/future/Futures;->eventLoop(Ljava/lang/Runnable;)V

    .line 224
    const-wide/16 v0, 0x23

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    .line 225
    .local v8, "success":Z
    if-nez v8, :cond_0

    .line 226
    new-instance v0, Lcom/liquable/nemo/client/TimeOutException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/TimeOutException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v8    # "success":Z
    :catch_0
    move-exception v6

    .line 229
    .local v6, "ex":Ljava/lang/InterruptedException;
    new-instance v0, Lcom/liquable/nemo/client/InterruptedErrorException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/InterruptedErrorException;-><init>()V

    throw v0

    .line 232
    .end local v6    # "ex":Ljava/lang/InterruptedException;
    .restart local v8    # "success":Z
    :cond_0
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 233
    .local v7, "result":Ljava/lang/Object;
    instance-of v0, v7, Lcom/liquable/nemo/model/DomainException;

    if-eqz v0, :cond_1

    .line 234
    check-cast v7, Lcom/liquable/nemo/model/DomainException;

    .end local v7    # "result":Ljava/lang/Object;
    throw v7

    .line 235
    .restart local v7    # "result":Ljava/lang/Object;
    :cond_1
    instance-of v0, v7, Lcom/liquable/nemo/client/AsyncException;

    if-eqz v0, :cond_2

    .line 236
    check-cast v7, Lcom/liquable/nemo/client/AsyncException;

    .end local v7    # "result":Ljava/lang/Object;
    throw v7

    .line 237
    .restart local v7    # "result":Ljava/lang/Object;
    :cond_2
    instance-of v0, v7, Ljava/lang/Exception;

    if-eqz v0, :cond_3

    .line 238
    new-instance v0, Lcom/liquable/nemo/client/UnknownException;

    invoke-direct {v0}, Lcom/liquable/nemo/client/UnknownException;-><init>()V

    throw v0

    .line 241
    :cond_3
    return-object v7
.end method

.method public sendTextWithResult(Lcom/liquable/nemo/endpoint/frame/SendText;)Z
    .locals 8
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/SendText;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/liquable/nemo/client/service/NemoRpcService;->checkNotMainThread()V

    .line 278
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 279
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 281
    .local v3, "resultRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    invoke-static {p0, p1, v3, v1}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;->lambdaFactory$(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/future/Futures;->eventLoop(Ljava/lang/Runnable;)V

    .line 290
    const-wide/16 v5, 0x23

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    .line 291
    .local v4, "success":Z
    if-nez v4, :cond_0

    .line 292
    new-instance v5, Lcom/liquable/nemo/client/TimeOutException;

    invoke-direct {v5}, Lcom/liquable/nemo/client/TimeOutException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v4    # "success":Z
    :catch_0
    move-exception v0

    .line 295
    .local v0, "ex":Ljava/lang/InterruptedException;
    new-instance v5, Lcom/liquable/nemo/client/InterruptedErrorException;

    invoke-direct {v5}, Lcom/liquable/nemo/client/InterruptedErrorException;-><init>()V

    throw v5

    .line 298
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .restart local v4    # "success":Z
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 299
    .local v2, "result":Ljava/lang/Object;
    instance-of v5, v2, Lcom/liquable/nemo/client/AsyncException;

    if-eqz v5, :cond_1

    .line 300
    check-cast v2, Lcom/liquable/nemo/client/AsyncException;

    .end local v2    # "result":Ljava/lang/Object;
    throw v2

    .line 301
    .restart local v2    # "result":Ljava/lang/Object;
    :cond_1
    instance-of v5, v2, Ljava/lang/Exception;

    if-eqz v5, :cond_2

    .line 302
    new-instance v5, Lcom/liquable/nemo/client/UnknownException;

    invoke-direct {v5}, Lcom/liquable/nemo/client/UnknownException;-><init>()V

    throw v5

    .line 305
    :cond_2
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5
.end method
