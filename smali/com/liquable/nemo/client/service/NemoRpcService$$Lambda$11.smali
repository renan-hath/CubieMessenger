.class final synthetic Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Consumer;


# instance fields
.field private final arg$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$11;->arg$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static get$Lambda(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$11;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$11;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$11;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$11;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$11;->arg$1:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
