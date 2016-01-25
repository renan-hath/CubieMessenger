.class final Lcom/liquable/future/FutureChain$4;
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
        "<",
        "Ljava/lang/Exception;",
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
    .line 66
    iput-object p1, p0, Lcom/liquable/future/FutureChain$4;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/liquable/future/FutureChain$4;->run(Ljava/lang/Exception;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/Exception;)Ljava/lang/Void;
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/liquable/future/FutureChain$4;->val$nextChain:Lcom/liquable/future/FutureChain;

    invoke-virtual {v0, v1, p1}, Lcom/liquable/future/FutureChain;->done(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 71
    return-object v1
.end method
