.class public Lcom/liquable/future/Completer;
.super Ljava/lang/Object;
.source "Completer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final futureChain:Lcom/liquable/future/FutureChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/future/FutureChain",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final futureContext:Lcom/liquable/future/FutureContext;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureContext;)V
    .locals 1
    .param p1, "futureContext"    # Lcom/liquable/future/FutureContext;

    .prologue
    .line 8
    .local p0, "this":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/liquable/future/Completer;->futureContext:Lcom/liquable/future/FutureContext;

    .line 10
    new-instance v0, Lcom/liquable/future/FutureChain;

    invoke-direct {v0, p1}, Lcom/liquable/future/FutureChain;-><init>(Lcom/liquable/future/FutureContext;)V

    iput-object v0, p0, Lcom/liquable/future/Completer;->futureChain:Lcom/liquable/future/FutureChain;

    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/future/Completer;)Lcom/liquable/future/FutureChain;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/future/Completer;

    .prologue
    .line 3
    iget-object v0, p0, Lcom/liquable/future/Completer;->futureChain:Lcom/liquable/future/FutureChain;

    return-object v0
.end method


# virtual methods
.method public complete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/liquable/future/Completer;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "completer already completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/liquable/future/Completer;->futureContext:Lcom/liquable/future/FutureContext;

    invoke-virtual {v0}, Lcom/liquable/future/FutureContext;->getEventLoop()Lcom/liquable/future/EventLoop;

    move-result-object v0

    new-instance v1, Lcom/liquable/future/Completer$1;

    invoke-direct {v1, p0, p1}, Lcom/liquable/future/Completer$1;-><init>(Lcom/liquable/future/Completer;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/liquable/future/EventLoop;->add(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method

.method public completeError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 47
    .local p0, "this":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<TT;>;"
    invoke-virtual {p0}, Lcom/liquable/future/Completer;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "completer already completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/liquable/future/Completer;->futureContext:Lcom/liquable/future/FutureContext;

    invoke-virtual {v0}, Lcom/liquable/future/FutureContext;->getEventLoop()Lcom/liquable/future/EventLoop;

    move-result-object v0

    new-instance v1, Lcom/liquable/future/Completer$2;

    invoke-direct {v1, p0, p1}, Lcom/liquable/future/Completer$2;-><init>(Lcom/liquable/future/Completer;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lcom/liquable/future/EventLoop;->add(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public getFuture()Lcom/liquable/future/IFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<TT;>;"
    iget-object v0, p0, Lcom/liquable/future/Completer;->futureChain:Lcom/liquable/future/FutureChain;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<TT;>;"
    iget-object v0, p0, Lcom/liquable/future/Completer;->futureChain:Lcom/liquable/future/FutureChain;

    invoke-virtual {v0}, Lcom/liquable/future/FutureChain;->isCompleted()Z

    move-result v0

    return v0
.end method
