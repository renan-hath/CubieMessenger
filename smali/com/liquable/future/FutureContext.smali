.class final Lcom/liquable/future/FutureContext;
.super Ljava/lang/Object;
.source "FutureContext.java"

# interfaces
.implements Lcom/liquable/future/CompleterFactory;


# instance fields
.field private final eventLoop:Lcom/liquable/future/EventLoop;

.field private final exceptionHandler:Lcom/liquable/future/ExceptionHandler;


# direct methods
.method public constructor <init>(Lcom/liquable/future/EventLoop;Lcom/liquable/future/ExceptionHandler;)V
    .locals 0
    .param p1, "eventLoop"    # Lcom/liquable/future/EventLoop;
    .param p2, "exceptionHandler"    # Lcom/liquable/future/ExceptionHandler;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/liquable/future/FutureContext;->eventLoop:Lcom/liquable/future/EventLoop;

    .line 14
    iput-object p2, p0, Lcom/liquable/future/FutureContext;->exceptionHandler:Lcom/liquable/future/ExceptionHandler;

    .line 15
    return-void
.end method


# virtual methods
.method public async(Ljava/util/concurrent/Callable;)Lcom/liquable/future/IFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)",
            "Lcom/liquable/future/IFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    invoke-virtual {p0}, Lcom/liquable/future/FutureContext;->createCompleter()Lcom/liquable/future/Completer;

    move-result-object v0

    .line 19
    .local v0, "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<TR;>;"
    iget-object v1, p0, Lcom/liquable/future/FutureContext;->eventLoop:Lcom/liquable/future/EventLoop;

    new-instance v2, Lcom/liquable/future/FutureContext$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/liquable/future/FutureContext$1;-><init>(Lcom/liquable/future/FutureContext;Ljava/util/concurrent/Callable;Lcom/liquable/future/Completer;)V

    invoke-interface {v1, v2}, Lcom/liquable/future/EventLoop;->addAsync(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {v0}, Lcom/liquable/future/Completer;->getFuture()Lcom/liquable/future/IFuture;

    move-result-object v1

    return-object v1
.end method

.method public createCompleter()Lcom/liquable/future/Completer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/liquable/future/Completer",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/liquable/future/Completer;

    invoke-direct {v0, p0}, Lcom/liquable/future/Completer;-><init>(Lcom/liquable/future/FutureContext;)V

    return-object v0
.end method

.method public delayed(J)Lcom/liquable/future/IFuture;
    .locals 3
    .param p1, "milliseconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/liquable/future/FutureContext;->createCompleter()Lcom/liquable/future/Completer;

    move-result-object v0

    .line 43
    .local v0, "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/liquable/future/FutureContext;->eventLoop:Lcom/liquable/future/EventLoop;

    new-instance v2, Lcom/liquable/future/FutureContext$2;

    invoke-direct {v2, p0, v0}, Lcom/liquable/future/FutureContext$2;-><init>(Lcom/liquable/future/FutureContext;Lcom/liquable/future/Completer;)V

    invoke-interface {v1, p1, p2, v2}, Lcom/liquable/future/EventLoop;->addDelayed(JLjava/lang/Runnable;)V

    .line 50
    invoke-virtual {v0}, Lcom/liquable/future/Completer;->getFuture()Lcom/liquable/future/IFuture;

    move-result-object v1

    return-object v1
.end method

.method public delayedFunction(J)Lcom/liquable/future/FunctionWait;
    .locals 1
    .param p1, "milliseconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(J)",
            "Lcom/liquable/future/FunctionWait",
            "<TR;TR;>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/liquable/future/FutureContext$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/liquable/future/FutureContext$3;-><init>(Lcom/liquable/future/FutureContext;J)V

    return-object v0
.end method

.method public error(Ljava/lang/Exception;)Lcom/liquable/future/IFuture;
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/liquable/future/FutureContext;->createCompleter()Lcom/liquable/future/Completer;

    move-result-object v0

    .line 65
    .local v0, "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<TR;>;"
    invoke-virtual {v0, p1}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    .line 66
    invoke-virtual {v0}, Lcom/liquable/future/Completer;->getFuture()Lcom/liquable/future/IFuture;

    move-result-object v1

    return-object v1
.end method

.method public eventLoop(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/future/FutureContext;->eventLoop:Lcom/liquable/future/EventLoop;

    invoke-interface {v0, p1}, Lcom/liquable/future/EventLoop;->add(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public getEventLoop()Lcom/liquable/future/EventLoop;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/liquable/future/FutureContext;->eventLoop:Lcom/liquable/future/EventLoop;

    return-object v0
.end method

.method public getExceptionHandler()Lcom/liquable/future/ExceptionHandler;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/future/FutureContext;->exceptionHandler:Lcom/liquable/future/ExceptionHandler;

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Lcom/liquable/future/IFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lcom/liquable/future/IFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "result":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0}, Lcom/liquable/future/FutureContext;->createCompleter()Lcom/liquable/future/Completer;

    move-result-object v0

    .line 83
    .local v0, "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<TR;>;"
    invoke-virtual {v0, p1}, Lcom/liquable/future/Completer;->complete(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v0}, Lcom/liquable/future/Completer;->getFuture()Lcom/liquable/future/IFuture;

    move-result-object v1

    return-object v1
.end method

.method public varargs wait([Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;
    .locals 8
    .param p1, "futures"    # [Lcom/liquable/future/IFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/liquable/future/IFuture;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/liquable/future/FutureContext;->createCompleter()Lcom/liquable/future/Completer;

    move-result-object v0

    .line 90
    .local v0, "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Ljava/util/List<Ljava/lang/Object;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v4, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    array-length v6, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, p1, v5

    .line 94
    .local v1, "future":Lcom/liquable/future/IFuture;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "future":Lcom/liquable/future/IFuture;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_1

    .line 98
    move v3, v2

    .line 99
    .local v3, "index":I
    aget-object v5, p1, v2

    new-instance v6, Lcom/liquable/future/FutureContext$5;

    invoke-direct {v6, p0, v0, v4, v3}, Lcom/liquable/future/FutureContext$5;-><init>(Lcom/liquable/future/FutureContext;Lcom/liquable/future/Completer;Ljava/util/ArrayList;I)V

    invoke-interface {v5, v6}, Lcom/liquable/future/IFuture;->map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v5

    const-class v6, Ljava/lang/Exception;

    new-instance v7, Lcom/liquable/future/FutureContext$4;

    invoke-direct {v7, p0, v0}, Lcom/liquable/future/FutureContext$4;-><init>(Lcom/liquable/future/FutureContext;Lcom/liquable/future/Completer;)V

    .line 118
    invoke-interface {v5, v6, v7}, Lcom/liquable/future/IFuture;->mapError(Ljava/lang/Class;Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    .end local v3    # "index":I
    :cond_1
    invoke-virtual {v0}, Lcom/liquable/future/Completer;->getFuture()Lcom/liquable/future/IFuture;

    move-result-object v5

    return-object v5
.end method
