.class public Lcom/liquable/nemo/android/service/RetryConnectingIntervals;
.super Ljava/lang/Object;
.source "RetryConnectingIntervals.java"


# instance fields
.field private index:I

.field private final intervals:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;->intervals:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x5
        0x5
        0xa
        0xa
        0x14
        0x1e
    .end array-data
.end method


# virtual methods
.method public declared-synchronized next()I
    .locals 3

    .prologue
    .line 14
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;->index:I

    iget-object v2, p0, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;->intervals:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 15
    iget v0, p0, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;->index:I

    .line 16
    .local v0, "current":I
    iget v1, p0, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;->index:I

    .line 17
    iget-object v1, p0, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;->intervals:[I

    aget v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .end local v0    # "current":I
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;->intervals:[I

    iget-object v2, p0, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;->intervals:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 24
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
