.class Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$WriteBitmapJob;
.super Ljava/lang/Object;
.source "AviaryGLSurfaceView.java"

# interfaces
.implements Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteBitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$WriteBitmapJob;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$WriteBitmapJob;->mBitmap:Ljava/lang/ref/WeakReference;

    .line 218
    return-void
.end method


# virtual methods
.method public varargs run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "context"    # Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;
    .param p2, "params"    # [Ljava/lang/Void;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$WriteBitmapJob;->mBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$WriteBitmapJob;->mBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$WriteBitmapJob;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$WriteBitmapJob;->mBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    # invokes: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->nativeWriteBitmap(Landroid/graphics/Bitmap;)Z
    invoke-static {v1, v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$500(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;Landroid/graphics/Bitmap;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$WriteBitmapJob;->run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
