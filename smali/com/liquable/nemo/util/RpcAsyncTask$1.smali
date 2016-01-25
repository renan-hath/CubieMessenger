.class final Lcom/liquable/nemo/util/RpcAsyncTask$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "RpcAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/RpcAsyncTask;->executeSilently(Landroid/content/Context;Lcom/liquable/nemo/util/RpcAsyncTask$AsyncCallable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callable:Lcom/liquable/nemo/util/RpcAsyncTask$AsyncCallable;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/liquable/nemo/util/RpcAsyncTask$AsyncCallable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showToast"    # Z

    .prologue
    .line 53
    iput-object p3, p0, Lcom/liquable/nemo/util/RpcAsyncTask$1;->val$callable:Lcom/liquable/nemo/util/RpcAsyncTask$AsyncCallable;

    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/RpcAsyncTask$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/model/DomainException;,
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/util/RpcAsyncTask$1;->val$callable:Lcom/liquable/nemo/util/RpcAsyncTask$AsyncCallable;

    invoke-interface {v0}, Lcom/liquable/nemo/util/RpcAsyncTask$AsyncCallable;->call()V

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/RpcAsyncTask$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 68
    return-void
.end method
