.class public abstract Lcom/liquable/volley/request/CompletableRequest;
.super Lcom/android/volley/Request;
.source "CompletableRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private asyncCompleter:Lcom/liquable/future/Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/future/Completer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private syncCompleter:Lcom/android/volley/toolbox/RequestFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/toolbox/RequestFuture",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    .local p0, "this":Lcom/liquable/volley/request/CompletableRequest;, "Lcom/liquable/volley/request/CompletableRequest<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final deliverError(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 36
    .local p0, "this":Lcom/liquable/volley/request/CompletableRequest;, "Lcom/liquable/volley/request/CompletableRequest<TT;>;"
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->syncCompleter:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->syncCompleter:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, p1}, Lcom/android/volley/toolbox/RequestFuture;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->asyncCompleter:Lcom/liquable/future/Completer;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->asyncCompleter:Lcom/liquable/future/Completer;

    invoke-virtual {v0, p1}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    .line 42
    :cond_1
    return-void
.end method

.method protected final deliverResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/liquable/volley/request/CompletableRequest;, "Lcom/liquable/volley/request/CompletableRequest<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->syncCompleter:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->syncCompleter:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, p1}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->asyncCompleter:Lcom/liquable/future/Completer;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->asyncCompleter:Lcom/liquable/future/Completer;

    invoke-virtual {v0, p1}, Lcom/liquable/future/Completer;->complete(Ljava/lang/Object;)V

    .line 53
    :cond_1
    return-void
.end method

.method public final execute(Lcom/android/volley/RequestQueue;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            ")",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/liquable/volley/request/CompletableRequest;, "Lcom/liquable/volley/request/CompletableRequest<TT;>;"
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->asyncCompleter:Lcom/liquable/future/Completer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->syncCompleter:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "execute() only allow invoke once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->syncCompleter:Lcom/android/volley/toolbox/RequestFuture;

    .line 60
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->syncCompleter:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {p1, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/RequestFuture;->setRequest(Lcom/android/volley/Request;)V

    .line 61
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->syncCompleter:Lcom/android/volley/toolbox/RequestFuture;

    return-object v0
.end method

.method public final executeAsync(Lcom/android/volley/RequestQueue;)Lcom/liquable/future/IFuture;
    .locals 2
    .param p1, "requestQueue"    # Lcom/android/volley/RequestQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/RequestQueue;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/liquable/volley/request/CompletableRequest;, "Lcom/liquable/volley/request/CompletableRequest<TT;>;"
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->asyncCompleter:Lcom/liquable/future/Completer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->syncCompleter:Lcom/android/volley/toolbox/RequestFuture;

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "execute() only allow invoke once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    invoke-static {}, Lcom/liquable/future/Futures;->createCompleter()Lcom/liquable/future/Completer;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->asyncCompleter:Lcom/liquable/future/Completer;

    .line 69
    invoke-virtual {p1, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 70
    iget-object v0, p0, Lcom/liquable/volley/request/CompletableRequest;->asyncCompleter:Lcom/liquable/future/Completer;

    invoke-virtual {v0}, Lcom/liquable/future/Completer;->getFuture()Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method
