.class Lcom/liquable/nemo/voip/client/PreciseServerClock$1;
.super Ljava/lang/Object;
.source "PreciseServerClock.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/client/PreciseServerClock;->findCurrentTimeSync()Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/client/PreciseServerClock;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/client/PreciseServerClock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/client/PreciseServerClock;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock$1;->this$0:Lcom/liquable/nemo/voip/client/PreciseServerClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 72
    .local v7, "startTime":J
    iget-object v9, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock$1;->this$0:Lcom/liquable/nemo/voip/client/PreciseServerClock;

    # getter for: Lcom/liquable/nemo/voip/client/PreciseServerClock;->homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;
    invoke-static {v9}, Lcom/liquable/nemo/voip/client/PreciseServerClock;->access$100(Lcom/liquable/nemo/voip/client/PreciseServerClock;)Lcom/liquable/nemo/client/home/HomeServerClient;

    move-result-object v9

    invoke-virtual {v9}, Lcom/liquable/nemo/client/home/HomeServerClient;->findServerTime()Ljava/lang/Long;

    move-result-object v5

    .line 73
    .local v5, "serverTime":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    .local v0, "endTime":J
    sub-long v9, v0, v7

    const-wide/16 v11, 0x2710

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    const/4 v4, 0x1

    .line 77
    .local v4, "requestTooLong":Z
    :goto_0
    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v2, v9, v11

    .line 79
    .local v2, "localClockShift":J
    new-instance v6, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v6, v9, v10, v2, v3}, Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;-><init>(JJ)V

    .line 80
    .local v6, "shift":Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;
    iget-object v9, p0, Lcom/liquable/nemo/voip/client/PreciseServerClock$1;->this$0:Lcom/liquable/nemo/voip/client/PreciseServerClock;

    # getter for: Lcom/liquable/nemo/voip/client/PreciseServerClock;->timeShiftRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v9}, Lcom/liquable/nemo/voip/client/PreciseServerClock;->access$200(Lcom/liquable/nemo/voip/client/PreciseServerClock;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 83
    .end local v2    # "localClockShift":J
    .end local v6    # "shift":Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;
    :goto_1
    return-object v6

    .line 75
    .end local v4    # "requestTooLong":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 83
    .restart local v4    # "requestTooLong":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/client/PreciseServerClock$1;->call()Lcom/liquable/nemo/voip/client/PreciseServerClock$TimeShift;

    move-result-object v0

    return-object v0
.end method
