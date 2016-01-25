.class public abstract Lcom/liquable/nemo/util/RpcAsyncTask;
.super Ljava/lang/Object;
.source "RpcAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/RpcAsyncTask$AsyncCallable;
    }
.end annotation

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


# instance fields
.field private asyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;",
            "Lcom/liquable/nemo/util/ServiceResult",
            "<TResult;>;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private showToast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 46
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/RpcAsyncTask;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/liquable/nemo/util/RpcAsyncTask;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask;, "Lcom/liquable/nemo/util/RpcAsyncTask<TParams;TProgress;TResult;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showToast"    # Z

    .prologue
    .line 87
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask;, "Lcom/liquable/nemo/util/RpcAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->context:Landroid/content/Context;

    .line 89
    iput-boolean p2, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->showToast:Z

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/util/RpcAsyncTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/RpcAsyncTask;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static executeSilently(Landroid/content/Context;Lcom/liquable/nemo/util/RpcAsyncTask$AsyncCallable;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callable"    # Lcom/liquable/nemo/util/RpcAsyncTask$AsyncCallable;

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Lcom/liquable/nemo/util/RpcAsyncTask$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/liquable/nemo/util/RpcAsyncTask$1;-><init>(Landroid/content/Context;ZLcom/liquable/nemo/util/RpcAsyncTask$AsyncCallable;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 69
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask$1;->execute([Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method private varargs honeycombExecute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;",
            "Lcom/liquable/nemo/util/ServiceResult",
            "<TResult;>;>;[TParams;)",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;",
            "Lcom/liquable/nemo/util/ServiceResult",
            "<TResult;>;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask;, "Lcom/liquable/nemo/util/RpcAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;Lcom/liquable/nemo/util/ServiceResult<TResult;>;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/liquable/nemo/util/RpcAsyncTask;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 93
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask;, "Lcom/liquable/nemo/util/RpcAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->asyncTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->asyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask;, "Lcom/liquable/nemo/util/RpcAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    new-instance v0, Lcom/liquable/nemo/util/RpcAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/util/RpcAsyncTask$2;-><init>(Lcom/liquable/nemo/util/RpcAsyncTask;)V

    iput-object v0, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->asyncTask:Landroid/os/AsyncTask;

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->asyncTask:Landroid/os/AsyncTask;

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/util/RpcAsyncTask;->honeycombExecute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->asyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final getStatus()Lcom/liquable/nemo/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Landroid/os/AsyncTask$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask;, "Lcom/liquable/nemo/util/RpcAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->asyncTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->asyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/util/Optional;->of(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method protected final onPostExecute(Lcom/liquable/nemo/util/ServiceResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/util/ServiceResult",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask;, "Lcom/liquable/nemo/util/RpcAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Lcom/liquable/nemo/util/ServiceResult;, "Lcom/liquable/nemo/util/ServiceResult<TResult;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/util/RpcAsyncTask;->postExecute()V

    .line 153
    invoke-virtual {p1}, Lcom/liquable/nemo/util/ServiceResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/liquable/nemo/util/ServiceResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/util/RpcAsyncTask;->postExecuteSuccess(Ljava/lang/Object;)V

    .line 192
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/util/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 158
    .local v1, "exception":Ljava/lang/Exception;
    instance-of v2, v1, Lcom/liquable/nemo/model/DomainException;

    if-eqz v2, :cond_1

    .line 159
    check-cast v1, Lcom/liquable/nemo/model/DomainException;

    .end local v1    # "exception":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V

    goto :goto_0

    .line 161
    .restart local v1    # "exception":Ljava/lang/Exception;
    :cond_1
    instance-of v2, v1, Lcom/liquable/nemo/client/VersionIncompatibleErrorException;

    if-eqz v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0501

    .line 164
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0502

    .line 165
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 166
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0069

    new-instance v4, Lcom/liquable/nemo/util/RpcAsyncTask$3;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/util/RpcAsyncTask$3;-><init>(Lcom/liquable/nemo/util/RpcAsyncTask;)V

    .line 167
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 178
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 179
    check-cast v1, Lcom/liquable/nemo/client/VersionIncompatibleErrorException;

    .end local v1    # "exception":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V

    goto :goto_0

    .line 180
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .restart local v1    # "exception":Ljava/lang/Exception;
    :cond_2
    instance-of v2, v1, Lcom/liquable/nemo/client/AsyncException;

    if-eqz v2, :cond_4

    .line 181
    iget-boolean v2, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->showToast:Z

    if-eqz v2, :cond_3

    .line 182
    iget-object v3, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->context:Landroid/content/Context;

    move-object v2, v1

    check-cast v2, Lcom/liquable/nemo/client/AsyncException;

    invoke-virtual {v2}, Lcom/liquable/nemo/client/AsyncException;->getErrorMessageResId()I

    move-result v2

    invoke-static {v3, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 184
    :cond_3
    check-cast v1, Lcom/liquable/nemo/client/AsyncException;

    .end local v1    # "exception":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V

    goto :goto_0

    .line 186
    .restart local v1    # "exception":Ljava/lang/Exception;
    :cond_4
    iget-boolean v2, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->showToast:Z

    if-eqz v2, :cond_5

    .line 187
    iget-object v2, p0, Lcom/liquable/nemo/util/RpcAsyncTask;->context:Landroid/content/Context;

    const v3, 0x7f0d02f9

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 189
    :cond_5
    new-instance v2, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v2}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/util/RpcAsyncTask;->postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 196
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask;, "Lcom/liquable/nemo/util/RpcAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected abstract postExecute()V
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 0
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 204
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask;, "Lcom/liquable/nemo/util/RpcAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 0
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 207
    .local p0, "this":Lcom/liquable/nemo/util/RpcAsyncTask;, "Lcom/liquable/nemo/util/RpcAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected abstract postExecuteSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method
