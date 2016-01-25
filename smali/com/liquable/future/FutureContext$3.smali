.class Lcom/liquable/future/FutureContext$3;
.super Ljava/lang/Object;
.source "FutureContext.java"

# interfaces
.implements Lcom/liquable/future/FunctionWait;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureContext;->delayedFunction(J)Lcom/liquable/future/FunctionWait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/future/FunctionWait",
        "<TR;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/future/FutureContext;

.field final synthetic val$milliseconds:J


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureContext;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/FutureContext;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/liquable/future/FutureContext$3;->this$0:Lcom/liquable/future/FutureContext;

    iput-wide p2, p0, Lcom/liquable/future/FutureContext$3;->val$milliseconds:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Lcom/liquable/future/IFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lcom/liquable/future/IFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "input":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lcom/liquable/future/FutureContext$3;->this$0:Lcom/liquable/future/FutureContext;

    iget-wide v1, p0, Lcom/liquable/future/FutureContext$3;->val$milliseconds:J

    invoke-virtual {v0, v1, v2}, Lcom/liquable/future/FutureContext;->delayed(J)Lcom/liquable/future/IFuture;

    move-result-object v0

    new-instance v1, Lcom/liquable/future/FunctionValue;

    invoke-direct {v1, p1}, Lcom/liquable/future/FunctionValue;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/liquable/future/FutureContext$3;->run(Ljava/lang/Object;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method
