.class Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyHandler;
.super Landroid/os/Handler;
.source "AsyncImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field mParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/aviary/android/feather/async_tasks/AsyncImageManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)V
    .locals 1
    .param p1, "parent"    # Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyHandler;->mParent:Ljava/lang/ref/WeakReference;

    .line 78
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Thumb;

    .line 88
    .local v2, "thumb":Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Thumb;
    iget-object v4, p0, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$MyHandler;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;

    .line 89
    .local v1, "parent":Lcom/aviary/android/feather/async_tasks/AsyncImageManager;
    iget-object v4, v2, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Thumb;->image:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 90
    .local v3, "view":Landroid/widget/ImageView;
    iget-object v4, v2, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Thumb;->bitmap:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Thumb;->bitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    .line 92
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v1, :cond_2

    .line 93
    # getter for: Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mListener:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;
    invoke-static {v1}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->access$000(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 94
    if-eqz v3, :cond_0

    .line 95
    # getter for: Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->mListener:Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;
    invoke-static {v1}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager;->access$000(Lcom/aviary/android/feather/async_tasks/AsyncImageManager;)Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;

    move-result-object v4

    iget v5, v2, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$Thumb;->tag:I

    invoke-interface {v4, v3, v0, v5}, Lcom/aviary/android/feather/async_tasks/AsyncImageManager$OnImageLoadListener;->onLoadComplete(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 90
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 101
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
