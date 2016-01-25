.class final synthetic Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/liquable/future/Completer;


# direct methods
.method private constructor <init>(Lcom/liquable/future/Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$2;->arg$1:Lcom/liquable/future/Completer;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/future/Completer;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$2;-><init>(Lcom/liquable/future/Completer;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/future/Completer;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$2;-><init>(Lcom/liquable/future/Completer;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$2;->arg$1:Lcom/liquable/future/Completer;

    # invokes: Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendFrameWithFuture$1(Lcom/liquable/future/Completer;)V
    invoke-static {v0}, Lcom/liquable/nemo/client/service/NemoRpcService;->access$lambda$1(Lcom/liquable/future/Completer;)V

    return-void
.end method
