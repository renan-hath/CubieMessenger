.class Lcom/liquable/future/FutureChain;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/liquable/future/IFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/future/FutureChain$OnDone;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/liquable/future/IFuture",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final COMPLETED_ON_DONE:Lcom/liquable/future/FutureChain$OnDone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/future/FutureChain$OnDone",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_ON_DONE:Lcom/liquable/future/FutureChain$OnDone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/future/FutureChain$OnDone",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final SKIPPED_ON_DONE:Lcom/liquable/future/FutureChain$OnDone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/future/FutureChain$OnDone",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final futureContext:Lcom/liquable/future/FutureContext;

.field private final lock:Ljava/lang/Object;

.field private nextFutureChain:Lcom/liquable/future/Skippable;

.field private onDone:Lcom/liquable/future/FutureChain$OnDone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/future/FutureChain$OnDone",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/liquable/future/FutureChain$1;

    invoke-direct {v0}, Lcom/liquable/future/FutureChain$1;-><init>()V

    sput-object v0, Lcom/liquable/future/FutureChain;->COMPLETED_ON_DONE:Lcom/liquable/future/FutureChain$OnDone;

    .line 17
    new-instance v0, Lcom/liquable/future/FutureChain$2;

    invoke-direct {v0}, Lcom/liquable/future/FutureChain$2;-><init>()V

    sput-object v0, Lcom/liquable/future/FutureChain;->NULL_ON_DONE:Lcom/liquable/future/FutureChain$OnDone;

    .line 24
    new-instance v0, Lcom/liquable/future/FutureChain$3;

    invoke-direct {v0}, Lcom/liquable/future/FutureChain$3;-><init>()V

    sput-object v0, Lcom/liquable/future/FutureChain;->SKIPPED_ON_DONE:Lcom/liquable/future/FutureChain$OnDone;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/future/FutureContext;)V
    .locals 2
    .param p1, "futureContext"    # Lcom/liquable/future/FutureContext;

    .prologue
    .line 86
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liquable/future/FutureChain;->lock:Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/liquable/future/FutureChain;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getNullOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/future/FutureChain;->nextFutureChain:Lcom/liquable/future/Skippable;

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Ljava/lang/Object;Lcom/liquable/future/FunctionWait;Lcom/liquable/future/FutureChain;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Lcom/liquable/future/FunctionWait;
    .param p2, "x2"    # Lcom/liquable/future/FutureChain;

    .prologue
    .line 3
    invoke-static {p0, p1, p2}, Lcom/liquable/future/FutureChain;->chainFunctionWait(Ljava/lang/Object;Lcom/liquable/future/FunctionWait;Lcom/liquable/future/FutureChain;)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/future/FutureChain;)Lcom/liquable/future/FutureContext;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/future/FutureChain;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;Lcom/liquable/future/Function;Lcom/liquable/future/FutureChain;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Lcom/liquable/future/Function;
    .param p2, "x2"    # Lcom/liquable/future/FutureChain;

    .prologue
    .line 3
    invoke-static {p0, p1, p2}, Lcom/liquable/future/FutureChain;->chainFunction(Ljava/lang/Object;Lcom/liquable/future/Function;Lcom/liquable/future/FutureChain;)V

    return-void
.end method

.method private static chainFunction(Ljava/lang/Object;Lcom/liquable/future/Function;Lcom/liquable/future/FutureChain;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/liquable/future/Function",
            "<-TT;+TR;>;",
            "Lcom/liquable/future/FutureChain",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "input":Ljava/lang/Object;, "TT;"
    .local p1, "func":Lcom/liquable/future/Function;, "Lcom/liquable/future/Function<-TT;+TR;>;"
    .local p2, "nextChain":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TR;>;"
    const/4 v2, 0x0

    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, "next":Ljava/lang/Object;, "TR;"
    :try_start_0
    invoke-interface {p1, p0}, Lcom/liquable/future/Function;->run(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    invoke-virtual {p2, v1, v2}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 42
    .end local v1    # "next":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 37
    .restart local v1    # "next":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2, v2, v0}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static chainFunctionWait(Ljava/lang/Object;Lcom/liquable/future/FunctionWait;Lcom/liquable/future/FutureChain;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/liquable/future/FunctionWait",
            "<-TT;+TR;>;",
            "Lcom/liquable/future/FutureChain",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "input":Ljava/lang/Object;, "TT;"
    .local p1, "func":Lcom/liquable/future/FunctionWait;, "Lcom/liquable/future/FunctionWait<-TT;+TR;>;"
    .local p2, "nextChain":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TR;>;"
    const/4 v2, 0x0

    .line 49
    .local v2, "next":Lcom/liquable/future/IFuture;, "Lcom/liquable/future/IFuture<+TR;>;"
    :try_start_0
    invoke-interface {p1, p0}, Lcom/liquable/future/FunctionWait;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/future/IFuture;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    if-nez v2, :cond_0

    .line 56
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "FunctionWait return null future"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v3, Lcom/liquable/future/FutureChain$5;

    invoke-direct {v3, p2}, Lcom/liquable/future/FutureChain$5;-><init>(Lcom/liquable/future/FutureChain;)V

    invoke-interface {v2, v3}, Lcom/liquable/future/IFuture;->map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v3

    const-class v4, Ljava/lang/Exception;

    new-instance v5, Lcom/liquable/future/FutureChain$4;

    invoke-direct {v5, p2}, Lcom/liquable/future/FutureChain$4;-><init>(Lcom/liquable/future/FutureChain;)V

    .line 66
    invoke-interface {v3, v4, v5}, Lcom/liquable/future/IFuture;->mapError(Ljava/lang/Class;Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    goto :goto_0
.end method

.method private enforceThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 186
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    iget-object v0, p0, Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;

    invoke-virtual {v0}, Lcom/liquable/future/FutureContext;->getEventLoop()Lcom/liquable/future/EventLoop;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/liquable/future/EventLoop;->enforceThread(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private getCompletedOnDone()Lcom/liquable/future/FutureChain$OnDone;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/future/FutureChain$OnDone",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    sget-object v0, Lcom/liquable/future/FutureChain;->COMPLETED_ON_DONE:Lcom/liquable/future/FutureChain$OnDone;

    return-object v0
.end method

.method private getNullOnDone()Lcom/liquable/future/FutureChain$OnDone;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/future/FutureChain$OnDone",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    sget-object v0, Lcom/liquable/future/FutureChain;->NULL_ON_DONE:Lcom/liquable/future/FutureChain$OnDone;

    return-object v0
.end method

.method private getSkippedOnDone()Lcom/liquable/future/FutureChain$OnDone;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/future/FutureChain$OnDone",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    sget-object v0, Lcom/liquable/future/FutureChain;->SKIPPED_ON_DONE:Lcom/liquable/future/FutureChain$OnDone;

    return-object v0
.end method

.method private setOnDoneOnce(Lcom/liquable/future/FutureChain$OnDone;Lcom/liquable/future/FutureChain;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/future/FutureChain$OnDone",
            "<TT;>;",
            "Lcom/liquable/future/FutureChain",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    .local p1, "onDone":Lcom/liquable/future/FutureChain$OnDone;, "Lcom/liquable/future/FutureChain$OnDone<TT;>;"
    .local p2, "next":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<*>;"
    iget-object v4, p0, Lcom/liquable/future/FutureChain;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 380
    :try_start_0
    iget-object v3, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getSkippedOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v5

    if-ne v3, v5, :cond_0

    .line 381
    const/4 v2, 0x1

    .line 382
    .local v2, "alreadySkipped":Z
    const/4 v1, 0x0

    .line 383
    .local v1, "alreadyCompleted":Z
    const/4 v0, 0x0

    .line 399
    .local v0, "alreadyAttached":Z
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    if-eqz v1, :cond_3

    .line 402
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "not allow attach to completed future"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 384
    .end local v0    # "alreadyAttached":Z
    .end local v1    # "alreadyCompleted":Z
    .end local v2    # "alreadySkipped":Z
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getCompletedOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v5

    if-ne v3, v5, :cond_1

    .line 385
    const/4 v2, 0x0

    .line 386
    .restart local v2    # "alreadySkipped":Z
    const/4 v1, 0x1

    .line 387
    .restart local v1    # "alreadyCompleted":Z
    const/4 v0, 0x0

    .restart local v0    # "alreadyAttached":Z
    goto :goto_0

    .line 388
    .end local v0    # "alreadyAttached":Z
    .end local v1    # "alreadyCompleted":Z
    .end local v2    # "alreadySkipped":Z
    :cond_1
    iget-object v3, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getNullOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v5

    if-ne v3, v5, :cond_2

    .line 389
    iput-object p1, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    .line 390
    iput-object p2, p0, Lcom/liquable/future/FutureChain;->nextFutureChain:Lcom/liquable/future/Skippable;

    .line 391
    const/4 v2, 0x0

    .line 392
    .restart local v2    # "alreadySkipped":Z
    const/4 v1, 0x0

    .line 393
    .restart local v1    # "alreadyCompleted":Z
    const/4 v0, 0x0

    .restart local v0    # "alreadyAttached":Z
    goto :goto_0

    .line 395
    .end local v0    # "alreadyAttached":Z
    .end local v1    # "alreadyCompleted":Z
    .end local v2    # "alreadySkipped":Z
    :cond_2
    const/4 v2, 0x0

    .line 396
    .restart local v2    # "alreadySkipped":Z
    const/4 v1, 0x0

    .line 397
    .restart local v1    # "alreadyCompleted":Z
    const/4 v0, 0x1

    .restart local v0    # "alreadyAttached":Z
    goto :goto_0

    .line 399
    .end local v0    # "alreadyAttached":Z
    .end local v1    # "alreadyCompleted":Z
    .end local v2    # "alreadySkipped":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 405
    .restart local v0    # "alreadyAttached":Z
    .restart local v1    # "alreadyCompleted":Z
    .restart local v2    # "alreadySkipped":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 406
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "not allow attach to skipped future"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 409
    :cond_4
    if-eqz v0, :cond_5

    .line 410
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "future only allow attach once"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 412
    :cond_5
    return-void
.end method


# virtual methods
.method public consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/future/Consumer",
            "<-TT;>;)",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    .local p1, "func":Lcom/liquable/future/Consumer;, "Lcom/liquable/future/Consumer<-TT;>;"
    const-string/jumbo v0, "\'then\' attach Consumer must in event loop"

    invoke-direct {p0, v0}, Lcom/liquable/future/FutureChain;->enforceThread(Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/liquable/future/FutureChain$6;

    invoke-direct {v0, p0, p1}, Lcom/liquable/future/FutureChain$6;-><init>(Lcom/liquable/future/FutureChain;Lcom/liquable/future/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/liquable/future/FutureChain;->map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public consumeError(Ljava/lang/Class;Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/liquable/future/Consumer",
            "<TE;>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "func":Lcom/liquable/future/Consumer;, "Lcom/liquable/future/Consumer<TE;>;"
    const-string/jumbo v1, "\'catchError\' attach Consumer must in event loop"

    invoke-direct {p0, v1}, Lcom/liquable/future/FutureChain;->enforceThread(Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/liquable/future/FutureChain;

    iget-object v1, p0, Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;

    invoke-direct {v0, v1}, Lcom/liquable/future/FutureChain;-><init>(Lcom/liquable/future/FutureContext;)V

    .line 115
    .local v0, "nextChain":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    new-instance v1, Lcom/liquable/future/FutureChain$7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/liquable/future/FutureChain$7;-><init>(Lcom/liquable/future/FutureChain;Lcom/liquable/future/FutureChain;Ljava/lang/Class;Lcom/liquable/future/Consumer;)V

    invoke-direct {p0, v1, v0}, Lcom/liquable/future/FutureChain;->setOnDoneOnce(Lcom/liquable/future/FutureChain$OnDone;Lcom/liquable/future/FutureChain;)V

    .line 142
    return-object v0
.end method

.method done(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 4
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/liquable/future/FutureChain;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    .line 160
    .local v0, "executing":Lcom/liquable/future/FutureChain$OnDone;, "Lcom/liquable/future/FutureChain$OnDone<TT;>;"
    iget-object v1, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getSkippedOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 162
    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getCompletedOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    .line 171
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getNullOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 174
    if-eqz p2, :cond_1

    .line 175
    iget-object v1, p0, Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;

    invoke-virtual {v1}, Lcom/liquable/future/FutureContext;->getExceptionHandler()Lcom/liquable/future/ExceptionHandler;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/liquable/future/ExceptionHandler;->handleUncaught(Ljava/lang/Exception;)V

    .line 183
    :cond_1
    :goto_1
    return-void

    .line 163
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getCompletedOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 165
    iget-object v1, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getNullOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v3

    if-ne v1, v3, :cond_3

    .line 166
    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getCompletedOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    goto :goto_0

    .line 171
    .end local v0    # "executing":Lcom/liquable/future/FutureChain$OnDone;, "Lcom/liquable/future/FutureChain$OnDone<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 169
    .restart local v0    # "executing":Lcom/liquable/future/FutureChain$OnDone;, "Lcom/liquable/future/FutureChain$OnDone<TT;>;"
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getCompletedOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 181
    :cond_4
    invoke-interface {v0, p1, p2}, Lcom/liquable/future/FutureChain$OnDone;->invoke(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public flatMap(Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/liquable/future/FunctionWait",
            "<-TT;+TR;>;)",
            "Lcom/liquable/future/IFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    .local p1, "func":Lcom/liquable/future/FunctionWait;, "Lcom/liquable/future/FunctionWait<-TT;+TR;>;"
    const-string/jumbo v1, "\'then\' attach FunctionWait must in event loop"

    invoke-direct {p0, v1}, Lcom/liquable/future/FutureChain;->enforceThread(Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/liquable/future/FutureChain;

    iget-object v1, p0, Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;

    invoke-direct {v0, v1}, Lcom/liquable/future/FutureChain;-><init>(Lcom/liquable/future/FutureContext;)V

    .line 194
    .local v0, "nextChain":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TR;>;"
    new-instance v1, Lcom/liquable/future/FutureChain$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/liquable/future/FutureChain$8;-><init>(Lcom/liquable/future/FutureChain;Lcom/liquable/future/FutureChain;Lcom/liquable/future/FunctionWait;)V

    invoke-direct {p0, v1, v0}, Lcom/liquable/future/FutureChain;->setOnDoneOnce(Lcom/liquable/future/FutureChain$OnDone;Lcom/liquable/future/FutureChain;)V

    .line 206
    return-object v0
.end method

.method public flatMapError(Ljava/lang/Class;Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/liquable/future/FunctionWait",
            "<TE;+TT;>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "func":Lcom/liquable/future/FunctionWait;, "Lcom/liquable/future/FunctionWait<TE;+TT;>;"
    const-string/jumbo v1, "\'catchError\' attach FunctionWait must in event loop"

    invoke-direct {p0, v1}, Lcom/liquable/future/FutureChain;->enforceThread(Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/liquable/future/FutureChain;

    iget-object v1, p0, Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;

    invoke-direct {v0, v1}, Lcom/liquable/future/FutureChain;-><init>(Lcom/liquable/future/FutureContext;)V

    .line 216
    .local v0, "nextChain":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    new-instance v1, Lcom/liquable/future/FutureChain$9;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/liquable/future/FutureChain$9;-><init>(Lcom/liquable/future/FutureChain;Lcom/liquable/future/FutureChain;Ljava/lang/Class;Lcom/liquable/future/FunctionWait;)V

    invoke-direct {p0, v1, v0}, Lcom/liquable/future/FutureChain;->setOnDoneOnce(Lcom/liquable/future/FutureChain$OnDone;Lcom/liquable/future/FutureChain;)V

    .line 237
    return-object v0
.end method

.method public flatMapWhenComplete(Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/future/FunctionWait",
            "<",
            "Ljava/lang/Void;",
            "*>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    .local p1, "func":Lcom/liquable/future/FunctionWait;, "Lcom/liquable/future/FunctionWait<Ljava/lang/Void;*>;"
    const-string/jumbo v1, "\'whenComplete\' attach FunctionWait must in event loop"

    invoke-direct {p0, v1}, Lcom/liquable/future/FutureChain;->enforceThread(Ljava/lang/String;)V

    .line 244
    new-instance v0, Lcom/liquable/future/FutureChain;

    iget-object v1, p0, Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;

    invoke-direct {v0, v1}, Lcom/liquable/future/FutureChain;-><init>(Lcom/liquable/future/FutureContext;)V

    .line 246
    .local v0, "nextChain":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    new-instance v1, Lcom/liquable/future/FutureChain$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/liquable/future/FutureChain$10;-><init>(Lcom/liquable/future/FutureChain;Lcom/liquable/future/FunctionWait;Lcom/liquable/future/FutureChain;)V

    invoke-direct {p0, v1, v0}, Lcom/liquable/future/FutureChain;->setOnDoneOnce(Lcom/liquable/future/FutureChain$OnDone;Lcom/liquable/future/FutureChain;)V

    .line 285
    return-object v0
.end method

.method public isCompleted()Z
    .locals 3

    .prologue
    .line 308
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    iget-object v1, p0, Lcom/liquable/future/FutureChain;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getCompletedOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/liquable/future/Function",
            "<-TT;+TR;>;)",
            "Lcom/liquable/future/IFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    .local p1, "func":Lcom/liquable/future/Function;, "Lcom/liquable/future/Function<-TT;+TR;>;"
    const-string/jumbo v1, "\'then\' attach Function must in event loop"

    invoke-direct {p0, v1}, Lcom/liquable/future/FutureChain;->enforceThread(Ljava/lang/String;)V

    .line 316
    new-instance v0, Lcom/liquable/future/FutureChain;

    iget-object v1, p0, Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;

    invoke-direct {v0, v1}, Lcom/liquable/future/FutureChain;-><init>(Lcom/liquable/future/FutureContext;)V

    .line 317
    .local v0, "nextChain":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TR;>;"
    new-instance v1, Lcom/liquable/future/FutureChain$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/liquable/future/FutureChain$11;-><init>(Lcom/liquable/future/FutureChain;Lcom/liquable/future/FutureChain;Lcom/liquable/future/Function;)V

    invoke-direct {p0, v1, v0}, Lcom/liquable/future/FutureChain;->setOnDoneOnce(Lcom/liquable/future/FutureChain$OnDone;Lcom/liquable/future/FutureChain;)V

    .line 328
    return-object v0
.end method

.method public mapError(Ljava/lang/Class;Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/liquable/future/Function",
            "<TE;+TT;>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "func":Lcom/liquable/future/Function;, "Lcom/liquable/future/Function<TE;+TT;>;"
    const-string/jumbo v1, "\'catchError\' attach Function must in event loop"

    invoke-direct {p0, v1}, Lcom/liquable/future/FutureChain;->enforceThread(Ljava/lang/String;)V

    .line 336
    new-instance v0, Lcom/liquable/future/FutureChain;

    iget-object v1, p0, Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;

    invoke-direct {v0, v1}, Lcom/liquable/future/FutureChain;-><init>(Lcom/liquable/future/FutureContext;)V

    .line 338
    .local v0, "nextChain":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    new-instance v1, Lcom/liquable/future/FutureChain$12;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/liquable/future/FutureChain$12;-><init>(Lcom/liquable/future/FutureChain;Lcom/liquable/future/FutureChain;Ljava/lang/Class;Lcom/liquable/future/Function;)V

    invoke-direct {p0, v1, v0}, Lcom/liquable/future/FutureChain;->setOnDoneOnce(Lcom/liquable/future/FutureChain$OnDone;Lcom/liquable/future/FutureChain;)V

    .line 359
    return-object v0
.end method

.method public run(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;
    .locals 1
    .param p1, "func"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    const-string/jumbo v0, "\'then\' attach Runnable must in event loop"

    invoke-direct {p0, v0}, Lcom/liquable/future/FutureChain;->enforceThread(Ljava/lang/String;)V

    .line 365
    new-instance v0, Lcom/liquable/future/FutureChain$13;

    invoke-direct {v0, p0, p1}, Lcom/liquable/future/FutureChain$13;-><init>(Lcom/liquable/future/FutureChain;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/liquable/future/FutureChain;->map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public skipAll()V
    .locals 4

    .prologue
    .line 421
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    iget-object v2, p0, Lcom/liquable/future/FutureChain;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/liquable/future/FutureChain;->nextFutureChain:Lcom/liquable/future/Skippable;

    .line 423
    .local v0, "next":Lcom/liquable/future/Skippable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/future/FutureChain;->nextFutureChain:Lcom/liquable/future/Skippable;

    .line 424
    iget-object v1, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getSkippedOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 433
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    if-eqz v0, :cond_1

    .line 436
    invoke-interface {v0}, Lcom/liquable/future/Skippable;->skipAll()V

    .line 438
    :cond_1
    return-void

    .line 426
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getCompletedOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 428
    iget-object v1, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getNullOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v3

    if-ne v1, v3, :cond_3

    .line 429
    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getSkippedOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;

    goto :goto_0

    .line 433
    .end local v0    # "next":Lcom/liquable/future/Skippable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 431
    .restart local v0    # "next":Lcom/liquable/future/Skippable;
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/liquable/future/FutureChain;->getSkippedOnDone()Lcom/liquable/future/FutureChain$OnDone;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/future/FutureChain;->onDone:Lcom/liquable/future/FutureChain$OnDone;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public whenComplete(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;
    .locals 2
    .param p1, "func"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    const-string/jumbo v1, "\'whenComplete\' attach Runnable must in event loop"

    invoke-direct {p0, v1}, Lcom/liquable/future/FutureChain;->enforceThread(Ljava/lang/String;)V

    .line 444
    new-instance v0, Lcom/liquable/future/FutureChain;

    iget-object v1, p0, Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;

    invoke-direct {v0, v1}, Lcom/liquable/future/FutureChain;-><init>(Lcom/liquable/future/FutureContext;)V

    .line 446
    .local v0, "nextChain":Lcom/liquable/future/FutureChain;, "Lcom/liquable/future/FutureChain<TT;>;"
    new-instance v1, Lcom/liquable/future/FutureChain$14;

    invoke-direct {v1, p0, p1, v0}, Lcom/liquable/future/FutureChain$14;-><init>(Lcom/liquable/future/FutureChain;Ljava/lang/Runnable;Lcom/liquable/future/FutureChain;)V

    invoke-direct {p0, v1, v0}, Lcom/liquable/future/FutureChain;->setOnDoneOnce(Lcom/liquable/future/FutureChain$OnDone;Lcom/liquable/future/FutureChain;)V

    .line 464
    return-object v0
.end method
