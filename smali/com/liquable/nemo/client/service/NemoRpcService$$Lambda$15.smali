.class final synthetic Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$15;->arg$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static get$Lambda(Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$15;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$15;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$15;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$15;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$15;->arg$1:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
