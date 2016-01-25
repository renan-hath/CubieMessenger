.class Lcom/liquable/future/FutureChain$14;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/liquable/future/FutureChain$OnDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureChain;->whenComplete(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;
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

.field final synthetic val$func:Ljava/lang/Runnable;

.field final synthetic val$nextChain:Lcom/liquable/future/FutureChain;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureChain;Ljava/lang/Runnable;Lcom/liquable/future/FutureChain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/FutureChain;

    .prologue
    .line 446
    .local p0, "this":Lcom/liquable/future/FutureChain$14;, "Lcom/liquable/future/FutureChain$14;"
    iput-object p1, p0, Lcom/liquable/future/FutureChain$14;->this$0:Lcom/liquable/future/FutureChain;

    iput-object p2, p0, Lcom/liquable/future/FutureChain$14;->val$func:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/liquable/future/FutureChain$14;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Lcom/liquable/future/FutureChain$14;, "Lcom/liquable/future/FutureChain$14;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/future/FutureChain$14;->val$func:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    iget-object v1, p0, Lcom/liquable/future/FutureChain$14;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-virtual {v1, p1, p2}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 461
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "newEx":Ljava/lang/Exception;
    if-eqz p2, :cond_0

    .line 454
    iget-object v1, p0, Lcom/liquable/future/FutureChain$14;->this$0:Lcom/liquable/future/FutureChain;

    # getter for: Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;
    invoke-static {v1}, Lcom/liquable/future/FutureChain;->access$100(Lcom/liquable/future/FutureChain;)Lcom/liquable/future/FutureContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/future/FutureContext;->getExceptionHandler()Lcom/liquable/future/ExceptionHandler;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lcom/liquable/future/ExceptionHandler;->handleMasked(Ljava/lang/Exception;Ljava/lang/Exception;)V

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/liquable/future/FutureChain$14;->val$nextChain:Lcom/liquable/future/FutureChain;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
