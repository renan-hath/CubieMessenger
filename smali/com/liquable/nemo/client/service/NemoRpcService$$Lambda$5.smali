.class final synthetic Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/client/service/NemoRpcService;

.field private final arg$2:Lcom/liquable/nemo/endpoint/frame/SendText;

.field private final arg$3:Ljava/util/concurrent/atomic/AtomicReference;

.field private final arg$4:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;->arg$1:Lcom/liquable/nemo/client/service/NemoRpcService;

    iput-object p2, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;->arg$2:Lcom/liquable/nemo/endpoint/frame/SendText;

    iput-object p3, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;->arg$3:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;->arg$4:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;->arg$1:Lcom/liquable/nemo/client/service/NemoRpcService;

    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;->arg$2:Lcom/liquable/nemo/endpoint/frame/SendText;

    iget-object v2, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;->arg$3:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$5;->arg$4:Ljava/util/concurrent/CountDownLatch;

    # invokes: Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendTextWithResult$3(Lcom/liquable/nemo/endpoint/frame/SendText;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/client/service/NemoRpcService;->access$lambda$3(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
