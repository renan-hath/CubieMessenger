.class Lcom/liquable/nemo/util/SendTextAsyncTask$1;
.super Landroid/os/AsyncTask;
.source "SendTextAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/SendTextAsyncTask;->execute([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/SendTextAsyncTask;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/SendTextAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/SendTextAsyncTask;

    .prologue
    .line 33
    .local p0, "this":Lcom/liquable/nemo/util/SendTextAsyncTask$1;, "Lcom/liquable/nemo/util/SendTextAsyncTask$1;"
    iput-object p1, p0, Lcom/liquable/nemo/util/SendTextAsyncTask$1;->this$0:Lcom/liquable/nemo/util/SendTextAsyncTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/liquable/nemo/util/SendTextAsyncTask$1;, "Lcom/liquable/nemo/util/SendTextAsyncTask$1;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/liquable/nemo/util/SendTextAsyncTask$1;->this$0:Lcom/liquable/nemo/util/SendTextAsyncTask;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/SendTextAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/liquable/nemo/util/SendTextAsyncTask$1;, "Lcom/liquable/nemo/util/SendTextAsyncTask$1;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lcom/liquable/nemo/util/SendTextAsyncTask$1;->this$0:Lcom/liquable/nemo/util/SendTextAsyncTask;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/SendTextAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/liquable/nemo/util/SendTextAsyncTask$1;, "Lcom/liquable/nemo/util/SendTextAsyncTask$1;"
    iget-object v0, p0, Lcom/liquable/nemo/util/SendTextAsyncTask$1;->this$0:Lcom/liquable/nemo/util/SendTextAsyncTask;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/SendTextAsyncTask;->onPreExecute()V

    .line 47
    return-void
.end method
