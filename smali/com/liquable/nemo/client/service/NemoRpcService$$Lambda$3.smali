.class final synthetic Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/client/service/NemoRpcService;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:J

.field private final arg$5:Lcom/liquable/nemo/endpoint/frame/RpcRequest;

.field private final arg$6:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/endpoint/frame/RpcRequest;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->arg$1:Lcom/liquable/nemo/client/service/NemoRpcService;

    iput-object p2, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->arg$3:Ljava/lang/String;

    iput-wide p4, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->arg$4:J

    iput-object p6, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->arg$5:Lcom/liquable/nemo/endpoint/frame/RpcRequest;

    iput-object p7, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->arg$6:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/endpoint/frame/RpcRequest;Ljava/util/concurrent/ScheduledFuture;)Ljava/lang/Runnable;
    .locals 8

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/endpoint/frame/RpcRequest;Ljava/util/concurrent/ScheduledFuture;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/endpoint/frame/RpcRequest;Ljava/util/concurrent/ScheduledFuture;)Ljava/lang/Runnable;
    .locals 8

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/endpoint/frame/RpcRequest;Ljava/util/concurrent/ScheduledFuture;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->arg$1:Lcom/liquable/nemo/client/service/NemoRpcService;

    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->arg$3:Ljava/lang/String;

    iget-wide v3, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->arg$4:J

    iget-object v5, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->arg$5:Lcom/liquable/nemo/endpoint/frame/RpcRequest;

    iget-object v6, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$3;->arg$6:Ljava/util/concurrent/ScheduledFuture;

    # invokes: Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendFrameWithFuture$2(Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/endpoint/frame/RpcRequest;Ljava/util/concurrent/ScheduledFuture;)V
    invoke-static/range {v0 .. v6}, Lcom/liquable/nemo/client/service/NemoRpcService;->access$lambda$2(Lcom/liquable/nemo/client/service/NemoRpcService;Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/endpoint/frame/RpcRequest;Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method
