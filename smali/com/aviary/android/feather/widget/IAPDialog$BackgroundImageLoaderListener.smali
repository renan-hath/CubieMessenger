.class Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;
.super Ljava/lang/Object;
.source "IAPDialog.java"

# interfaces
.implements Lcom/aviary/android/feather/library/services/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/IAPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundImageLoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aviary/android/feather/library/services/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/aviary/android/feather/widget/IAPDialog;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/widget/IAPDialog;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/IAPDialog;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;->mImageView:Ljava/lang/ref/WeakReference;

    .line 736
    iput-object p3, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;->mUrl:Ljava/lang/String;

    .line 737
    return-void
.end method


# virtual methods
.method public onFutureDone(Ljava/util/concurrent/Future;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 744
    .local v2, "image":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 746
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 747
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/aviary/android/feather/widget/IAPDialog;->access$500(Lcom/aviary/android/feather/widget/IAPDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;-><init>(Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v1

    .line 784
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 787
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/widget/IAPDialog;->access$300()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "imageView is null"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->warning([Ljava/lang/Object;)V

    goto :goto_0
.end method
