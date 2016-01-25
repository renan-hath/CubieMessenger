.class Lcom/liquable/future/FutureChain$6;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/liquable/future/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureChain;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/future/Function",
        "<TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/future/FutureChain;

.field final synthetic val$func:Lcom/liquable/future/Consumer;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureChain;Lcom/liquable/future/Consumer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/FutureChain;

    .prologue
    .line 98
    .local p0, "this":Lcom/liquable/future/FutureChain$6;, "Lcom/liquable/future/FutureChain$6;"
    iput-object p1, p0, Lcom/liquable/future/FutureChain$6;->this$0:Lcom/liquable/future/FutureChain;

    iput-object p2, p0, Lcom/liquable/future/FutureChain$6;->val$func:Lcom/liquable/future/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lcom/liquable/future/FutureChain$6;, "Lcom/liquable/future/FutureChain$6;"
    invoke-virtual {p0, p1}, Lcom/liquable/future/FutureChain$6;->run(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/liquable/future/FutureChain$6;, "Lcom/liquable/future/FutureChain$6;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/liquable/future/FutureChain$6;->val$func:Lcom/liquable/future/Consumer;

    invoke-interface {v0, p1}, Lcom/liquable/future/Consumer;->run(Ljava/lang/Object;)V

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method
