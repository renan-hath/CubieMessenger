.class Lcom/liquable/future/FutureContext$5;
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
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/future/FutureContext;

.field final synthetic val$completer:Lcom/liquable/future/Completer;

.field final synthetic val$index:I

.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/liquable/future/FutureContext;Lcom/liquable/future/Completer;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/FutureContext;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/liquable/future/FutureContext$5;->this$0:Lcom/liquable/future/FutureContext;

    iput-object p2, p0, Lcom/liquable/future/FutureContext$5;->val$completer:Lcom/liquable/future/Completer;

    iput-object p3, p0, Lcom/liquable/future/FutureContext$5;->val$results:Ljava/util/ArrayList;

    iput p4, p0, Lcom/liquable/future/FutureContext$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/liquable/future/FutureContext$5;->run(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 5
    .param p1, "input"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 103
    iget-object v2, p0, Lcom/liquable/future/FutureContext$5;->val$completer:Lcom/liquable/future/Completer;

    invoke-virtual {v2}, Lcom/liquable/future/Completer;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-object v4

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/liquable/future/FutureContext$5;->val$results:Ljava/util/ArrayList;

    iget v3, p0, Lcom/liquable/future/FutureContext$5;->val$index:I

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    .line 109
    .local v0, "allDone":Z
    iget-object v2, p0, Lcom/liquable/future/FutureContext$5;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, "result":Ljava/lang/Object;
    iget-object v2, p0, Lcom/liquable/future/FutureContext$5;->val$completer:Lcom/liquable/future/Completer;

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    and-int/2addr v0, v2

    .line 111
    goto :goto_1

    .line 110
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 113
    .end local v1    # "result":Ljava/lang/Object;
    :cond_3
    if-eqz v0, :cond_0

    .line 114
    iget-object v2, p0, Lcom/liquable/future/FutureContext$5;->val$completer:Lcom/liquable/future/Completer;

    iget-object v3, p0, Lcom/liquable/future/FutureContext$5;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/liquable/future/Completer;->complete(Ljava/lang/Object;)V

    goto :goto_0
.end method
