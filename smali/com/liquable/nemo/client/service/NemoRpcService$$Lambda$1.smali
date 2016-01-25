.class final synthetic Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/client/service/NemoRpcService;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:[Ljava/lang/Object;

.field private final arg$4:Lcom/liquable/nemo/client/mapper/ResultMapper;

.field private final arg$5:Ljava/util/concurrent/atomic/AtomicReference;

.field private final arg$6:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->arg$1:Lcom/liquable/nemo/client/service/NemoRpcService;

    iput-object p2, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->arg$3:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->arg$4:Lcom/liquable/nemo/client/mapper/ResultMapper;

    iput-object p5, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->arg$5:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->arg$6:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
    .locals 7

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
    .locals 7

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->arg$1:Lcom/liquable/nemo/client/service/NemoRpcService;

    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->arg$3:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->arg$4:Lcom/liquable/nemo/client/mapper/ResultMapper;

    iget-object v4, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->arg$5:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$1;->arg$6:Ljava/util/concurrent/CountDownLatch;

    # invokes: Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendFrameWithResult$0(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/client/service/NemoRpcService;->access$lambda$0(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
