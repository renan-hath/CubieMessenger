.class final enum Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;
.super Ljava/lang/Enum;
.source "LiteSecureLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/layer/LiteSecureLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HeartbeatAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;


# instance fields
.field private final idCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final srcHeartbeats:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/liquable/nemo/endpoint/frame/Heartbeat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->INSTANCE:Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    sget-object v1, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->INSTANCE:Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->$VALUES:[Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->idCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    new-instance v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter$1;-><init>(Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;)V

    iput-object v0, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->srcHeartbeats:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->$VALUES:[Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;

    return-object v0
.end method


# virtual methods
.method public epFrameToRecord(Lcom/liquable/nemo/endpoint/frame/Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 4
    .param p1, "heartbeat"    # Lcom/liquable/nemo/endpoint/frame/Heartbeat;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->idCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 57
    .local v0, "newHeartbeatId":I
    iget-object v2, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->srcHeartbeats:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->srcHeartbeats:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/ClientRecordFactory;->heartbeat(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v1

    return-object v1

    .line 59
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public recordToEpFrame(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;
    .locals 7
    .param p1, "heartbeatResponse"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getCommand()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getHeartbeatResponse()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v1

    .line 68
    .local v1, "response":Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    const/4 v2, 0x0

    .line 69
    .local v2, "srcHeartbeat":Lcom/liquable/nemo/endpoint/frame/Heartbeat;
    iget-object v4, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->srcHeartbeats:Ljava/util/LinkedHashMap;

    monitor-enter v4

    .line 70
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/client/layer/LiteSecureLayer$HeartbeatAdapter;->srcHeartbeats:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getHeartbeatId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/frame/Heartbeat;

    move-object v2, v0

    .line 71
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-nez v2, :cond_0

    .line 74
    # getter for: Lcom/liquable/nemo/client/layer/LiteSecureLayer;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/client/layer/LiteSecureLayer;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    const-string/jumbo v4, "source heartbeat missing while receiving heartbeat response"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 75
    new-instance v3, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getServerTime()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;-><init>(Ljava/lang/String;J)V

    .line 77
    :goto_0
    return-object v3

    .line 71
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 77
    :cond_0
    new-instance v3, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/frame/Heartbeat;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getServerTime()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;-><init>(Ljava/lang/String;J)V

    goto :goto_0
.end method
