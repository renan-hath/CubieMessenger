.class Lcom/liquable/future/FutureContext$4;
.super Ljava/lang/Object;
.source "FutureContext.java"

# interfaces
.implements Lcom/liquable/future/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/FutureContext;->wait([Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/future/FutureContext;

.field final synthetic val$completer:Lcom/liquable/future/Completer;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureContext;Lcom/liquable/future/Completer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/FutureContext;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/liquable/future/FutureContext$4;->this$0:Lcom/liquable/future/FutureContext;

    iput-object p2, p0, Lcom/liquable/future/FutureContext$4;->val$completer:Lcom/liquable/future/Completer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/lang/Exception;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/liquable/future/FutureContext$4;->val$completer:Lcom/liquable/future/Completer;

    invoke-virtual {v0}, Lcom/liquable/future/Completer;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/liquable/future/FutureContext$4;->val$completer:Lcom/liquable/future/Completer;

    invoke-virtual {v0, p1}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    .line 125
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/liquable/future/FutureContext$4;->run(Ljava/lang/Exception;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
