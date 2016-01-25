.class Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$2;
.super Ljava/lang/Object;
.source "AviaryGLSurfaceView.java"

# interfaces
.implements Lcom/aviary/android/feather/library/threading/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->setRenderbufferSize(ZII)V
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

.field final synthetic val$changed:Z

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;ZII)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$2;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    iput-boolean p2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$2;->val$changed:Z

    iput p3, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$2;->val$width:I

    iput p4, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/aviary/android/feather/library/threading/Future;)V
    .locals 4
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
    .line 71
    .local p1, "arg0":Lcom/aviary/android/feather/library/threading/Future;, "Lcom/aviary/android/feather/library/threading/Future<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$2;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    iget-boolean v1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$2;->val$changed:Z

    iget v2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$2;->val$width:I

    iget v3, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$2;->val$height:I

    # invokes: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->fireOnSurfaceChanged(ZII)V
    invoke-static {v0, v1, v2, v3}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$200(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;ZII)V

    .line 72
    return-void
.end method
