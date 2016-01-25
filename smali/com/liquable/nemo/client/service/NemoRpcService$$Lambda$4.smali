.class final synthetic Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Function;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/client/mapper/ResultMapper;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/client/mapper/ResultMapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$4;->arg$1:Lcom/liquable/nemo/client/mapper/ResultMapper;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/future/Function;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$4;-><init>(Lcom/liquable/nemo/client/mapper/ResultMapper;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/client/mapper/ResultMapper;)Lcom/liquable/future/Function;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$4;-><init>(Lcom/liquable/nemo/client/mapper/ResultMapper;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$4;->arg$1:Lcom/liquable/nemo/client/mapper/ResultMapper;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/client/mapper/ResultMapper;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
