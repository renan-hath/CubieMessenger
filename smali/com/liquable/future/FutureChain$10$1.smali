.class Lcom/liquable/future/FutureChain$10$1;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/liquable/future/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureChain$10;->invoke(Ljava/lang/Object;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/future/Function",
        "<",
        "Ljava/lang/Exception;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/future/FutureChain$10;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureChain$10;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/future/FutureChain$10;

    .prologue
    .line 271
    .local p0, "this":Lcom/liquable/future/FutureChain$10$1;, "Lcom/liquable/future/FutureChain$10$1;"
    iput-object p1, p0, Lcom/liquable/future/FutureChain$10$1;->this$1:Lcom/liquable/future/FutureChain$10;

    iput-object p2, p0, Lcom/liquable/future/FutureChain$10$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    .local p0, "this":Lcom/liquable/future/FutureChain$10$1;, "Lcom/liquable/future/FutureChain$10$1;"
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/liquable/future/FutureChain$10$1;->run(Ljava/lang/Exception;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/Exception;)Ljava/lang/Void;
    .locals 3
    .param p1, "newEx"    # Ljava/lang/Exception;

    .prologue
    .local p0, "this":Lcom/liquable/future/FutureChain$10$1;, "Lcom/liquable/future/FutureChain$10$1;"
    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/liquable/future/FutureChain$10$1;->val$e:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/liquable/future/FutureChain$10$1;->this$1:Lcom/liquable/future/FutureChain$10;

    iget-object v0, v0, Lcom/liquable/future/FutureChain$10;->this$0:Lcom/liquable/future/FutureChain;

    # getter for: Lcom/liquable/future/FutureChain;->futureContext:Lcom/liquable/future/FutureContext;
    invoke-static {v0}, Lcom/liquable/future/FutureChain;->access$100(Lcom/liquable/future/FutureChain;)Lcom/liquable/future/FutureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/future/FutureContext;->getExceptionHandler()Lcom/liquable/future/ExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/future/FutureChain$10$1;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1, p1}, Lcom/liquable/future/ExceptionHandler;->handleMasked(Ljava/lang/Exception;Ljava/lang/Exception;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/liquable/future/FutureChain$10$1;->this$1:Lcom/liquable/future/FutureChain$10;

    iget-object v0, v0, Lcom/liquable/future/FutureChain$10;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-virtual {v0, v2, p1}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 279
    return-object v2
.end method
