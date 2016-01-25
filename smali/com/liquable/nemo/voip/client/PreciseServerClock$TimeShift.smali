.class Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;
.super Ljava/lang/Object;
.source "PreciseServerClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/client/PreciseServerClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeShift"
.end annotation


# instance fields
.field private final lastServerTime:J

.field private final localClockShift:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "lastServerTime"    # J
    .param p3, "localClockShift"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;->lastServerTime:J

    .line 29
    iput-wide p3, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;->localClockShift:J

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;->getAdjustedClock()J

    move-result-wide v0

    return-wide v0
.end method

.method private getAdjustedClock()J
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;->localClockShift:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public isOutOfDate()Z
    .locals 4

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;->lastServerTime:J

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-direct {p0}, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;->getAdjustedClock()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
