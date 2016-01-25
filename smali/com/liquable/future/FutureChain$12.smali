.class Lcom/liquable/future/FutureChain$12;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/liquable/future/FutureChain$OnDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureChain;->mapError(Ljava/lang/Class;Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;
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

.field final synthetic val$func:Lcom/liquable/future/Function;

.field final synthetic val$nextChain:Lcom/liquable/future/FutureChain;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureChain;Lcom/liquable/future/FutureChain;Ljava/lang/Class;Lcom/liquable/future/Function;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/FutureChain;

    .prologue
    .line 338
    .local p0, "this":Lcom/liquable/future/FutureChain$12;, "Lcom/liquable/future/FutureChain$12;"
    iput-object p1, p0, Lcom/liquable/future/FutureChain$12;->this$0:Lcom/liquable/future/FutureChain;

    iput-object p2, p0, Lcom/liquable/future/FutureChain$12;->val$nextChain:Lcom/liquable/future/FutureChain;

    iput-object p3, p0, Lcom/liquable/future/FutureChain$12;->val$exceptionClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/liquable/future/FutureChain$12;->val$func:Lcom/liquable/future/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lcom/liquable/future/FutureChain$12;, "Lcom/liquable/future/FutureChain$12;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 344
    iget-object v0, p0, Lcom/liquable/future/FutureChain$12;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 355
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/liquable/future/FutureChain$12;->val$exceptionClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/liquable/future/FutureChain$12;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/liquable/future/FutureChain$12;->val$func:Lcom/liquable/future/Function;

    iget-object v1, p0, Lcom/liquable/future/FutureChain$12;->val$nextChain:Lcom/liquable/future/FutureChain;

    # invokes: Lcom/liquable/future/FutureChain;->chainFunction(Ljava/lang/Object;Lcom/liquable/future/Function;Lcom/liquable/future/FutureChain;)V
    invoke-static {p2, v0, v1}, Lcom/liquable/future/FutureChain;->access$200(Ljava/lang/Object;Lcom/liquable/future/Function;Lcom/liquable/future/FutureChain;)V

    goto :goto_0
.end method
