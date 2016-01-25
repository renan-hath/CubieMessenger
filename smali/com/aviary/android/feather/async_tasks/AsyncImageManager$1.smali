.class Lcom/aviary/android/feather/async_tasks/AsyncImageManager$1;
.super Ljava/lang/Object;
.source "AsyncImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

.field final synthetic val$executor:Ljava/util/concurrent/Callable;

.field final synthetic val$hash:Ljava/lang/String;

.field final synthetic val$priority:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

.field final synthetic val$tag:I

.field final synthetic val$view:Landroid/widget/ImageView;


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 129
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$1;->this$0:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    # getter for: Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mStopped:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->access$100(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$1;->this$0:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    iget-object v1, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$1;->val$executor:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$1;->val$hash:Ljava/lang/String;

    iget-object v3, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$1;->val$view:Landroid/widget/ImageView;

    iget v4, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$1;->val$tag:I

    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$1;->val$priority:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;

    invoke-virtual/range {v0 .. v5}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->execute(Ljava/util/concurrent/Callable;Ljava/lang/String;Landroid/widget/ImageView;ILcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;)V

    .line 132
    :cond_0
    return-void
.end method
