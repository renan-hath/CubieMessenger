.class public Lcom/liquable/future/Futures;
.super Ljava/lang/Object;
.source "Futures.java"


# static fields
.field private static final checkFutureContext:Lcom/liquable/future/FutureContext;

.field private static final defaultExceptionHandler:Lcom/liquable/future/ExceptionHandler;

.field private static final eventLoopSetupCheck:Lcom/liquable/future/EventLoop;

.field private static final futureContextRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/future/FutureContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lcom/liquable/future/Futures$1;

    invoke-direct {v0}, Lcom/liquable/future/Futures$1;-><init>()V

    sput-object v0, Lcom/liquable/future/Futures;->eventLoopSetupCheck:Lcom/liquable/future/EventLoop;

    .line 32
    new-instance v0, Lcom/liquable/future/Futures$2;

    invoke-direct {v0}, Lcom/liquable/future/Futures$2;-><init>()V

    sput-object v0, Lcom/liquable/future/Futures;->defaultExceptionHandler:Lcom/liquable/future/ExceptionHandler;

    .line 48
    new-instance v0, Lcom/liquable/future/FutureContext;

    sget-object v1, Lcom/liquable/future/Futures;->eventLoopSetupCheck:Lcom/liquable/future/EventLoop;

    sget-object v2, Lcom/liquable/future/Futures;->defaultExceptionHandler:Lcom/liquable/future/ExceptionHandler;

    invoke-direct {v0, v1, v2}, Lcom/liquable/future/FutureContext;-><init>(Lcom/liquable/future/EventLoop;Lcom/liquable/future/ExceptionHandler;)V

    sput-object v0, Lcom/liquable/future/Futures;->checkFutureContext:Lcom/liquable/future/FutureContext;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/liquable/future/Futures;->checkFutureContext:Lcom/liquable/future/FutureContext;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/liquable/future/Futures;->futureContextRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static async(Ljava/util/concurrent/Callable;)Lcom/liquable/future/IFuture;
    .locals 1
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
    .line 62
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    sget-object v0, Lcom/liquable/future/Futures;->futureContextRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/FutureContext;

    invoke-virtual {v0, p0}, Lcom/liquable/future/FutureContext;->async(Ljava/util/concurrent/Callable;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public static createCompleter()Lcom/liquable/future/Completer;
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
    .line 70
    sget-object v0, Lcom/liquable/future/Futures;->futureContextRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/FutureContext;

    invoke-virtual {v0}, Lcom/liquable/future/FutureContext;->createCompleter()Lcom/liquable/future/Completer;

    move-result-object v0

    return-object v0
.end method

.method public static delayed(J)Lcom/liquable/future/IFuture;
    .locals 1
    .param p0, "milliseconds"    # J
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
    .line 77
    sget-object v0, Lcom/liquable/future/Futures;->futureContextRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/FutureContext;

    invoke-virtual {v0, p0, p1}, Lcom/liquable/future/FutureContext;->delayed(J)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public static delayedFunction(J)Lcom/liquable/future/FunctionWait;
    .locals 1
    .param p0, "milliseconds"    # J
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
    .line 107
    sget-object v0, Lcom/liquable/future/Futures;->futureContextRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/FutureContext;

    invoke-virtual {v0, p0, p1}, Lcom/liquable/future/FutureContext;->delayedFunction(J)Lcom/liquable/future/FunctionWait;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/Exception;)Lcom/liquable/future/IFuture;
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
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
    .line 114
    sget-object v0, Lcom/liquable/future/Futures;->futureContextRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/FutureContext;

    invoke-virtual {v0, p0}, Lcom/liquable/future/FutureContext;->error(Ljava/lang/Exception;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public static eventLoop(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 123
    sget-object v0, Lcom/liquable/future/Futures;->futureContextRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/FutureContext;

    invoke-virtual {v0, p0}, Lcom/liquable/future/FutureContext;->eventLoop(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public static getCompleterFactory()Lcom/liquable/future/CompleterFactory;
    .locals 3

    .prologue
    .line 134
    sget-object v1, Lcom/liquable/future/Futures;->futureContextRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/FutureContext;

    .line 135
    .local v0, "futureContext":Lcom/liquable/future/FutureContext;
    sget-object v1, Lcom/liquable/future/Futures;->checkFutureContext:Lcom/liquable/future/FutureContext;

    if-ne v1, v0, :cond_0

    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Futures not init yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    return-object v0
.end method

.method public static init(Lcom/liquable/future/EventLoop;Lcom/liquable/future/ExceptionHandler;)V
    .locals 3
    .param p0, "eventLoop"    # Lcom/liquable/future/EventLoop;
    .param p1, "exceptionHandler"    # Lcom/liquable/future/ExceptionHandler;

    .prologue
    .line 146
    sget-object v0, Lcom/liquable/future/Futures;->futureContextRef:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/liquable/future/Futures;->checkFutureContext:Lcom/liquable/future/FutureContext;

    new-instance v2, Lcom/liquable/future/FutureContext;

    invoke-direct {v2, p0, p1}, Lcom/liquable/future/FutureContext;-><init>(Lcom/liquable/future/EventLoop;Lcom/liquable/future/ExceptionHandler;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public static value(Ljava/lang/Object;)Lcom/liquable/future/IFuture;
    .locals 1
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
    .line 154
    .local p0, "result":Ljava/lang/Object;, "TR;"
    sget-object v0, Lcom/liquable/future/Futures;->futureContextRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/FutureContext;

    invoke-virtual {v0, p0}, Lcom/liquable/future/FutureContext;->value(Ljava/lang/Object;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wait([Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;
    .locals 1
    .param p0, "futures"    # [Lcom/liquable/future/IFuture;
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
    .line 163
    sget-object v0, Lcom/liquable/future/Futures;->futureContextRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/FutureContext;

    invoke-virtual {v0, p0}, Lcom/liquable/future/FutureContext;->wait([Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method
