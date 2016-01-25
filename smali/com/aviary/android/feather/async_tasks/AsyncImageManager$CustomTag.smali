.class Lcom/aviary/android/feather/async_tasks/AsyncImageManager$CustomTag;
.super Ljava/lang/Object;
.source "AsyncImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomTag"
.end annotation


# instance fields
.field private final taskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;)V
    .locals 1
    .param p1, "task"    # Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$CustomTag;->taskReference:Ljava/lang/ref/WeakReference;

    .line 227
    return-void
.end method


# virtual methods
.method public getDownloaderTask()Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$CustomTag;->taskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;

    return-object v0
.end method
