.class Lcom/aviary/android/feather/library/utils/UserTask$2;
.super Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;
.source "UserTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/library/utils/UserTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/library/utils/UserTask;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/utils/UserTask;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/utils/UserTask$2;->this$0:Lcom/aviary/android/feather/library/utils/UserTask;

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;-><init>(Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 180
    iget-object v0, p0, Lcom/aviary/android/feather/library/utils/UserTask$2;->this$0:Lcom/aviary/android/feather/library/utils/UserTask;

    iget-object v1, p0, Lcom/aviary/android/feather/library/utils/UserTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/utils/UserTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
