.class Lcom/liquable/future/android/example/ExampleBaseActivity;
.super Landroid/app/Activity;
.source "ExampleBaseActivity.java"


# instance fields
.field private futureSession:Lcom/liquable/future/FutureSession;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/liquable/future/IFuture",
            "<TT;>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "future":Lcom/liquable/future/IFuture;, "Lcom/liquable/future/IFuture<TT;>;"
    iget-object v0, p0, Lcom/liquable/future/android/example/ExampleBaseActivity;->futureSession:Lcom/liquable/future/FutureSession;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/liquable/future/FutureSession;

    invoke-direct {v0}, Lcom/liquable/future/FutureSession;-><init>()V

    iput-object v0, p0, Lcom/liquable/future/android/example/ExampleBaseActivity;->futureSession:Lcom/liquable/future/FutureSession;

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/liquable/future/android/example/ExampleBaseActivity;->futureSession:Lcom/liquable/future/FutureSession;

    invoke-virtual {v0, p1}, Lcom/liquable/future/FutureSession;->add(Lcom/liquable/future/IFuture;)V

    .line 17
    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/future/android/example/ExampleBaseActivity;->futureSession:Lcom/liquable/future/FutureSession;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/liquable/future/android/example/ExampleBaseActivity;->futureSession:Lcom/liquable/future/FutureSession;

    invoke-virtual {v0}, Lcom/liquable/future/FutureSession;->purge()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/future/android/example/ExampleBaseActivity;->futureSession:Lcom/liquable/future/FutureSession;

    .line 26
    :cond_0
    return-void
.end method

.method protected final removeFromSession(Lcom/liquable/future/IFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/future/IFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "future":Lcom/liquable/future/IFuture;, "Lcom/liquable/future/IFuture<*>;"
    iget-object v0, p0, Lcom/liquable/future/android/example/ExampleBaseActivity;->futureSession:Lcom/liquable/future/FutureSession;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/liquable/future/android/example/ExampleBaseActivity;->futureSession:Lcom/liquable/future/FutureSession;

    invoke-virtual {v0, p1}, Lcom/liquable/future/FutureSession;->remove(Lcom/liquable/future/IFuture;)V

    .line 32
    :cond_0
    return-void
.end method
