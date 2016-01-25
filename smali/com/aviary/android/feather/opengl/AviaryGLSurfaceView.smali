.class public Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "AviaryGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;,
        Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$AviaryGLRenderer;,
        Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$SetRenderbufferSizeJob;,
        Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$InitializeOpenGLJob;,
        Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$WriteBitmapJob;,
        Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$RenderJob;
    }
.end annotation


# static fields
.field private static final logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

.field private static final mUIHandler:Landroid/os/Handler;


# instance fields
.field private mGlRendererListener:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;

.field private final mNativeLock:Ljava/lang/Object;

.field private final mPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "gl-surface"

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mNativeLock:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mPtr:J

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mNativeLock:Ljava/lang/Object;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mPtr:J

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->fireOnSurfaceCreated()V

    return-void
.end method

.method static synthetic access$1000(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mGlRendererListener:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->fireOnSurfaceChanged(ZII)V

    return-void
.end method

.method static synthetic access$300()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->nativeRender(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->nativeWriteBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->nativeInitialize()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->nativeSetRenderbufferSize(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->setRenderbufferSize(ZII)V

    return-void
.end method

.method static synthetic access$900(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->initializeOpenGL()V

    return-void
.end method

.method private fireOnSurfaceChanged(ZII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mGlRendererListener:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$4;-><init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;ZII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    :cond_0
    return-void
.end method

.method private fireOnSurfaceCreated()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mGlRendererListener:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mGlRendererListener:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;->OnSurfaceCreated()V

    .line 297
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)J
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 39
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->setEGLContextClientVersion(I)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    .line 40
    invoke-virtual/range {v0 .. v6}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 41
    new-instance v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$AviaryGLRenderer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$AviaryGLRenderer;-><init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$1;)V

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 42
    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->setRenderMode(I)V

    .line 43
    invoke-direct {p0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->nativeCreate()J

    move-result-wide v0

    return-wide v0
.end method

.method private initializeOpenGL()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$InitializeOpenGLJob;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$InitializeOpenGLJob;-><init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)V

    .line 55
    .local v0, "job":Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$InitializeOpenGLJob;
    new-instance v1, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$1;-><init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)V

    .line 62
    .local v1, "listener":Lcom/aviary/android/feather/library/threading/FutureListener;, "Lcom/aviary/android/feather/library/threading/FutureListener<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1, v2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->submit(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;Lcom/aviary/android/feather/library/threading/FutureListener;[Ljava/lang/Object;)Lcom/aviary/android/feather/library/threading/Future;

    .line 63
    return-void
.end method

.method private static native n_create()J
.end method

.method private static native n_dispose(J)Z
.end method

.method private static native n_initialize(J)Z
.end method

.method private static native n_render(JLandroid/graphics/Bitmap;Ljava/lang/String;)Z
.end method

.method private static native n_setRenderbufferSize(JII)Z
.end method

.method private static native n_writeCurrentBitmap(JLandroid/graphics/Bitmap;)Z
.end method

.method private nativeCreate()J
    .locals 4

    .prologue
    .line 93
    sget-object v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "nativeCreate"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    invoke-static {}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->n_create()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private nativeDispose()V
    .locals 4

    .prologue
    .line 103
    sget-object v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "nativeDispose"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-wide v2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mPtr:J

    invoke-static {v2, v3}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->n_dispose(J)Z

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private nativeInitialize()Z
    .locals 4

    .prologue
    .line 115
    sget-object v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "nativeInitialize"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 116
    iget-object v1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-wide v2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mPtr:J

    invoke-static {v2, v3}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->n_initialize(J)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private nativeRender(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 4
    .param p1, "input"    # Landroid/graphics/Bitmap;
    .param p2, "effect"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-object v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "nativeRender"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-wide v2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mPtr:J

    invoke-static {v2, v3, p1, p2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->n_render(JLandroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private nativeSetRenderbufferSize(II)Z
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 129
    sget-object v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "nativeSetRenderBufferSize"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-wide v2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mPtr:J

    invoke-static {v2, v3, p1, p2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->n_setRenderbufferSize(JII)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private nativeWriteBitmap(Landroid/graphics/Bitmap;)Z
    .locals 4
    .param p1, "output"    # Landroid/graphics/Bitmap;

    .prologue
    .line 143
    sget-object v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "nativeWriteBitmap"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-wide v2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mPtr:J

    invoke-static {v2, v3, p1}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->n_writeCurrentBitmap(JLandroid/graphics/Bitmap;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setRenderbufferSize(ZII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$SetRenderbufferSizeJob;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$SetRenderbufferSizeJob;-><init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;)V

    .line 67
    .local v0, "job":Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$SetRenderbufferSizeJob;
    new-instance v1, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$2;-><init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;ZII)V

    .line 74
    .local v1, "listener":Lcom/aviary/android/feather/library/threading/FutureListener;, "Lcom/aviary/android/feather/library/threading/FutureListener<Ljava/lang/Void;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->submit(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;Lcom/aviary/android/feather/library/threading/FutureListener;[Ljava/lang/Object;)Lcom/aviary/android/feather/library/threading/Future;

    .line 75
    return-void
.end method


# virtual methods
.method public executeEffect(Ljava/lang/String;Landroid/graphics/Bitmap;ZLcom/aviary/android/feather/library/threading/FutureListener;)Lcom/aviary/android/feather/library/threading/Future;
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "input"    # Landroid/graphics/Bitmap;
    .param p3, "use_gpu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Z",
            "Lcom/aviary/android/feather/library/threading/FutureListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/aviary/android/feather/library/threading/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    .local p4, "listener":Lcom/aviary/android/feather/library/threading/FutureListener;, "Lcom/aviary/android/feather/library/threading/FutureListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$RenderJob;

    invoke-direct {v0, p0, p2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$RenderJob;-><init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;Landroid/graphics/Bitmap;)V

    .line 79
    .local v0, "job":Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$RenderJob;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, p4, v1}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->submit(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;Lcom/aviary/android/feather/library/threading/FutureListener;[Ljava/lang/Object;)Lcom/aviary/android/feather/library/threading/Future;

    move-result-object v1

    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 48
    sget-object v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDetachedfromWindow"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->debug([Ljava/lang/Object;)V

    .line 49
    invoke-direct {p0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->nativeDispose()V

    .line 50
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 51
    return-void
.end method

.method public setOnGlRendererListener(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->mGlRendererListener:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$GLRendererListener;

    .line 291
    return-void
.end method

.method public varargs submit(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;Lcom/aviary/android/feather/library/threading/FutureListener;[Ljava/lang/Object;)Lcom/aviary/android/feather/library/threading/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job",
            "<TI;TO;>;",
            "Lcom/aviary/android/feather/library/threading/FutureListener",
            "<TO;>;[TI;)",
            "Lcom/aviary/android/feather/library/threading/Future",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "job":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;, "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job<TI;TO;>;"
    .local p2, "listener":Lcom/aviary/android/feather/library/threading/FutureListener;, "Lcom/aviary/android/feather/library/threading/FutureListener<TO;>;"
    .local p3, "params":[Ljava/lang/Object;, "[TI;"
    new-instance v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;

    invoke-virtual {p0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;-><init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;Landroid/content/Context;Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;Lcom/aviary/android/feather/library/threading/FutureListener;[Ljava/lang/Object;Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;[Ljava/lang/Object;)V

    .line 175
    .local v0, "w":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;, "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker<TI;TO;>;"
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 176
    return-object v0
.end method

.method public writeBitmap(Landroid/graphics/Bitmap;Lcom/aviary/android/feather/library/threading/FutureListener;)Lcom/aviary/android/feather/library/threading/Future;
    .locals 2
    .param p1, "output"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/aviary/android/feather/library/threading/FutureListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/aviary/android/feather/library/threading/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "listener":Lcom/aviary/android/feather/library/threading/FutureListener;, "Lcom/aviary/android/feather/library/threading/FutureListener<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$WriteBitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$WriteBitmapJob;-><init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;Landroid/graphics/Bitmap;)V

    .line 84
    .local v0, "job":Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$WriteBitmapJob;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, p2, v1}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->submit(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;Lcom/aviary/android/feather/library/threading/FutureListener;[Ljava/lang/Object;)Lcom/aviary/android/feather/library/threading/Future;

    move-result-object v1

    return-object v1
.end method
