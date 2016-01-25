.class Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$RenderJob;
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
    name = "RenderJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job",
        "<",
        "Ljava/lang/String;",
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
    .line 198
    iput-object p1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$RenderJob;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$RenderJob;->mBitmap:Ljava/lang/ref/WeakReference;

    .line 200
    return-void
.end method


# virtual methods
.method public varargs run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "jc"    # Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 204
    # getter for: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$300()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "RenderJob::run"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$RenderJob;->mBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$RenderJob;->mBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$RenderJob;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$RenderJob;->mBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    aget-object v2, p2, v3

    # invokes: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->nativeRender(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    invoke-static {v1, v0, v2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$400(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$RenderJob;->run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
