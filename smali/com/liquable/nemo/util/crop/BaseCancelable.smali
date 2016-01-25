.class public abstract Lcom/liquable/nemo/util/crop/BaseCancelable;
.super Ljava/lang/Object;
.source "BaseCancelable.java"

# interfaces
.implements Lcom/liquable/nemo/util/crop/Cancelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/util/crop/Cancelable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final STATE_CANCELED:I = 0x8

.field private static final STATE_CANCELING:I = 0x4

.field private static final STATE_COMPLETE:I = 0x20

.field private static final STATE_ERROR:I = 0x10

.field private static final STATE_EXECUTING:I = 0x2

.field private static final STATE_INITIAL:I = 0x1


# instance fields
.field private mCurrentTask:Lcom/liquable/nemo/util/crop/Cancelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/Cancelable",
            "<*>;"
        }
    .end annotation
.end field

.field private mError:Ljava/lang/Throwable;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcom/liquable/nemo/util/crop/BaseCancelable;, "Lcom/liquable/nemo/util/crop/BaseCancelable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    return-void
.end method

.method private handleTerminalStates()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/liquable/nemo/util/crop/BaseCancelable;, "Lcom/liquable/nemo/util/crop/BaseCancelable<TT;>;"
    iget v0, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 109
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 110
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mError:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 112
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mResult:Ljava/lang/Object;

    return-object v0

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private isInStates(I)Z
    .locals 1
    .param p1, "states"    # I

    .prologue
    .line 119
    .local p0, "this":Lcom/liquable/nemo/util/crop/BaseCancelable;, "Lcom/liquable/nemo/util/crop/BaseCancelable<TT;>;"
    iget v0, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/liquable/nemo/util/crop/BaseCancelable;, "Lcom/liquable/nemo/util/crop/BaseCancelable<TT;>;"
    monitor-enter p0

    :goto_0
    const/16 v0, 0x38

    :try_start_0
    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/crop/BaseCancelable;->isInStates(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 56
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected freeCanceledResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/liquable/nemo/util/crop/BaseCancelable;, "Lcom/liquable/nemo/util/crop/BaseCancelable<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/BaseCancelable;, "Lcom/liquable/nemo/util/crop/BaseCancelable<TT;>;"
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/16 v4, 0x8

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/BaseCancelable;->await()V

    .line 72
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/BaseCancelable;->handleTerminalStates()Ljava/lang/Object;

    move-result-object v2

    monitor-exit p0

    .line 101
    :goto_0
    return-object v2

    .line 74
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    .line 75
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/BaseCancelable;->execute()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mResult:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 90
    :goto_1
    monitor-enter p0

    .line 91
    :try_start_2
    iget v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    if-ne v2, v6, :cond_1

    .line 92
    const/16 v2, 0x8

    iput v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    .line 94
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    if-ne v2, v5, :cond_2

    .line 95
    const/16 v2, 0x20

    iput v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    .line 97
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 98
    iget v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mResult:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mResult:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/util/crop/BaseCancelable;->freeCanceledResult(Ljava/lang/Object;)V

    .line 101
    :cond_3
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/BaseCancelable;->handleTerminalStates()Ljava/lang/Object;

    move-result-object v2

    monitor-exit p0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 75
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iput v4, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    goto :goto_1

    .line 80
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/InterruptedException;
    iput v4, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    goto :goto_1

    .line 82
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 83
    .local v1, "error":Ljava/lang/Throwable;
    monitor-enter p0

    .line 84
    :try_start_4
    iget v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    if-eq v2, v6, :cond_4

    .line 85
    iput-object v1, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mError:Ljava/lang/Throwable;

    .line 86
    const/16 v2, 0x10

    iput v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    .line 88
    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method

.method public declared-synchronized requestCancel()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/BaseCancelable;, "Lcom/liquable/nemo/util/crop/BaseCancelable<TT;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    if-ne v2, v1, :cond_1

    .line 131
    const/16 v1, 0x8

    iput v1, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 135
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 136
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mCurrentTask:Lcom/liquable/nemo/util/crop/Cancelable;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mCurrentTask:Lcom/liquable/nemo/util/crop/Cancelable;

    invoke-interface {v0}, Lcom/liquable/nemo/util/crop/Cancelable;->requestCancel()Z

    .line 139
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/util/crop/BaseCancelable;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 140
    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
