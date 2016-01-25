.class Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$SetRenderbufferSizeJob;
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
    name = "SetRenderbufferSizeJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$SetRenderbufferSizeJob;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    check-cast p2, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$SetRenderbufferSizeJob;->run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5
    .param p1, "jc"    # Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;
    .param p2, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 248
    # getter for: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$300()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "SetRenderbufferSizeJob::run"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$SetRenderbufferSizeJob;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    aget-object v1, p2, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, p2, v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->nativeSetRenderbufferSize(II)Z
    invoke-static {v0, v1, v2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$700(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;II)Z

    .line 250
    const/4 v0, 0x0

    return-object v0
.end method
