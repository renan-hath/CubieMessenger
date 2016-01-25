.class Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$AviaryGLRenderer;
.super Ljava/lang/Object;
.source "AviaryGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AviaryGLRenderer"
.end annotation


# instance fields
.field private mHeight:I

.field private mWidth:I

.field final synthetic this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$AviaryGLRenderer;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    .param p2, "x1"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$1;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$AviaryGLRenderer;-><init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 260
    # getter for: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$300()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDrawFrame"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 265
    # getter for: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$300()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSurfaceChanged. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 267
    iget v2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$AviaryGLRenderer;->mWidth:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$AviaryGLRenderer;->mHeight:I

    if-eq v2, p3, :cond_1

    :cond_0
    move v0, v1

    .line 268
    .local v0, "changed":Z
    :cond_1
    iput p2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$AviaryGLRenderer;->mWidth:I

    .line 269
    iput p3, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$AviaryGLRenderer;->mHeight:I

    .line 271
    iget-object v1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$AviaryGLRenderer;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    # invokes: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->setRenderbufferSize(ZII)V
    invoke-static {v1, v0, p2, p3}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$800(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;ZII)V

    .line 272
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 277
    const-string/jumbo v0, "GL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GL_RENDERER = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string/jumbo v0, "GL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GL_VENDOR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f00

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string/jumbo v0, "GL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GL_VERSION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f02

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string/jumbo v0, "GL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GL_EXTENSIONS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f03

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    # getter for: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$300()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onSurfaceCreated"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$AviaryGLRenderer;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    # invokes: Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->initializeOpenGL()V
    invoke-static {v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->access$900(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)V

    .line 284
    return-void
.end method
