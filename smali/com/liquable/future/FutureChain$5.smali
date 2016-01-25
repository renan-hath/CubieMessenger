.class final Lcom/liquable/future/FutureChain$5;
.super Ljava/lang/Object;
.source "FutureChain.java"

# interfaces
.implements Lcom/liquable/future/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureChain;->chainFunctionWait(Ljava/lang/Object;Lcom/liquable/future/FunctionWait;Lcom/liquable/future/FutureChain;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/future/Function",
        "<TR;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$nextChain:Lcom/liquable/future/FutureChain;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureChain;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/liquable/future/FutureChain$5;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/liquable/future/FutureChain$5;->run(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/liquable/future/FutureChain$5;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-virtual {v0, p1, v1}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 64
    return-object v1
.end method
