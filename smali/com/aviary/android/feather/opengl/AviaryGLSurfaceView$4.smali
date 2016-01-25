.class Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$4;
.super Ljava/lang/Object;
.source "AviaryGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->fireOnSurfaceChanged(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .line 301
    iput-object p1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$4;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    iput-boolean p2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$4;->val$changed:Z

    iput p3, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$4;->val$width:I

    iput p4, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$4;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$4;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    # getter for: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mGlRendererListener:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;
    invoke-static {v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$1000(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$4;->val$changed:Z

    iget v2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$4;->val$width:I

    iget v3, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$4;->val$height:I

    invoke-interface {v0, v1, v2, v3}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;->OnSurfaceChanged(ZII)V

    .line 306
    return-void
.end method
