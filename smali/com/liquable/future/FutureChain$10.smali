.class Lcom/liquable/future/FutureChain$10;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/liquable/future/FutureChain$OnDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureChain;->flatMapWhenComplete(Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/future/FutureChain$OnDone",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/future/FutureChain;

.field final synthetic val$func:Lcom/liquable/future/FunctionWait;

.field final synthetic val$nextChain:Lcom/liquable/future/FutureChain;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureChain;Lcom/liquable/future/FunctionWait;Lcom/liquable/future/FutureChain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/FutureChain;

    .prologue
    .line 246
    .local p0, "this":Lcom/liquable/future/FutureChain$10;, "Lcom/liquable/future/FutureChain$10;"
    iput-object p1, p0, Lcom/liquable/future/FutureChain$10;->this$0:Lcom/liquable/future/FutureChain;

    iput-object p2, p0, Lcom/liquable/future/FutureChain$10;->val$func:Lcom/liquable/future/FunctionWait;

    iput-object p3, p0, Lcom/liquable/future/FutureChain$10;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 6
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/liquable/future/FutureChain$10;, "Lcom/liquable/future/FutureChain$10;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    .line 250
    const/4 v2, 0x0

    .line 252
    .local v2, "next":Lcom/liquable/future/IFuture;, "Lcom/liquable/future/IFuture<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/liquable/future/FutureChain$10;->val$func:Lcom/liquable/future/FunctionWait;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/liquable/future/FunctionWait;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/future/IFuture;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    if-nez v2, :cond_1

    .line 262
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "FunctionWait return null future"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "newEx":Ljava/lang/Exception;
    if-eqz p2, :cond_0

    .line 255
    iget-object v3, p0, Lcom/liquable/future/FutureChain$10;->this$0:Lcom/liquable/future/FutureChain;

    # getter for: Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;
    invoke-static {v3}, Lcom/liquable/future/FutureChain;->access$100(Lcom/liquable/future/FutureChain;)Lcom/liquable/future/FutureContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/future/FutureContext;->getExceptionHandler()Lcom/liquable/future/ExceptionHandler;

    move-result-object v3

    invoke-interface {v3, p2, v1}, Lcom/liquable/future/ExceptionHandler;->handleMasked(Ljava/lang/Exception;Ljava/lang/Exception;)V

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/liquable/future/FutureChain$10;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-virtual {v3, v5, v1}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 282
    .end local v1    # "newEx":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 264
    :cond_1
    new-instance v3, Lcom/liquable/future/FutureChain$10$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/liquable/future/FutureChain$10$2;-><init>(Lcom/liquable/future/FutureChain$10;Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-interface {v2, v3}, Lcom/liquable/future/IFuture;->map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v3

    const-class v4, Ljava/lang/Exception;

    new-instance v5, Lcom/liquable/future/FutureChain$10$1;

    invoke-direct {v5, p0, p2}, Lcom/liquable/future/FutureChain$10$1;-><init>(Lcom/liquable/future/FutureChain$10;Ljava/lang/Exception;)V

    .line 271
    invoke-interface {v3, v4, v5}, Lcom/liquable/future/IFuture;->mapError(Ljava/lang/Class;Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    goto :goto_0
.end method
