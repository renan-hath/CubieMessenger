.class public Lcom/liquable/future/FutureSession;
.super Ljava/lang/Object;
.source "FutureSession.java"


# instance fields
.field private final managed:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/liquable/future/Skippable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/liquable/future/FutureSession;->managed:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Lcom/liquable/future/IFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/future/IFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "future":Lcom/liquable/future/IFuture;, "Lcom/liquable/future/IFuture<*>;"
    iget-object v0, p0, Lcom/liquable/future/FutureSession;->managed:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public purge()V
    .locals 3

    .prologue
    .line 25
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/liquable/future/FutureSession;->managed:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 26
    iget-object v2, p0, Lcom/liquable/future/FutureSession;->managed:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 27
    .local v0, "last":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/liquable/future/Skippable;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/future/Skippable;

    .line 28
    .local v1, "skippable":Lcom/liquable/future/Skippable;
    if-eqz v1, :cond_0

    .line 29
    invoke-interface {v1}, Lcom/liquable/future/Skippable;->skipAll()V

    goto :goto_0

    .line 32
    .end local v0    # "last":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/liquable/future/Skippable;>;"
    .end local v1    # "skippable":Lcom/liquable/future/Skippable;
    :cond_1
    return-void
.end method

.method public remove(Lcom/liquable/future/IFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/future/IFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "future":Lcom/liquable/future/IFuture;, "Lcom/liquable/future/IFuture<*>;"
    iget-object v3, p0, Lcom/liquable/future/FutureSession;->managed:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/liquable/future/Skippable;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 41
    .local v1, "next":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/liquable/future/Skippable;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/future/Skippable;

    .line 42
    .local v2, "skippable":Lcom/liquable/future/Skippable;
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 46
    .end local v1    # "next":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/liquable/future/Skippable;>;"
    .end local v2    # "skippable":Lcom/liquable/future/Skippable;
    :cond_1
    return-void
.end method
