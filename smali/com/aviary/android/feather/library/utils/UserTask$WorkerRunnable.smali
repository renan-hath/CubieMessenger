.class abstract Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "UserTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/utils/UserTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 425
    .local p0, "this":Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;, "Lcom/aviary/android/feather/library/utils/UserTask<TParams;TProgress;TResult;>.WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/aviary/android/feather/library/utils/UserTask$WorkerRunnable;-><init>()V

    return-void
.end method
