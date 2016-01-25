.class public abstract Lcom/liquable/nemo/util/SendTextAsyncTask;
.super Ljava/lang/Object;
.source "SendTextAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/SendTextAsyncTask;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/liquable/nemo/util/SendTextAsyncTask;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/liquable/nemo/util/SendTextAsyncTask;, "Lcom/liquable/nemo/util/SendTextAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs honeycombExecute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;TResult;>;[TParams;)",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/liquable/nemo/util/SendTextAsyncTask;, "Lcom/liquable/nemo/util/SendTextAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/liquable/nemo/util/SendTextAsyncTask;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/liquable/nemo/util/SendTextAsyncTask;, "Lcom/liquable/nemo/util/SendTextAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    new-instance v0, Lcom/liquable/nemo/util/SendTextAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/util/SendTextAsyncTask$1;-><init>(Lcom/liquable/nemo/util/SendTextAsyncTask;)V

    .line 50
    .local v0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 51
    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/util/SendTextAsyncTask;->honeycombExecute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/liquable/nemo/util/SendTextAsyncTask;, "Lcom/liquable/nemo/util/SendTextAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 69
    .local p0, "this":Lcom/liquable/nemo/util/SendTextAsyncTask;, "Lcom/liquable/nemo/util/SendTextAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method
