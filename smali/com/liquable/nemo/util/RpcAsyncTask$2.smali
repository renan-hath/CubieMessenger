.class Lcom/liquable/nemo/util/RpcAsyncTask$2;
.super Landroid/os/AsyncTask;
.source "RpcAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;",
        "Lcom/liquable/nemo/util/ServiceResult",
        "<TResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/RpcAsyncTask;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/RpcAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 102
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask$2;, "Lcom/liquable/nemo/util/RpcAsyncTask$2;"
    iput-object p1, p0, Lcom/liquable/nemo/util/RpcAsyncTask$2;->this$0:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/liquable/nemo/util/ServiceResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/liquable/nemo/util/ServiceResult",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask$2;, "Lcom/liquable/nemo/util/RpcAsyncTask$2;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/util/RpcAsyncTask$2;->this$0:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/util/RpcAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    .local v1, "result":Ljava/lang/Object;, "TResult;"
    invoke-static {v1}, Lcom/liquable/nemo/util/ServiceResult;->createSuccess(Ljava/lang/Object;)Lcom/liquable/nemo/util/ServiceResult;
    :try_end_0
    .catch Lcom/liquable/nemo/client/InterruptedErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 114
    .end local v1    # "result":Ljava/lang/Object;, "TResult;"
    :goto_0
    return-object v2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lcom/liquable/nemo/client/InterruptedErrorException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 110
    invoke-static {v0}, Lcom/liquable/nemo/util/ServiceResult;->createFail(Ljava/lang/Exception;)Lcom/liquable/nemo/util/ServiceResult;

    move-result-object v2

    goto :goto_0

    .line 111
    .end local v0    # "e":Lcom/liquable/nemo/client/InterruptedErrorException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Lcom/liquable/nemo/client/AsyncException;
    invoke-static {v0}, Lcom/liquable/nemo/util/ServiceResult;->createFail(Ljava/lang/Exception;)Lcom/liquable/nemo/util/ServiceResult;

    move-result-object v2

    goto :goto_0

    .line 113
    .end local v0    # "e":Lcom/liquable/nemo/client/AsyncException;
    :catch_2
    move-exception v0

    .line 114
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    invoke-static {v0}, Lcom/liquable/nemo/util/ServiceResult;->createFail(Ljava/lang/Exception;)Lcom/liquable/nemo/util/ServiceResult;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask$2;, "Lcom/liquable/nemo/util/RpcAsyncTask$2;"
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/RpcAsyncTask$2;->doInBackground([Ljava/lang/Object;)Lcom/liquable/nemo/util/ServiceResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/liquable/nemo/util/ServiceResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/ServiceResult",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask$2;, "Lcom/liquable/nemo/util/RpcAsyncTask$2;"
    .local p1, "result":Lcom/liquable/nemo/util/ServiceResult;, "Lcom/liquable/nemo/util/ServiceResult<TResult;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/RpcAsyncTask$2;->this$0:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/RpcAsyncTask;->onPostExecute(Lcom/liquable/nemo/util/ServiceResult;)V

    .line 121
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 102
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask$2;, "Lcom/liquable/nemo/util/RpcAsyncTask$2;"
    check-cast p1, Lcom/liquable/nemo/util/ServiceResult;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/RpcAsyncTask$2;->onPostExecute(Lcom/liquable/nemo/util/ServiceResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask$2;, "Lcom/liquable/nemo/util/RpcAsyncTask$2;"
    iget-object v0, p0, Lcom/liquable/nemo/util/RpcAsyncTask$2;->this$0:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->onPreExecute()V

    .line 126
    return-void
.end method
