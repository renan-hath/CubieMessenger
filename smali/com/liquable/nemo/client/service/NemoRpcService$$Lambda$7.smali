.class final synthetic Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Function;


# static fields
.field private static final instance:Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$7;

    invoke-direct {v0}, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$7;-><init>()V

    sput-object v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$7;->instance:Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$7;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/liquable/future/Function;
    .locals 1

    sget-object v0, Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$7;->instance:Lcom/liquable/nemo/client/service/NemoRpcService$$Lambda$7;

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    # invokes: Lcom/liquable/nemo/client/service/NemoRpcService;->lambda$sendTextWithFuture$5(Ljava/lang/Object;)Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/liquable/nemo/client/service/NemoRpcService;->access$lambda$5(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
