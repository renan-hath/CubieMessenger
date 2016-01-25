.class public Lcom/liquable/nemo/util/ServerTime;
.super Ljava/lang/Object;
.source "ServerTime.java"


# static fields
.field private static INSTANCE:Lcom/liquable/nemo/util/ServerTime;


# instance fields
.field private adjusted:Z

.field private delta:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/liquable/nemo/util/ServerTime;

    invoke-direct {v0}, Lcom/liquable/nemo/util/ServerTime;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/ServerTime;->INSTANCE:Lcom/liquable/nemo/util/ServerTime;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/util/ServerTime;->adjusted:Z

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/liquable/nemo/util/ServerTime;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/liquable/nemo/util/ServerTime;->INSTANCE:Lcom/liquable/nemo/util/ServerTime;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getTime(J)J
    .locals 2
    .param p1, "clientTime"    # J

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/liquable/nemo/util/ServerTime;->delta:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, p1

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized neverAdjusted()Z
    .locals 1

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/liquable/nemo/util/ServerTime;->adjusted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFrameReceiveTime(J)V
    .locals 2
    .param p1, "serverTime"    # J

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/liquable/nemo/util/ServerTime;->delta:J

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/ServerTime;->adjusted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServerTime [delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/util/ServerTime;->delta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", adjusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/util/ServerTime;->adjusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
