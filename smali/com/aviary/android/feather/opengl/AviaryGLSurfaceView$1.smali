.class Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$1;
.super Ljava/lang/Object;
.source "AviaryGLSurfaceView.java"

# interfaces
.implements Lcom/aviary/android/feather/library/threading/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->initializeOpenGL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aviary/android/feather/library/threading/FutureListener",
        "<",
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
    .line 55
    iput-object p1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$1;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/aviary/android/feather/library/threading/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/library/threading/Future",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "arg0":Lcom/aviary/android/feather/library/threading/Future;, "Lcom/aviary/android/feather/library/threading/Future<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$1;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    # invokes: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->fireOnSurfaceCreated()V
    invoke-static {v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$100(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)V

    .line 60
    return-void
.end method
