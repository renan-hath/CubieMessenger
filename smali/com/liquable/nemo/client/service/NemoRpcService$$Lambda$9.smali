.class final synthetic Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/client/service/NemoRpcService;

.field private final arg$2:Lcom/liquable/nemo/endpoint/frame/SendText;

.field private final arg$3:J

.field private final arg$4:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;JLjava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;->arg$1:Lcom/liquable/nemo/client/service/NemoRpcService;

    iput-object p2, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;->arg$2:Lcom/liquable/nemo/endpoint/frame/SendText;

    iput-wide p3, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;->arg$3:J

    iput-object p5, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;->arg$4:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;JLjava/util/concurrent/ScheduledFuture;)Ljava/lang/Runnable;
    .locals 6

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;JLjava/util/concurrent/ScheduledFuture;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;JLjava/util/concurrent/ScheduledFuture;)Ljava/lang/Runnable;
    .locals 6

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;JLjava/util/concurrent/ScheduledFuture;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;->arg$1:Lcom/liquable/nemo/client/service/NemoRpcService;

    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;->arg$2:Lcom/liquable/nemo/endpoint/frame/SendText;

    iget-wide v2, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;->arg$3:J

    iget-object v4, p0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$9;->arg$4:Ljava/util/concurrent/ScheduledFuture;

    # invokes: Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendTextWithFuture$7(Lcom/liquable/nemo/endpoint/frame/SendText;JLjava/util/concurrent/ScheduledFuture;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->access$lambda$7(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/endpoint/frame/SendText;JLjava/util/concurrent/ScheduledFuture;)V

    return-void
.end method
