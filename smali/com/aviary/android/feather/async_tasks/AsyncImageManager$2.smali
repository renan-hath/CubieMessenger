.class Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;
.super Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;
.source "AsyncImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->execute(Ljava/util/concurrent/Callable;Ljava/lang/String;Landroid/widget/ImageView;ILcom/aviary/android/feather/async_tasks/AsyncImageManager$Priority;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

.field final synthetic val$executor:Ljava/util/concurrent/Callable;

.field final synthetic val$hash:Ljava/lang/String;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;Landroid/widget/ImageView;Ljava/lang/String;ILjava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
    .param p2, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->this$0:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    iput-object p3, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->val$hash:Ljava/lang/String;

    iput p4, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->val$tag:I

    iput-object p5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->val$executor:Ljava/util/concurrent/Callable;

    invoke-direct {p0, p2}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 162
    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->this$0:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    # getter for: Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mStopped:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->access$100(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    # invokes: Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->getBitmapTask(Landroid/widget/ImageView;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;
    invoke-static {v5}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->access$200(Landroid/widget/ImageView;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;

    move-result-object v1

    .line 165
    .local v1, "bitmapTask":Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyRunnable;
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 166
    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->this$0:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    # getter for: Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {v5}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->access$300(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not the same task: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 171
    .local v4, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->this$0:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    # getter for: Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mBitmapCache:Lcom/aviary/android/feather/utils/SimpleBitmapCache;
    invoke-static {v5}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->access$400(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Lcom/aviary/android/feather/utils/SimpleBitmapCache;

    move-result-object v5

    iget-object v6, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->val$hash:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 175
    iput v8, v4, Landroid/os/Message;->what:I

    .line 176
    new-instance v6, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Thumb;

    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget v7, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->val$tag:I

    invoke-direct {v6, v0, v5, v7}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Thumb;-><init>(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)V

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 204
    :cond_3
    :goto_1
    iget v5, v4, Landroid/os/Message;->what:I

    if-ne v5, v8, :cond_0

    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->this$0:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    # getter for: Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->access$500(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 205
    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->this$0:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    # getter for: Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->access$500(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 180
    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->val$executor:Ljava/util/concurrent/Callable;

    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 188
    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->this$0:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    # getter for: Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mBitmapCache:Lcom/aviary/android/feather/utils/SimpleBitmapCache;
    invoke-static {v5}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->access$400(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Lcom/aviary/android/feather/utils/SimpleBitmapCache;

    move-result-object v5

    iget-object v6, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->val$hash:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lcom/aviary/android/feather/utils/SimpleBitmapCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 191
    :cond_5
    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 193
    .local v3, "imageView":Landroid/widget/ImageView;
    if-eqz v3, :cond_3

    .line 194
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 195
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 196
    iput v8, v4, Landroid/os/Message;->what:I

    .line 197
    new-instance v5, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Thumb;

    iget v6, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->val$tag:I

    invoke-direct {v5, v0, v3, v6}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Thumb;-><init>(Landroid/graphics/Bitmap;Landroid/widget/ImageView;I)V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 181
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 199
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "imageView":Landroid/widget/ImageView;
    :cond_6
    iget-object v5, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$2;->this$0:Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    # getter for: Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {v5}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->access$300(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "image tag is different than current task!"

    aput-object v7, v6, v9

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_1
.end method
