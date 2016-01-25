.class Lcom/liquable/future/FutureChain$13;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/liquable/future/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureChain;->run(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;
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

.field final synthetic val$func:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureChain;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/FutureChain;

    .prologue
    .line 365
    .local p0, "this":Lcom/liquable/future/FutureChain$13;, "Lcom/liquable/future/FutureChain$13;"
    iput-object p1, p0, Lcom/liquable/future/FutureChain$13;->this$0:Lcom/liquable/future/FutureChain;

    iput-object p2, p0, Lcom/liquable/future/FutureChain$13;->val$func:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 365
    .local p0, "this":Lcom/liquable/future/FutureChain$13;, "Lcom/liquable/future/FutureChain$13;"
    invoke-virtual {p0, p1}, Lcom/liquable/future/FutureChain$13;->run(Ljava/lang/Object;)Ljava/lang/Void;

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
    .line 369
    .local p0, "this":Lcom/liquable/future/FutureChain$13;, "Lcom/liquable/future/FutureChain$13;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/liquable/future/FutureChain$13;->val$func:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method
