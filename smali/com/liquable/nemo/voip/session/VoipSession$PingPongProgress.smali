.class final Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;
.super Ljava/lang/Object;
.source "VoipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/session/VoipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PingPongProgress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;
    }
.end annotation


# static fields
.field public static final INTERVAL:J = 0x1388L

.field private static final LAST_PING_SUCCESS:J = 0x7fffffffffffffffL

.field private static final OUTLIER_THRESHOLD:J = 0x7d0L

.field private static final PING_TIMEOUT:J = 0x4e20L


# instance fields
.field private lastPingTime:J

.field private totalPongCount:I

.field private totalPongDuration:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->lastPingTime:J

    .line 751
    return-void
.end method


# virtual methods
.method public calcAvgDuration()J
    .locals 4

    .prologue
    .line 755
    iget v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->totalPongCount:I

    if-nez v0, :cond_0

    .line 757
    const-wide/16 v0, 0x7d0

    .line 759
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->totalPongDuration:J

    long-to-double v0, v0

    iget v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->totalPongCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    goto :goto_0
.end method

.method public pongReceived(J)V
    .locals 4
    .param p1, "duration"    # J

    .prologue
    .line 763
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->lastPingTime:J

    .line 764
    iget-wide v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->totalPongDuration:J

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->totalPongDuration:J

    .line 765
    iget v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->totalPongCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->totalPongCount:I

    .line 766
    return-void
.end method

.method public preparePing()Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;
    .locals 6

    .prologue
    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 770
    .local v0, "now":J
    iget-wide v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->lastPingTime:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 771
    iput-wide v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->lastPingTime:J

    .line 772
    sget-object v2, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->READY:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    .line 777
    :goto_0
    return-object v2

    .line 774
    :cond_0
    iget-wide v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->lastPingTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 775
    sget-object v2, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->WAIT_TIME_OUT:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    goto :goto_0

    .line 777
    :cond_1
    sget-object v2, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->WAITING_LAST_PING:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    goto :goto_0
.end method
