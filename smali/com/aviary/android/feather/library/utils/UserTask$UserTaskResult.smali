.class Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;
.super Ljava/lang/Object;
.source "UserTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/utils/UserTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/aviary/android/feather/library/utils/UserTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aviary/android/feather/library/utils/UserTask",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/aviary/android/feather/library/utils/UserTask;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "data"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/library/utils/UserTask",
            "<***>;[TData;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;, "Lcom/aviary/android/feather/library/utils/UserTask<TParams;TProgress;TResult;>.UserTaskResult<TData;>;"
    .local p1, "task":Lcom/aviary/android/feather/library/utils/UserTask;, "Lcom/aviary/android/feather/library/utils/UserTask<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;->mTask:Lcom/aviary/android/feather/library/utils/UserTask;

    .line 437
    iput-object p2, p0, Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;->mData:[Ljava/lang/Object;

    .line 438
    return-void
.end method
