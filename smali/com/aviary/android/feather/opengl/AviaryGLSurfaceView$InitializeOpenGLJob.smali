.class Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$InitializeOpenGLJob;
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
    name = "InitializeOpenGLJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$InitializeOpenGLJob;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$InitializeOpenGLJob;->run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "jc"    # Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;
    .param p2, "input"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    # getter for: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$300()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "InitializeOpenGlJob::run"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$InitializeOpenGLJob;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    # invokes: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->nativeInitialize()Z
    invoke-static {v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$600(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)Z

    .line 236
    # getter for: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$300()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "end::nativeInitialize"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method
