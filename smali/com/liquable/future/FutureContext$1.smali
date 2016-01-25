.class Lcom/liquable/future/FutureContext$1;
.super Ljava/lang/Object;
.source "FutureContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureContext;->async(Ljava/util/concurrent/Callable;)Lcom/liquable/future/IFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/future/FutureContext;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$completer:Lcom/liquable/future/Completer;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureContext;Ljava/util/concurrent/Callable;Lcom/liquable/future/Completer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/FutureContext;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/liquable/future/FutureContext$1;->this$0:Lcom/liquable/future/FutureContext;

    iput-object p2, p0, Lcom/liquable/future/FutureContext$1;->val$callable:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lcom/liquable/future/FutureContext$1;->val$completer:Lcom/liquable/future/Completer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 25
    .local v1, "result":Ljava/lang/Object;, "TR;"
    :try_start_0
    iget-object v2, p0, Lcom/liquable/future/FutureContext$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/liquable/future/FutureContext$1;->val$completer:Lcom/liquable/future/Completer;

    invoke-virtual {v2, v1}, Lcom/liquable/future/Completer;->complete(Ljava/lang/Object;)V

    .line 31
    .end local v1    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 26
    .restart local v1    # "result":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/liquable/future/FutureContext$1;->val$completer:Lcom/liquable/future/Completer;

    invoke-virtual {v2, v0}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
