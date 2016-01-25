.class public abstract Lcom/aviary/android/feather/library/utils/UserTask;
.super Ljava/lang/Object;
.source "UserTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;,
        Lcom/aviary/android/feather/library/utils/UserTask$Status;,
        Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;,
        Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$aviary$android$feather$library$utils$UserTask$Status:[I

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/aviary/android/feather/library/utils/UserTask$Status;

.field private final mWorker:Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$aviary$android$feather$library$utils$UserTask$Status()[I
    .locals 3

    .prologue
    .line 119
    sget-object v0, Lcom/aviary/android/feather/library/utils/UserTask;->$SWITCH_TABLE$com$aviary$android$feather$library$utils$UserTask$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/aviary/android/feather/library/utils/UserTask$Status;->values()[Lcom/aviary/android/feather/library/utils/UserTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/aviary/android/feather/library/utils/UserTask$Status;->FINISHED:Lcom/aviary/android/feather/library/utils/UserTask$Status;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/utils/UserTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/aviary/android/feather/library/utils/UserTask$Status;->PENDING:Lcom/aviary/android/feather/library/utils/UserTask$Status;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/utils/UserTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/aviary/android/feather/library/utils/UserTask$Status;->RUNNING:Lcom/aviary/android/feather/library/utils/UserTask$Status;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/utils/UserTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/aviary/android/feather/library/utils/UserTask;->$SWITCH_TABLE$com$aviary$android$feather$library$utils$UserTask$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v2, 0xa

    .line 127
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/aviary/android/feather/library/utils/UserTask;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 129
    new-instance v0, Lcom/aviary/android/feather/library/utils/UserTask$1;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/utils/UserTask$1;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/library/utils/UserTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 139
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const-wide/16 v3, 0xa

    .line 140
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/aviary/android/feather/library/utils/UserTask;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/aviary/android/feather/library/utils/UserTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 139
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/aviary/android/feather/library/utils/UserTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 146
    new-instance v0, Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;-><init>(Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;)V

    sput-object v0, Lcom/aviary/android/feather/library/utils/UserTask;->sHandler:Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 174
    .local p0, "this":Lcom/aviary/android/feather/library/utils/UserTask;, "Lcom/aviary/android/feather/library/utils/UserTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget-object v0, Lcom/aviary/android/feather/library/utils/UserTask$Status;->PENDING:Lcom/aviary/android/feather/library/utils/UserTask$Status;

    iput-object v0, p0, Lcom/aviary/android/feather/library/utils/UserTask;->mStatus:Lcom/aviary/android/feather/library/utils/UserTask$Status;

    .line 175
    new-instance v0, Lcom/aviary/android/feather/library/utils/UserTask$2;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/library/utils/UserTask$2;-><init>(Lcom/aviary/android/feather/library/utils/UserTask;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/utils/UserTask;->mWorker:Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;

    .line 184
    new-instance v0, Lcom/aviary/android/feather/library/utils/UserTask$3;

    iget-object v1, p0, Lcom/aviary/android/feather/library/utils/UserTask;->mWorker:Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/aviary/android/feather/library/utils/UserTask$3;-><init>(Lcom/aviary/android/feather/library/utils/UserTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/utils/UserTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 210
    return-void
.end method

.method static synthetic access$0(Lcom/aviary/android/feather/library/utils/UserTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/utils/UserTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1()Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/aviary/android/feather/library/utils/UserTask;->sHandler:Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;

    return-object v0
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Lcom/aviary/android/feather/library/utils/UserTask;, "Lcom/aviary/android/feather/library/utils/UserTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/utils/UserTask;->onPostExecute(Ljava/lang/Object;)V

    .line 401
    sget-object v0, Lcom/aviary/android/feather/library/utils/UserTask$Status;->FINISHED:Lcom/aviary/android/feather/library/utils/UserTask$Status;

    iput-object v0, p0, Lcom/aviary/android/feather/library/utils/UserTask;->mStatus:Lcom/aviary/android/feather/library/utils/UserTask$Status;

    .line 402
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 307
    .local p0, "this":Lcom/aviary/android/feather/library/utils/UserTask;, "Lcom/aviary/android/feather/library/utils/UserTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/library/utils/UserTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/aviary/android/feather/library/utils/UserTask;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/aviary/android/feather/library/utils/UserTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lcom/aviary/android/feather/library/utils/UserTask;, "Lcom/aviary/android/feather/library/utils/UserTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/library/utils/UserTask;->mStatus:Lcom/aviary/android/feather/library/utils/UserTask$Status;

    sget-object v1, Lcom/aviary/android/feather/library/utils/UserTask$Status;->PENDING:Lcom/aviary/android/feather/library/utils/UserTask$Status;

    if-eq v0, v1, :cond_0

    .line 365
    invoke-static {}, Lcom/aviary/android/feather/library/utils/UserTask;->$SWITCH_TABLE$com$aviary$android$feather$library$utils$UserTask$Status()[I

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/library/utils/UserTask;->mStatus:Lcom/aviary/android/feather/library/utils/UserTask$Status;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/utils/UserTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 374
    :cond_0
    sget-object v0, Lcom/aviary/android/feather/library/utils/UserTask$Status;->RUNNING:Lcom/aviary/android/feather/library/utils/UserTask$Status;

    iput-object v0, p0, Lcom/aviary/android/feather/library/utils/UserTask;->mStatus:Lcom/aviary/android/feather/library/utils/UserTask$Status;

    .line 376
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/utils/UserTask;->onPreExecute()V

    .line 378
    iget-object v0, p0, Lcom/aviary/android/feather/library/utils/UserTask;->mWorker:Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;

    iput-object p1, v0, Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/aviary/android/feather/library/utils/UserTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/aviary/android/feather/library/utils/UserTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 381
    return-object p0

    .line 367
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lcom/aviary/android/feather/library/utils/UserTask;, "Lcom/aviary/android/feather/library/utils/UserTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/library/utils/UserTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public onCancelled()V
    .locals 0

    .prologue
    .line 277
    .local p0, "this":Lcom/aviary/android/feather/library/utils/UserTask;, "Lcom/aviary/android/feather/library/utils/UserTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lcom/aviary/android/feather/library/utils/UserTask;, "Lcom/aviary/android/feather/library/utils/UserTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 244
    .local p0, "this":Lcom/aviary/android/feather/library/utils/UserTask;, "Lcom/aviary/android/feather/library/utils/UserTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/aviary/android/feather/library/utils/UserTask;, "Lcom/aviary/android/feather/library/utils/UserTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lcom/aviary/android/feather/library/utils/UserTask;, "Lcom/aviary/android/feather/library/utils/UserTask<TParams;TProgress;TResult;>;"
    sget-object v0, Lcom/aviary/android/feather/library/utils/UserTask;->sHandler:Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;-><init>(Lcom/aviary/android/feather/library/utils/UserTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 397
    return-void
.end method
