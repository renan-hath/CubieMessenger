.class Lcom/liquable/future/FutureChain$8;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/liquable/future/FutureChain$OnDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureChain;->flatMap(Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;
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
.method constructor <init>(Lcom/liquable/future/FutureChain;Lcom/liquable/future/FutureChain;Lcom/liquable/future/FunctionWait;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/FutureChain;

    .prologue
    .line 194
    .local p0, "this":Lcom/liquable/future/FutureChain$8;, "Lcom/liquable/future/FutureChain$8;"
    iput-object p1, p0, Lcom/liquable/future/FutureChain$8;->this$0:Lcom/liquable/future/FutureChain;

    iput-object p2, p0, Lcom/liquable/future/FutureChain$8;->val$nextChain:Lcom/liquable/future/FutureChain;

    iput-object p3, p0, Lcom/liquable/future/FutureChain$8;->val$func:Lcom/liquable/future/FunctionWait;

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
    .line 198
    .local p0, "this":Lcom/liquable/future/FutureChain$8;, "Lcom/liquable/future/FutureChain$8;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/liquable/future/FutureChain$8;->val$nextChain:Lcom/liquable/future/FutureChain;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/liquable/future/FutureChain$8;->val$func:Lcom/liquable/future/FunctionWait;

    iget-object v1, p0, Lcom/liquable/future/FutureChain$8;->val$nextChain:Lcom/liquable/future/FutureChain;

    # invokes: Lcom/liquable/future/FutureChain;->chainFunctionWait(Ljava/lang/Object;Lcom/liquable/future/FunctionWait;Lcom/liquable/future/FutureChain;)V
    invoke-static {p1, v0, v1}, Lcom/liquable/future/FutureChain;->access$000(Ljava/lang/Object;Lcom/liquable/future/FunctionWait;Lcom/liquable/future/FutureChain;)V

    goto :goto_0
.end method
