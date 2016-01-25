.class Lcom/liquable/future/FutureChain$7;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/liquable/future/FutureChain$OnDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureChain;->consumeError(Ljava/lang/Class;Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;
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

.field final synthetic val$exceptionClass:Ljava/lang/Class;

.field final synthetic val$func:Lcom/liquable/future/Consumer;

.field final synthetic val$nextChain:Lcom/liquable/future/FutureChain;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureChain;Lcom/liquable/future/FutureChain;Ljava/lang/Class;Lcom/liquable/future/Consumer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/FutureChain;

    .prologue
    .line 115
    .local p0, "this":Lcom/liquable/future/FutureChain$7;, "Lcom/liquable/future/FutureChain$7;"
    iput-object p1, p0, Lcom/liquable/future/FutureChain$7;->this$0:Lcom/liquable/future/FutureChain;

    iput-object p2, p0, Lcom/liquable/future/FutureChain$7;->val$nextChain:Lcom/liquable/future/FutureChain;

    iput-object p3, p0, Lcom/liquable/future/FutureChain$7;->val$exceptionClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/liquable/future/FutureChain$7;->val$func:Lcom/liquable/future/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 4
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/liquable/future/FutureChain$7;, "Lcom/liquable/future/FutureChain$7;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 120
    if-nez p2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/liquable/future/FutureChain$7;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-virtual {v1, p1, p2}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 138
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/liquable/future/FutureChain$7;->val$exceptionClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/liquable/future/FutureChain$7;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-virtual {v1, p1, p2}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 132
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/liquable/future/FutureChain$7;->val$func:Lcom/liquable/future/Consumer;

    invoke-interface {v1, p2}, Lcom/liquable/future/Consumer;->run(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    iget-object v1, p0, Lcom/liquable/future/FutureChain$7;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-virtual {v1, v3, v3}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "newEx":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/liquable/future/FutureChain$7;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-virtual {v1, v3, v0}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
