.class public Lcom/liquable/nemo/android/service/Backoff;
.super Ljava/lang/Object;
.source "Backoff.java"


# static fields
.field private static final MAX_DELAYED_SECS:I = 0x780


# instance fields
.field private currentDelaySecs:I

.field private lastIncreaseTime:J

.field private successCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x1e

    iput v0, p0, Lcom/liquable/nemo/android/service/Backoff;->currentDelaySecs:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/android/service/Backoff;->successCount:I

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/liquable/nemo/android/service/Backoff;->lastIncreaseTime:J

    return-void
.end method


# virtual methods
.method public increase(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    iget-wide v3, p0, Lcom/liquable/nemo/android/service/Backoff;->lastIncreaseTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/liquable/nemo/android/service/Backoff;->lastIncreaseTime:J

    sub-long v3, p1, v3

    iget v5, p0, Lcom/liquable/nemo/android/service/Backoff;->currentDelaySecs:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    :cond_0
    move v0, v2

    .line 24
    .local v0, "passed":Z
    :goto_0
    if-nez v0, :cond_2

    move v0, v1

    .line 39
    .end local v0    # "passed":Z
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 23
    goto :goto_0

    .line 27
    .restart local v0    # "passed":Z
    :cond_2
    iput-wide p1, p0, Lcom/liquable/nemo/android/service/Backoff;->lastIncreaseTime:J

    .line 29
    iget v3, p0, Lcom/liquable/nemo/android/service/Backoff;->currentDelaySecs:I

    const/16 v4, 0x780

    if-lt v3, v4, :cond_3

    move v0, v2

    .line 30
    goto :goto_1

    .line 33
    :cond_3
    iget v3, p0, Lcom/liquable/nemo/android/service/Backoff;->successCount:I

    if-ne v3, v2, :cond_4

    .line 34
    iget v2, p0, Lcom/liquable/nemo/android/service/Backoff;->currentDelaySecs:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/liquable/nemo/android/service/Backoff;->currentDelaySecs:I

    .line 35
    iput v1, p0, Lcom/liquable/nemo/android/service/Backoff;->successCount:I

    goto :goto_1

    .line 37
    :cond_4
    iget v1, p0, Lcom/liquable/nemo/android/service/Backoff;->successCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/liquable/nemo/android/service/Backoff;->successCount:I

    goto :goto_1
.end method

.method public nextHearbeatDelay()J
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/liquable/nemo/android/service/Backoff;->currentDelaySecs:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 47
    const/16 v0, 0x1e

    iput v0, p0, Lcom/liquable/nemo/android/service/Backoff;->currentDelaySecs:I

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/liquable/nemo/android/service/Backoff;->lastIncreaseTime:J

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/android/service/Backoff;->successCount:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Backoff [currentDelaySecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/android/service/Backoff;->currentDelaySecs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", successCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/android/service/Backoff;->successCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastIncreaseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/android/service/Backoff;->lastIncreaseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
