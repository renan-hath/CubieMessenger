.class public final Lcom/liquable/nemo/util/crop/RenderView;
.super Landroid/opengl/GLSurfaceView;
.source "RenderView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/crop/RenderView$TextureReference;,
        Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;,
        Lcom/liquable/nemo/util/crop/RenderView$Lists;
    }
.end annotation


# static fields
.field private static final EVENT_FOCUS:I = 0x3

.field private static final EVENT_KEY:I = 0x2

.field private static final EVENT_NONE:I = 0x0

.field private static final MAX_LOADING_COUNT:I = 0x8

.field private static final NUM_TEXTURE_LOAD_THREADS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RenderView"

.field private static sCachedTextureLoadThread:Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

.field private static final sLists:Lcom/liquable/nemo/util/crop/RenderView$Lists;

.field private static final sLoadInputQueue:Lcom/liquable/nemo/util/crop/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/Deque",
            "<",
            "Lcom/liquable/nemo/util/crop/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadInputQueueCached:Lcom/liquable/nemo/util/crop/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/Deque",
            "<",
            "Lcom/liquable/nemo/util/crop/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadInputQueueVideo:Lcom/liquable/nemo/util/crop/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/Deque",
            "<",
            "Lcom/liquable/nemo/util/crop/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadOutputQueue:Lcom/liquable/nemo/util/crop/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/Deque",
            "<",
            "Lcom/liquable/nemo/util/crop/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextureLoadThreads:[Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

.field private static sVideoTextureLoadThread:Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

.field static final textureId:[I


# instance fields
.field private final mActiveTextureList:Lcom/liquable/nemo/util/crop/DirectLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/DirectLinkedList",
            "<",
            "Lcom/liquable/nemo/util/crop/RenderView$TextureReference;",
            ">;"
        }
    .end annotation
.end field

.field private mAlpha:F

.field private mBoundTexture:Lcom/liquable/nemo/util/crop/Texture;

.field private mCurrentEventType:I

.field private mCurrentKeyEvent:Landroid/view/KeyEvent;

.field private mCurrentKeyEventResult:Z

.field private mFirstDraw:Z

.field private mFrameInterval:F

.field private mFrameTime:J

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mListsDirty:Z

.field private mLoadingCount:I

.field private mLoadingExpensiveTexturesStartTime:J

.field private volatile mPendingSensorEvent:Z

.field private mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTouchEventQueue:Lcom/liquable/nemo/util/crop/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/crop/Deque",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchEventTarget:Lcom/liquable/nemo/util/crop/Layer;

.field private final mUnreferencedTextureQueue:Ljava/lang/ref/ReferenceQueue;

.field private mViewHeight:I

.field private mViewWidth:I

.field private final sCacheScaled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/liquable/nemo/util/crop/ResourceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final sCacheUnscaled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/liquable/nemo/util/crop/ResourceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    new-instance v0, Lcom/liquable/nemo/util/crop/RenderView$Lists;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/RenderView$Lists;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLists:Lcom/liquable/nemo/util/crop/RenderView$Lists;

    .line 154
    new-instance v0, Lcom/liquable/nemo/util/crop/Deque;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/Deque;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLoadInputQueue:Lcom/liquable/nemo/util/crop/Deque;

    .line 155
    new-instance v0, Lcom/liquable/nemo/util/crop/Deque;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/Deque;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLoadInputQueueCached:Lcom/liquable/nemo/util/crop/Deque;

    .line 156
    new-instance v0, Lcom/liquable/nemo/util/crop/Deque;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/Deque;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLoadInputQueueVideo:Lcom/liquable/nemo/util/crop/Deque;

    .line 157
    new-instance v0, Lcom/liquable/nemo/util/crop/Deque;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/Deque;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLoadOutputQueue:Lcom/liquable/nemo/util/crop/Deque;

    .line 159
    sput-object v1, Lcom/liquable/nemo/util/crop/RenderView;->sCachedTextureLoadThread:Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    .line 160
    sput-object v1, Lcom/liquable/nemo/util/crop/RenderView;->sVideoTextureLoadThread:Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    .line 161
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    sput-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sTextureLoadThreads:[Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/liquable/nemo/util/crop/RenderView;->textureId:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 139
    iput-object v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 140
    iput v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mViewWidth:I

    .line 141
    iput v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mViewHeight:I

    .line 143
    iput-object v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    .line 145
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mListsDirty:Z

    .line 147
    iput-object v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mTouchEventTarget:Lcom/liquable/nemo/util/crop/Layer;

    .line 148
    iput v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mCurrentEventType:I

    .line 150
    iput-object v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 151
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mCurrentKeyEventResult:Z

    .line 152
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mPendingSensorEvent:Z

    .line 153
    iput v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingCount:I

    .line 163
    new-instance v2, Lcom/liquable/nemo/util/crop/Deque;

    invoke-direct {v2}, Lcom/liquable/nemo/util/crop/Deque;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mTouchEventQueue:Lcom/liquable/nemo/util/crop/Deque;

    .line 164
    new-instance v2, Lcom/liquable/nemo/util/crop/DirectLinkedList;

    invoke-direct {v2}, Lcom/liquable/nemo/util/crop/DirectLinkedList;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mActiveTextureList:Lcom/liquable/nemo/util/crop/DirectLinkedList;

    .line 165
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mUnreferencedTextureQueue:Ljava/lang/ref/ReferenceQueue;

    .line 170
    iput-wide v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mFrameTime:J

    .line 171
    const/4 v2, 0x0

    iput v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mFrameInterval:F

    .line 174
    iput-wide v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingExpensiveTexturesStartTime:J

    .line 175
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->sCacheScaled:Landroid/util/SparseArray;

    .line 177
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->sCacheUnscaled:Landroid/util/SparseArray;

    .line 189
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/util/crop/RenderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/util/crop/RenderView;->setFocusable(Z)V

    .line 191
    invoke-virtual {p0, p0}, Lcom/liquable/nemo/util/crop/RenderView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 192
    const-string/jumbo v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mSensorManager:Landroid/hardware/SensorManager;

    .line 193
    sget-object v2, Lcom/liquable/nemo/util/crop/RenderView;->sCachedTextureLoadThread:Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    if-nez v2, :cond_2

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 195
    new-instance v1, Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;-><init>(Lcom/liquable/nemo/util/crop/RenderView;)V

    .line 196
    .local v1, "thread":Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;
    if-nez v0, :cond_0

    .line 197
    sput-object v1, Lcom/liquable/nemo/util/crop/RenderView;->sCachedTextureLoadThread:Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    .line 199
    :cond_0
    if-ne v0, v4, :cond_1

    .line 200
    sput-object v1, Lcom/liquable/nemo/util/crop/RenderView;->sVideoTextureLoadThread:Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    .line 202
    :cond_1
    sget-object v2, Lcom/liquable/nemo/util/crop/RenderView;->sTextureLoadThreads:[Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    aput-object v1, v2, v0

    .line 203
    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;->start()V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "i":I
    .end local v1    # "thread":Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/util/crop/RenderView;Lcom/liquable/nemo/util/crop/Texture;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/RenderView;
    .param p1, "x1"    # Lcom/liquable/nemo/util/crop/Texture;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/crop/RenderView;->loadTextureAsync(Lcom/liquable/nemo/util/crop/Texture;)V

    return-void
.end method

.method static synthetic access$100()Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sVideoTextureLoadThread:Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    return-object v0
.end method

.method static synthetic access$200()Lcom/liquable/nemo/util/crop/Deque;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLoadInputQueueVideo:Lcom/liquable/nemo/util/crop/Deque;

    return-object v0
.end method

.method static synthetic access$300()Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sCachedTextureLoadThread:Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    return-object v0
.end method

.method static synthetic access$400()Lcom/liquable/nemo/util/crop/Deque;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLoadInputQueueCached:Lcom/liquable/nemo/util/crop/Deque;

    return-object v0
.end method

.method static synthetic access$500()Lcom/liquable/nemo/util/crop/Deque;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLoadInputQueue:Lcom/liquable/nemo/util/crop/Deque;

    return-object v0
.end method

.method static synthetic access$600()Lcom/liquable/nemo/util/crop/Deque;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLoadOutputQueue:Lcom/liquable/nemo/util/crop/Deque;

    return-object v0
.end method

.method private clearTextureArray(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/liquable/nemo/util/crop/ResourceTexture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/liquable/nemo/util/crop/ResourceTexture;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 280
    return-void
.end method

.method private getResourceInternal(IZ)Lcom/liquable/nemo/util/crop/ResourceTexture;
    .locals 2
    .param p1, "resourceId"    # I
    .param p2, "scaled"    # Z

    .prologue
    .line 404
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->sCacheScaled:Landroid/util/SparseArray;

    .line 405
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/liquable/nemo/util/crop/ResourceTexture;>;"
    :goto_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/ResourceTexture;

    .line 406
    .local v1, "texture":Lcom/liquable/nemo/util/crop/ResourceTexture;
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 407
    new-instance v1, Lcom/liquable/nemo/util/crop/ResourceTexture;

    .end local v1    # "texture":Lcom/liquable/nemo/util/crop/ResourceTexture;
    invoke-direct {v1, p1, p2}, Lcom/liquable/nemo/util/crop/ResourceTexture;-><init>(IZ)V

    .line 408
    .restart local v1    # "texture":Lcom/liquable/nemo/util/crop/ResourceTexture;
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    :cond_0
    return-object v1

    .line 404
    .end local v0    # "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/liquable/nemo/util/crop/ResourceTexture;>;"
    .end local v1    # "texture":Lcom/liquable/nemo/util/crop/ResourceTexture;
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->sCacheUnscaled:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method private hitTest(FF)Lcom/liquable/nemo/util/crop/Layer;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 421
    sget-object v5, Lcom/liquable/nemo/util/crop/RenderView;->sLists:Lcom/liquable/nemo/util/crop/RenderView$Lists;

    iget-object v0, v5, Lcom/liquable/nemo/util/crop/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    .line 422
    .local v0, "hitTestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/Layer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 423
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/crop/Layer;

    .line 424
    .local v2, "layer":Lcom/liquable/nemo/util/crop/Layer;
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Lcom/liquable/nemo/util/crop/Layer;->mHidden:Z

    if-nez v5, :cond_0

    .line 425
    iget v3, v2, Lcom/liquable/nemo/util/crop/Layer;->mX:F

    .line 426
    .local v3, "layerX":F
    iget v4, v2, Lcom/liquable/nemo/util/crop/Layer;->mY:F

    .line 427
    .local v4, "layerY":F
    cmpl-float v5, p1, v3

    if-ltz v5, :cond_0

    cmpl-float v5, p2, v4

    if-ltz v5, :cond_0

    iget v5, v2, Lcom/liquable/nemo/util/crop/Layer;->mWidth:F

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    iget v5, v2, Lcom/liquable/nemo/util/crop/Layer;->mHeight:F

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    .line 430
    invoke-virtual {v2, p1, p2}, Lcom/liquable/nemo/util/crop/Layer;->containsPoint(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 435
    .end local v2    # "layer":Lcom/liquable/nemo/util/crop/Layer;
    .end local v3    # "layerX":F
    .end local v4    # "layerY":F
    :goto_1
    return-object v2

    .line 422
    .restart local v2    # "layer":Lcom/liquable/nemo/util/crop/Layer;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 435
    .end local v2    # "layer":Lcom/liquable/nemo/util/crop/Layer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private loadTextureAsync(Lcom/liquable/nemo/util/crop/Texture;)V
    .locals 14
    .param p1, "texture"    # Lcom/liquable/nemo/util/crop/Texture;

    .prologue
    const/4 v13, 0x0

    .line 458
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/liquable/nemo/util/crop/Texture;->load(Lcom/liquable/nemo/util/crop/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 459
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 460
    const/16 v10, 0x400

    invoke-static {v0, v10}, Lcom/liquable/nemo/util/crop/Utils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 462
    .local v9, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 463
    .local v5, "height":I
    iput v9, p1, Lcom/liquable/nemo/util/crop/Texture;->mWidth:I

    .line 464
    iput v5, p1, Lcom/liquable/nemo/util/crop/Texture;->mHeight:I

    .line 467
    invoke-static {v9}, Lcom/liquable/nemo/util/crop/Shared;->isPowerOf2(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v5}, Lcom/liquable/nemo/util/crop/Shared;->isPowerOf2(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 468
    :cond_0
    invoke-static {v9}, Lcom/liquable/nemo/util/crop/Shared;->nextPowerOf2(I)I

    move-result v8

    .line 469
    .local v8, "paddedWidth":I
    invoke-static {v5}, Lcom/liquable/nemo/util/crop/Shared;->nextPowerOf2(I)I

    move-result v7

    .line 470
    .local v7, "paddedHeight":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 471
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    if-nez v2, :cond_1

    .line 472
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 474
    :cond_1
    mul-int v10, v9, v5

    const/high16 v11, 0x40000

    if-lt v10, v11, :cond_2

    .line 475
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 477
    :cond_2
    invoke-static {v8, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 478
    .local v6, "padded":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 479
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v0, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 480
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 481
    move-object v0, v6

    .line 484
    int-to-float v10, v9

    int-to-float v11, v8

    div-float/2addr v10, v11

    iput v10, p1, Lcom/liquable/nemo/util/crop/Texture;->mNormalizedWidth:F

    .line 485
    int-to-float v10, v5

    int-to-float v11, v7

    div-float/2addr v10, v11

    iput v10, p1, Lcom/liquable/nemo/util/crop/Texture;->mNormalizedHeight:F

    .line 491
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    .end local v5    # "height":I
    .end local v6    # "padded":Landroid/graphics/Bitmap;
    .end local v7    # "paddedHeight":I
    .end local v8    # "paddedWidth":I
    .end local v9    # "width":I
    :cond_3
    :goto_0
    iput-object v0, p1, Lcom/liquable/nemo/util/crop/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 498
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 487
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "height":I
    .restart local v9    # "width":I
    :cond_4
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, p1, Lcom/liquable/nemo/util/crop/Texture;->mNormalizedWidth:F

    .line 488
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, p1, Lcom/liquable/nemo/util/crop/Texture;->mNormalizedHeight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 492
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "height":I
    .end local v9    # "width":I
    :catch_0
    move-exception v3

    .line 493
    .local v3, "e":Ljava/lang/Exception;
    iput-object v13, p1, Lcom/liquable/nemo/util/crop/Texture;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 494
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 495
    .local v4, "eMem":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v10, "RenderView"

    const-string/jumbo v11, "Bitmap power of 2 creation fail, outofmemory"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/RenderView;->handleLowMemory()V

    goto :goto_1
.end method

.method private processCurrentEvent()V
    .locals 2

    .prologue
    .line 822
    iget v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mCurrentEventType:I

    .line 823
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 833
    :goto_0
    monitor-enter p0

    .line 834
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mCurrentEventType:I

    .line 835
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 836
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    return-void

    .line 825
    :pswitch_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/RenderView;->processKeyEvent()V

    goto :goto_0

    .line 828
    :pswitch_1
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/RenderView;->processFocusEvent()V

    goto :goto_0

    .line 836
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 823
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processFocusEvent()V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    if-eqz v0, :cond_0

    .line 844
    :cond_0
    return-void
.end method

.method private processKeyEvent()V
    .locals 4

    .prologue
    .line 848
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 849
    .local v0, "event":Landroid/view/KeyEvent;
    const/4 v1, 0x0

    .line 850
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 853
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    if-eqz v2, :cond_0

    .line 854
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 855
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/crop/RootLayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 860
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mCurrentKeyEventResult:Z

    .line 861
    return-void

    .line 857
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/liquable/nemo/util/crop/RootLayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method private processTextures(Z)V
    .locals 8
    .param p1, "processAll"    # Z

    .prologue
    const/4 v7, 0x0

    .line 866
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 868
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    :goto_0
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mUnreferencedTextureQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/util/crop/RenderView$TextureReference;

    .local v4, "textureReference":Lcom/liquable/nemo/util/crop/RenderView$TextureReference;
    if-eqz v4, :cond_1

    .line 869
    sget-object v5, Lcom/liquable/nemo/util/crop/RenderView;->textureId:[I

    iget v6, v4, Lcom/liquable/nemo/util/crop/RenderView$TextureReference;->textureId:I

    aput v6, v5, v7

    .line 870
    iget-object v1, v4, Lcom/liquable/nemo/util/crop/RenderView$TextureReference;->gl:Ljavax/microedition/khronos/opengles/GL11;

    .line 871
    .local v1, "glOld":Ljavax/microedition/khronos/opengles/GL11;
    if-ne v1, v0, :cond_0

    .line 872
    const/4 v5, 0x1

    sget-object v6, Lcom/liquable/nemo/util/crop/RenderView;->textureId:[I

    invoke-interface {v0, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 874
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mActiveTextureList:Lcom/liquable/nemo/util/crop/DirectLinkedList;

    iget-object v6, v4, Lcom/liquable/nemo/util/crop/RenderView$TextureReference;->activeListEntry:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/crop/DirectLinkedList;->remove(Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;)Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    goto :goto_0

    .line 876
    .end local v1    # "glOld":Ljavax/microedition/khronos/opengles/GL11;
    :cond_1
    sget-object v2, Lcom/liquable/nemo/util/crop/RenderView;->sLoadOutputQueue:Lcom/liquable/nemo/util/crop/Deque;

    .line 880
    .local v2, "outputQueue":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<Lcom/liquable/nemo/util/crop/Texture;>;"
    :cond_2
    monitor-enter v2

    .line 881
    :try_start_0
    invoke-virtual {v2}, Lcom/liquable/nemo/util/crop/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/util/crop/Texture;

    .line 882
    .local v3, "texture":Lcom/liquable/nemo/util/crop/Texture;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    if-eqz v3, :cond_3

    .line 885
    sget-object v5, Lcom/liquable/nemo/util/crop/RenderView;->textureId:[I

    invoke-direct {p0, v3, v5}, Lcom/liquable/nemo/util/crop/RenderView;->uploadTexture(Lcom/liquable/nemo/util/crop/Texture;[I)V

    .line 888
    iget v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingCount:I

    .line 892
    if-nez p1, :cond_2

    .line 893
    :cond_3
    return-void

    .line 882
    .end local v3    # "texture":Lcom/liquable/nemo/util/crop/Texture;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private processTouchEvent()V
    .locals 8

    .prologue
    .line 896
    const/4 v2, 0x0

    .line 897
    .local v2, "event":Landroid/view/MotionEvent;
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/RenderView;->mTouchEventQueue:Lcom/liquable/nemo/util/crop/Deque;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/crop/Deque;->size()I

    move-result v4

    .line 898
    .local v4, "numEvents":I
    const/4 v3, 0x0

    .line 901
    .local v3, "i":I
    :cond_0
    iget-object v7, p0, Lcom/liquable/nemo/util/crop/RenderView;->mTouchEventQueue:Lcom/liquable/nemo/util/crop/Deque;

    monitor-enter v7

    .line 902
    :try_start_0
    iget-object v6, p0, Lcom/liquable/nemo/util/crop/RenderView;->mTouchEventQueue:Lcom/liquable/nemo/util/crop/Deque;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/crop/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 903
    monitor-exit v7

    .line 904
    if-nez v2, :cond_1

    .line 933
    :goto_0
    return-void

    .line 903
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 909
    :cond_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 911
    .local v1, "action":I
    if-nez v1, :cond_6

    .line 912
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/liquable/nemo/util/crop/RenderView;->hitTest(FF)Lcom/liquable/nemo/util/crop/Layer;

    move-result-object v5

    .line 913
    .local v5, "target":Lcom/liquable/nemo/util/crop/Layer;
    iput-object v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mTouchEventTarget:Lcom/liquable/nemo/util/crop/Layer;

    .line 919
    :goto_1
    if-eqz v5, :cond_2

    .line 920
    invoke-virtual {v5, v2}, Lcom/liquable/nemo/util/crop/Layer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 924
    :cond_2
    const/4 v6, 0x1

    if-eq v1, v6, :cond_3

    const/4 v6, 0x3

    if-ne v1, v6, :cond_4

    .line 925
    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/liquable/nemo/util/crop/RenderView;->mTouchEventTarget:Lcom/liquable/nemo/util/crop/Layer;

    .line 927
    :cond_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 928
    add-int/lit8 v3, v3, 0x1

    .line 929
    if-eqz v2, :cond_5

    if-lt v3, v4, :cond_0

    .line 930
    :cond_5
    monitor-enter p0

    .line 931
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 932
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 915
    .end local v5    # "target":Lcom/liquable/nemo/util/crop/Layer;
    :cond_6
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mTouchEventTarget:Lcom/liquable/nemo/util/crop/Layer;

    .restart local v5    # "target":Lcom/liquable/nemo/util/crop/Layer;
    goto :goto_1
.end method

.method private queueLoad(Lcom/liquable/nemo/util/crop/Texture;Z)V
    .locals 4
    .param p1, "texture"    # Lcom/liquable/nemo/util/crop/Texture;
    .param p2, "highPriority"    # Z

    .prologue
    .line 937
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/Texture;->shouldQueue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 964
    :goto_0
    return-void

    .line 942
    :cond_0
    const/4 v2, 0x2

    iput v2, p1, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    .line 945
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/Texture;->isUncachedVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLoadInputQueueVideo:Lcom/liquable/nemo/util/crop/Deque;

    .line 948
    .local v0, "inputQueue":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<Lcom/liquable/nemo/util/crop/Texture;>;"
    :goto_1
    monitor-enter v0

    .line 949
    if-eqz p2, :cond_4

    .line 950
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/crop/Deque;->addFirst(Ljava/lang/Object;)V

    .line 953
    iget v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingCount:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 954
    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/Texture;

    .line 955
    .local v1, "unloadTexture":Lcom/liquable/nemo/util/crop/Texture;
    const/4 v2, 0x0

    iput v2, v1, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    .line 956
    iget v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingCount:I

    .line 961
    .end local v1    # "unloadTexture":Lcom/liquable/nemo/util/crop/Texture;
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 962
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    iget v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingCount:I

    goto :goto_0

    .line 946
    .end local v0    # "inputQueue":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<Lcom/liquable/nemo/util/crop/Texture;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/Texture;->isCached()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLoadInputQueueCached:Lcom/liquable/nemo/util/crop/Deque;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLoadInputQueue:Lcom/liquable/nemo/util/crop/Deque;

    goto :goto_1

    .line 959
    .restart local v0    # "inputQueue":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<Lcom/liquable/nemo/util/crop/Texture;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/crop/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 962
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateLists()V
    .locals 3

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    if-eqz v0, :cond_0

    .line 1031
    sget-object v1, Lcom/liquable/nemo/util/crop/RenderView;->sLists:Lcom/liquable/nemo/util/crop/RenderView$Lists;

    monitor-enter v1

    .line 1032
    :try_start_0
    sget-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLists:Lcom/liquable/nemo/util/crop/RenderView$Lists;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/RenderView$Lists;->clear()V

    .line 1033
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    sget-object v2, Lcom/liquable/nemo/util/crop/RenderView;->sLists:Lcom/liquable/nemo/util/crop/RenderView$Lists;

    invoke-virtual {v0, p0, v2}, Lcom/liquable/nemo/util/crop/RootLayer;->generate(Lcom/liquable/nemo/util/crop/RenderView;Lcom/liquable/nemo/util/crop/RenderView$Lists;)V

    .line 1034
    monitor-exit v1

    .line 1036
    :cond_0
    return-void

    .line 1034
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private uploadTexture(Lcom/liquable/nemo/util/crop/Texture;[I)V
    .locals 13
    .param p1, "texture"    # Lcom/liquable/nemo/util/crop/Texture;
    .param p2, "textureId"    # [I

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const v11, 0x46180400    # 9729.0f

    const/16 v9, 0xde1

    const/4 v10, 0x0

    .line 1039
    iget-object v0, p1, Lcom/liquable/nemo/util/crop/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 1040
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 1041
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL11;
    const/4 v3, 0x0

    .line 1042
    .local v3, "glError":I
    if-eqz v0, :cond_2

    .line 1043
    iget v6, p1, Lcom/liquable/nemo/util/crop/Texture;->mWidth:I

    .line 1044
    .local v6, "width":I
    iget v4, p1, Lcom/liquable/nemo/util/crop/Texture;->mHeight:I

    .line 1047
    .local v4, "height":I
    const/4 v7, 0x4

    new-array v1, v7, [I

    aput v10, v1, v10

    aput v4, v1, v8

    const/4 v7, 0x2

    aput v6, v1, v7

    neg-int v7, v4

    aput v7, v1, v12

    .line 1050
    .local v1, "cropRect":[I
    invoke-interface {v2, v8, p2, v10}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 1051
    aget v7, p2, v10

    invoke-interface {v2, v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 1052
    const v7, 0x8b9d

    invoke-interface {v2, v9, v7, v1, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 1053
    const/16 v7, 0x2802

    const v8, 0x812f

    invoke-interface {v2, v9, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 1054
    const/16 v7, 0x2803

    const v8, 0x812f

    invoke-interface {v2, v9, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 1055
    const/16 v7, 0x2801

    invoke-interface {v2, v9, v7, v11}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 1056
    const/16 v7, 0x2800

    invoke-interface {v2, v9, v7, v11}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 1057
    invoke-static {v9, v10, v0, v10}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1058
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v3

    .line 1060
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1061
    const/16 v7, 0x505

    if-ne v3, v7, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/RenderView;->handleLowMemory()V

    .line 1064
    :cond_0
    if-eqz v3, :cond_1

    .line 1067
    const-string/jumbo v7, "RenderView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Texture creation fail, glError "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iput v10, p1, Lcom/liquable/nemo/util/crop/Texture;->mId:I

    .line 1069
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/liquable/nemo/util/crop/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 1070
    iput v10, p1, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    .line 1089
    .end local v1    # "cropRect":[I
    .end local v4    # "height":I
    .end local v6    # "width":I
    :goto_0
    return-void

    .line 1073
    .restart local v1    # "cropRect":[I
    .restart local v4    # "height":I
    .restart local v6    # "width":I
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/liquable/nemo/util/crop/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 1074
    aget v7, p2, v10

    iput v7, p1, Lcom/liquable/nemo/util/crop/Texture;->mId:I

    .line 1075
    iput v12, p1, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    .line 1078
    new-instance v5, Lcom/liquable/nemo/util/crop/RenderView$TextureReference;

    iget-object v7, p0, Lcom/liquable/nemo/util/crop/RenderView;->mUnreferencedTextureQueue:Ljava/lang/ref/ReferenceQueue;

    aget v8, p2, v10

    invoke-direct {v5, p1, v2, v7, v8}, Lcom/liquable/nemo/util/crop/RenderView$TextureReference;-><init>(Lcom/liquable/nemo/util/crop/Texture;Ljavax/microedition/khronos/opengles/GL11;Ljava/lang/ref/ReferenceQueue;I)V

    .line 1082
    .local v5, "textureRef":Lcom/liquable/nemo/util/crop/RenderView$TextureReference;
    iget-object v7, p0, Lcom/liquable/nemo/util/crop/RenderView;->mActiveTextureList:Lcom/liquable/nemo/util/crop/DirectLinkedList;

    iget-object v8, v5, Lcom/liquable/nemo/util/crop/RenderView$TextureReference;->activeListEntry:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/crop/DirectLinkedList;->add(Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;)V

    .line 1083
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/RenderView;->requestRender()V

    goto :goto_0

    .line 1086
    .end local v1    # "cropRect":[I
    .end local v4    # "height":I
    .end local v5    # "textureRef":Lcom/liquable/nemo/util/crop/RenderView$TextureReference;
    .end local v6    # "width":I
    :cond_2
    const/4 v7, 0x4

    iput v7, p1, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/liquable/nemo/util/crop/Texture;)Z
    .locals 4
    .param p1, "texture"    # Lcom/liquable/nemo/util/crop/Texture;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    if-eqz p1, :cond_1

    .line 210
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mBoundTexture:Lcom/liquable/nemo/util/crop/Texture;

    if-ne p1, v2, :cond_0

    .line 231
    :goto_0
    return v0

    .line 213
    :cond_0
    iget v2, p1, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v1

    .line 231
    goto :goto_0

    .line 215
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/liquable/nemo/util/crop/ResourceTexture;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/crop/RenderView;->loadTexture(Lcom/liquable/nemo/util/crop/Texture;)V

    move v0, v1

    .line 217
    goto :goto_0

    .line 219
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingCount:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    .line 220
    invoke-direct {p0, p1, v1}, Lcom/liquable/nemo/util/crop/RenderView;->queueLoad(Lcom/liquable/nemo/util/crop/Texture;Z)V

    goto :goto_1

    .line 224
    :pswitch_2
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0xde1

    iget v3, p1, Lcom/liquable/nemo/util/crop/Texture;->mId:I

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 225
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mBoundTexture:Lcom/liquable/nemo/util/crop/Texture;

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bindMixed(Lcom/liquable/nemo/util/crop/Texture;Lcom/liquable/nemo/util/crop/Texture;F)Z
    .locals 10
    .param p1, "from"    # Lcom/liquable/nemo/util/crop/Texture;
    .param p2, "to"    # Lcom/liquable/nemo/util/crop/Texture;
    .param p3, "ratio"    # F

    .prologue
    const v9, 0x47057500    # 34165.0f

    const v8, 0x44408000    # 770.0f

    const/4 v3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v6, 0x2300

    .line 236
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 237
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL11;
    const/4 v0, 0x1

    .line 238
    .local v0, "bind":Z
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/crop/RenderView;->bind(Lcom/liquable/nemo/util/crop/Texture;)Z

    move-result v4

    and-int/2addr v0, v4

    .line 239
    const v4, 0x84c1

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 240
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/liquable/nemo/util/crop/RenderView;->mBoundTexture:Lcom/liquable/nemo/util/crop/Texture;

    .line 241
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/util/crop/RenderView;->bind(Lcom/liquable/nemo/util/crop/Texture;)Z

    move-result v4

    and-int/2addr v0, v4

    .line 242
    if-nez v0, :cond_0

    .line 266
    :goto_0
    return v3

    .line 247
    :cond_0
    const/16 v4, 0xde1

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 250
    const/16 v4, 0x2200

    const v5, 0x47057000    # 34160.0f

    invoke-interface {v2, v6, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 251
    const v4, 0x8571

    invoke-interface {v2, v6, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 252
    const v4, 0x8572

    invoke-interface {v2, v6, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 256
    const/4 v4, 0x4

    new-array v1, v4, [F

    aput v7, v1, v3

    const/4 v4, 0x1

    aput v7, v1, v4

    const/4 v4, 0x2

    aput v7, v1, v4

    const/4 v4, 0x3

    aput p3, v1, v4

    .line 257
    .local v1, "color":[F
    const/16 v4, 0x2201

    invoke-interface {v2, v6, v4, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 260
    const v3, 0x8582

    const v4, 0x47057600    # 34166.0f

    invoke-interface {v2, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 261
    const v3, 0x8592

    invoke-interface {v2, v6, v3, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 264
    const v3, 0x858a

    const v4, 0x47057600    # 34166.0f

    invoke-interface {v2, v6, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 265
    const v3, 0x859a

    invoke-interface {v2, v6, v3, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 266
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->sCacheScaled:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/crop/RenderView;->clearTextureArray(Landroid/util/SparseArray;)V

    .line 271
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->sCacheUnscaled:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/crop/RenderView;->clearTextureArray(Landroid/util/SparseArray;)V

    .line 272
    return-void
.end method

.method public draw2D(FFFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 287
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    sub-float v2, v1, p5

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 288
    return-void
.end method

.method public draw2D(Lcom/liquable/nemo/util/crop/Texture;FF)V
    .locals 6
    .param p1, "texture"    # Lcom/liquable/nemo/util/crop/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/crop/RenderView;->bind(Lcom/liquable/nemo/util/crop/Texture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/Texture;->getWidth()I

    move-result v0

    int-to-float v4, v0

    .line 293
    .local v4, "width":F
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/Texture;->getHeight()I

    move-result v0

    int-to-float v5, v0

    .line 294
    .local v5, "height":F
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p3

    sub-float v2, v1, v5

    const/4 v3, 0x0

    move v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 296
    .end local v4    # "width":F
    .end local v5    # "height":F
    :cond_0
    return-void
.end method

.method public draw2D(Lcom/liquable/nemo/util/crop/Texture;FFFF)V
    .locals 6
    .param p1, "texture"    # Lcom/liquable/nemo/util/crop/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/crop/RenderView;->bind(Lcom/liquable/nemo/util/crop/Texture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p3

    sub-float v2, v1, p5

    const/4 v3, 0x0

    move v1, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 306
    :cond_0
    return-void
.end method

.method public draw2D(Lcom/liquable/nemo/util/crop/Texture;IIII)V
    .locals 6
    .param p1, "texture"    # Lcom/liquable/nemo/util/crop/Texture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/crop/RenderView;->bind(Lcom/liquable/nemo/util/crop/Texture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mViewHeight:I

    sub-int/2addr v1, p3

    sub-int v2, v1, p5

    const/4 v3, 0x0

    move v1, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 316
    :cond_0
    return-void
.end method

.method public drawMixed2D(Lcom/liquable/nemo/util/crop/Texture;Lcom/liquable/nemo/util/crop/Texture;FFFFFF)V
    .locals 8
    .param p1, "from"    # Lcom/liquable/nemo/util/crop/Texture;
    .param p2, "to"    # Lcom/liquable/nemo/util/crop/Texture;
    .param p3, "ratio"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F
    .param p7, "width"    # F
    .param p8, "height"    # F

    .prologue
    .line 326
    iget-object v7, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 329
    .local v7, "gl":Ljavax/microedition/khronos/opengles/GL11;
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/crop/RenderView;->bind(Lcom/liquable/nemo/util/crop/Texture;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    const v0, 0x84c1

    invoke-interface {v7, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mBoundTexture:Lcom/liquable/nemo/util/crop/Texture;

    .line 332
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/util/crop/RenderView;->bind(Lcom/liquable/nemo/util/crop/Texture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/16 v0, 0xde1

    invoke-interface {v7, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 337
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x47057000    # 34160.0f

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 338
    const/16 v0, 0x2300

    const v1, 0x8571

    const v2, 0x47057500    # 34165.0f

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 339
    const/16 v0, 0x2300

    const v1, 0x8572

    const v2, 0x47057500    # 34165.0f

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 343
    const/4 v0, 0x4

    new-array v6, v0, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v6, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v6, v0

    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v6, v0

    const/4 v0, 0x3

    aput p3, v6, v0

    .line 344
    .local v6, "color":[F
    const/16 v0, 0x2300

    const/16 v1, 0x2201

    const/4 v2, 0x0

    invoke-interface {v7, v0, v1, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 347
    const/16 v0, 0x2300

    const v1, 0x8582

    const v2, 0x47057600    # 34166.0f

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 348
    const/16 v0, 0x2300

    const v1, 0x8592

    const v2, 0x44408000    # 770.0f

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 351
    const/16 v0, 0x2300

    const v1, 0x858a

    const v2, 0x47057600    # 34166.0f

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 352
    const/16 v0, 0x2300

    const v1, 0x859a

    const v2, 0x44408000    # 770.0f

    invoke-interface {v7, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    move-object v0, v7

    .line 355
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p5

    sub-float v2, v1, p8

    move v1, p4

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 358
    const/16 v0, 0xde1

    invoke-interface {v7, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 362
    .end local v6    # "color":[F
    :cond_0
    const v0, 0x84c0

    invoke-interface {v7, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mBoundTexture:Lcom/liquable/nemo/util/crop/Texture;

    .line 365
    :cond_1
    return-void
.end method

.method public elapsedLoadingExpensiveTextures()J
    .locals 4

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingExpensiveTexturesStartTime:J

    .line 369
    .local v0, "startTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 372
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mAlpha:F

    return v0
.end method

.method public getFrameInterval()F
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mFrameInterval:F

    return v0
.end method

.method public getFrameTime()J
    .locals 2

    .prologue
    .line 388
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mFrameTime:J

    return-wide v0
.end method

.method public getLists()Lcom/liquable/nemo/util/crop/RenderView$Lists;
    .locals 1

    .prologue
    .line 392
    sget-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLists:Lcom/liquable/nemo/util/crop/RenderView$Lists;

    return-object v0
.end method

.method public getResource(I)Lcom/liquable/nemo/util/crop/ResourceTexture;
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 396
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/util/crop/RenderView;->getResourceInternal(IZ)Lcom/liquable/nemo/util/crop/ResourceTexture;

    move-result-object v0

    return-object v0
.end method

.method public getResource(IZ)Lcom/liquable/nemo/util/crop/ResourceTexture;
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "scaled"    # Z

    .prologue
    .line 400
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/crop/RenderView;->getResourceInternal(IZ)Lcom/liquable/nemo/util/crop/ResourceTexture;

    move-result-object v0

    return-object v0
.end method

.method public handleLowMemory()V
    .locals 2

    .prologue
    .line 414
    const-string/jumbo v0, "RenderView"

    const-string/jumbo v1, "Handling low memory condition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/RootLayer;->handleLowMemory()V

    .line 418
    :cond_0
    return-void
.end method

.method public isLoadingExpensiveTextures()Z
    .locals 4

    .prologue
    .line 439
    iget-wide v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingExpensiveTexturesStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadTexture(Lcom/liquable/nemo/util/crop/Texture;)V
    .locals 2
    .param p1, "texture"    # Lcom/liquable/nemo/util/crop/Texture;

    .prologue
    .line 443
    if-eqz p1, :cond_0

    .line 444
    iget v1, p1, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 447
    :pswitch_0
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 448
    .local v0, "textureId":[I
    const/4 v1, 0x2

    iput v1, p1, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    .line 449
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/crop/RenderView;->loadTextureAsync(Lcom/liquable/nemo/util/crop/Texture;)V

    .line 450
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/util/crop/RenderView;->uploadTexture(Lcom/liquable/nemo/util/crop/Texture;[I)V

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 502
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 506
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    .line 507
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 511
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 512
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 25
    .param p1, "gl1"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 518
    move-object/from16 v6, p1

    check-cast v6, Ljavax/microedition/khronos/opengles/GL11;

    .line 519
    .local v6, "gl":Ljavax/microedition/khronos/opengles/GL11;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/RenderView;->mFirstDraw:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 520
    const-string/jumbo v20, "RenderView"

    const-string/jumbo v21, "First Draw"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/RenderView;->mFirstDraw:Z

    .line 525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/RenderView;->mListsDirty:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 526
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/RenderView;->updateLists()V

    .line 529
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/RenderView;->isLoadingExpensiveTextures()Z

    move-result v19

    .line 530
    .local v19, "wasLoadingExpensiveTextures":Z
    const/4 v11, 0x0

    .line 531
    .local v11, "loadingExpensiveTextures":Z
    sget-object v20, Lcom/liquable/nemo/util/crop/RenderView;->sTextureLoadThreads:[Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    move-object/from16 v0, v20

    array-length v14, v0

    .line 532
    .local v14, "numTextureThreads":I
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_0
    if-ge v7, v14, :cond_2

    .line 533
    sget-object v20, Lcom/liquable/nemo/util/crop/RenderView;->sTextureLoadThreads:[Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;

    aget-object v20, v20, v7

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/RenderView$TextureLoadThread;->mIsLoading:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 534
    const/4 v11, 0x1

    .line 538
    :cond_2
    move/from16 v0, v19

    if-eq v11, v0, :cond_3

    .line 539
    if-eqz v11, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    :goto_1
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingExpensiveTexturesStartTime:J

    .line 544
    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/RenderView;->processTextures(Z)V

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 548
    .local v12, "now":J
    const v20, 0x3a83126f    # 0.001f

    const-wide/16 v21, 0x32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/liquable/nemo/util/crop/RenderView;->mFrameTime:J

    move-wide/from16 v23, v0

    sub-long v23, v12, v23

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    mul-float v5, v20, v21

    .line 549
    .local v5, "dt":F
    move-object/from16 v0, p0

    iput v5, v0, Lcom/liquable/nemo/util/crop/RenderView;->mFrameInterval:F

    .line 550
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/liquable/nemo/util/crop/RenderView;->mFrameTime:J

    .line 553
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/RenderView;->processCurrentEvent()V

    .line 554
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/RenderView;->processTouchEvent()V

    .line 556
    sget-object v10, Lcom/liquable/nemo/util/crop/RenderView;->sLists:Lcom/liquable/nemo/util/crop/RenderView$Lists;

    .line 557
    .local v10, "lists":Lcom/liquable/nemo/util/crop/RenderView$Lists;
    monitor-enter v10

    .line 558
    :try_start_0
    iget-object v0, v10, Lcom/liquable/nemo/util/crop/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 559
    .local v18, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/Layer;>;"
    const/4 v8, 0x0

    .line 560
    .local v8, "isDirty":Z
    const/4 v7, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, "size":I
    :goto_2
    move/from16 v0, v17

    if-eq v7, v0, :cond_6

    .line 561
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/liquable/nemo/util/crop/Layer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/util/crop/RenderView;->mFrameInterval:F

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/crop/Layer;->update(Lcom/liquable/nemo/util/crop/RenderView;F)Z

    move-result v16

    .line 562
    .local v16, "retVal":Z
    or-int v8, v8, v16

    .line 560
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 532
    .end local v5    # "dt":F
    .end local v8    # "isDirty":Z
    .end local v10    # "lists":Lcom/liquable/nemo/util/crop/RenderView$Lists;
    .end local v12    # "now":J
    .end local v16    # "retVal":Z
    .end local v17    # "size":I
    .end local v18    # "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/Layer;>;"
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 539
    :cond_5
    const-wide/16 v20, 0x0

    goto :goto_1

    .line 564
    .restart local v5    # "dt":F
    .restart local v8    # "isDirty":Z
    .restart local v10    # "lists":Lcom/liquable/nemo/util/crop/RenderView$Lists;
    .restart local v12    # "now":J
    .restart local v17    # "size":I
    .restart local v18    # "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/Layer;>;"
    :cond_6
    if-eqz v8, :cond_7

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/RenderView;->requestRender()V

    .line 569
    :cond_7
    const/16 v20, 0x100

    move/from16 v0, v20

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 570
    const/16 v20, 0xc11

    move/from16 v0, v20

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 571
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/RenderView;->getWidth()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/RenderView;->getHeight()I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-interface {v6, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 574
    const/16 v20, 0xbe2

    move/from16 v0, v20

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 575
    iget-object v15, v10, Lcom/liquable/nemo/util/crop/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    .line 576
    .local v15, "opaqueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/Layer;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v7, v20, -0x1

    :goto_3
    if-ltz v7, :cond_9

    .line 577
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/util/crop/Layer;

    .line 578
    .local v9, "layer":Lcom/liquable/nemo/util/crop/Layer;
    iget-boolean v0, v9, Lcom/liquable/nemo/util/crop/Layer;->mHidden:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 579
    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v6}, Lcom/liquable/nemo/util/crop/Layer;->renderOpaque(Lcom/liquable/nemo/util/crop/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 576
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 584
    .end local v9    # "layer":Lcom/liquable/nemo/util/crop/Layer;
    :cond_9
    const/16 v20, 0xbe2

    move/from16 v0, v20

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 585
    iget-object v4, v10, Lcom/liquable/nemo/util/crop/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    .line 586
    .local v4, "blendedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/Layer;>;"
    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    :goto_4
    move/from16 v0, v17

    if-eq v7, v0, :cond_b

    .line 587
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/util/crop/Layer;

    .line 588
    .restart local v9    # "layer":Lcom/liquable/nemo/util/crop/Layer;
    iget-boolean v0, v9, Lcom/liquable/nemo/util/crop/Layer;->mHidden:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 589
    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v6}, Lcom/liquable/nemo/util/crop/Layer;->renderBlended(Lcom/liquable/nemo/util/crop/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 586
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 592
    .end local v9    # "layer":Lcom/liquable/nemo/util/crop/Layer;
    :cond_b
    const/16 v20, 0xbe2

    move/from16 v0, v20

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 593
    monitor-exit v10

    .line 594
    return-void

    .line 593
    .end local v4    # "blendedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/Layer;>;"
    .end local v8    # "isDirty":Z
    .end local v15    # "opaqueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/Layer;>;"
    .end local v17    # "size":I
    .end local v18    # "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/Layer;>;"
    :catchall_0
    move-exception v20

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 600
    invoke-super {p0, p1, p2, p3}, Landroid/opengl/GLSurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 613
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/RenderView;->requestRender()V

    .line 614
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v5, 0x32

    .line 620
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-nez v3, :cond_0

    .line 621
    const/4 v0, 0x0

    .line 647
    :goto_0
    return v0

    .line 626
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :try_start_1
    iput-object p2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 628
    const/4 v3, 0x2

    iput v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mCurrentEventType:I

    .line 629
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/RenderView;->requestRender()V

    .line 630
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long v1, v3, v5

    .line 632
    .local v1, "timeout":J
    :cond_1
    const-wide/16 v3, 0x32

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 633
    iget v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mCurrentEventType:I

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-ltz v3, :cond_1

    .line 634
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    .end local v1    # "timeout":J
    :goto_1
    const/4 v0, 0x0

    .line 641
    .local v0, "retVal":Z
    iget-boolean v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mCurrentKeyEventResult:Z

    if-nez v3, :cond_3

    .line 642
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 646
    :goto_2
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/RenderView;->requestRender()V

    goto :goto_0

    .line 634
    .end local v0    # "retVal":Z
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 635
    :catch_0
    move-exception v3

    goto :goto_1

    .line 644
    .restart local v0    # "retVal":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 652
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 653
    const-string/jumbo v0, "RenderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnPause RenderView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 655
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/RootLayer;->onPause()V

    .line 658
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 662
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 663
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 664
    .local v0, "sensorAccelerometer":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 665
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    if-eqz v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/crop/RootLayer;->onResume()V

    .line 670
    :cond_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 675
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 676
    .local v1, "type":I
    iget-boolean v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mPendingSensorEvent:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 677
    move-object v0, p1

    .line 678
    .local v0, "e":Landroid/hardware/SensorEvent;
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    if-eqz v2, :cond_0

    .line 679
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    invoke-virtual {v2, p0, v0}, Lcom/liquable/nemo/util/crop/RootLayer;->onSensorChanged(Lcom/liquable/nemo/util/crop/RenderView;Landroid/hardware/SensorEvent;)V

    .line 682
    .end local v0    # "e":Landroid/hardware/SensorEvent;
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .param p1, "gl1"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 689
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 690
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iput-boolean v6, p0, Lcom/liquable/nemo/util/crop/RenderView;->mFirstDraw:Z

    .line 691
    iput p2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mViewWidth:I

    .line 692
    iput p3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mViewHeight:I

    .line 693
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    if-eqz v3, :cond_0

    .line 694
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/crop/RootLayer;->setSize(FF)V

    .line 698
    :cond_0
    const v2, 0x3dcccccd    # 0.1f

    .line 699
    .local v2, "zNear":F
    const/high16 v1, 0x42c80000    # 100.0f

    .line 700
    .local v1, "zFar":F
    invoke-interface {v0, v6, v6, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 701
    const/16 v3, 0x1701

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 702
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 703
    const/high16 v3, 0x42340000    # 45.0f

    int-to-float v4, p2

    int-to-float v5, p3

    div-float/2addr v4, v5

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {v0, v3, v4, v5, v6}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 704
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    if-eqz v3, :cond_1

    .line 705
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    invoke-virtual {v3, p0, p2, p3}, Lcom/liquable/nemo/util/crop/RootLayer;->onSurfaceChanged(Lcom/liquable/nemo/util/crop/RenderView;II)V

    .line 707
    :cond_1
    const/16 v3, 0x1700

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 708
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11
    .param p1, "gl1"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const v10, 0x8078

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 716
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/RenderView;->clearCache()V

    move-object v0, p1

    .line 718
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 719
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-nez v5, :cond_1

    .line 720
    iput-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 726
    :goto_0
    invoke-virtual {p0, v9}, Lcom/liquable/nemo/util/crop/RenderView;->setRenderMode(I)V

    .line 732
    const/16 v5, 0xbd0

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 733
    const/16 v5, 0xb50

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 739
    const/16 v5, 0xde1

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 740
    const/16 v5, 0x2300

    const/16 v6, 0x2200

    const v7, 0x45f00800    # 7681.0f

    invoke-interface {v0, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 751
    const v5, 0x8074

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 752
    invoke-interface {v0, v10}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 753
    const v5, 0x84c1

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 754
    invoke-interface {v0, v10}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 755
    const v5, 0x84c0

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 758
    const/16 v5, 0xb71

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 759
    const/16 v5, 0x203

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDepthFunc(I)V

    .line 762
    const/4 v5, 0x1

    const/16 v6, 0x303

    invoke-interface {v0, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 765
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v0, v8, v8, v8, v5}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 766
    const/16 v5, 0x4000

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 769
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mActiveTextureList:Lcom/liquable/nemo/util/crop/DirectLinkedList;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/crop/DirectLinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 770
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mActiveTextureList:Lcom/liquable/nemo/util/crop/DirectLinkedList;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/crop/DirectLinkedList;->getHead()Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    move-result-object v2

    .line 771
    .local v2, "iter":Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;, "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry<Lcom/liquable/nemo/util/crop/RenderView$TextureReference;>;"
    :goto_1
    if-eqz v2, :cond_2

    .line 772
    iget-object v5, v2, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->value:Ljava/lang/Object;

    check-cast v5, Lcom/liquable/nemo/util/crop/RenderView$TextureReference;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/crop/RenderView$TextureReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/util/crop/Texture;

    .line 773
    .local v4, "texture":Lcom/liquable/nemo/util/crop/Texture;
    if-eqz v4, :cond_0

    .line 774
    iput v9, v4, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    .line 776
    :cond_0
    iget-object v2, v2, Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;->next:Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;

    .line 777
    goto :goto_1

    .line 723
    .end local v2    # "iter":Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry;, "Lcom/liquable/nemo/util/crop/DirectLinkedList$Entry<Lcom/liquable/nemo/util/crop/RenderView$TextureReference;>;"
    .end local v4    # "texture":Lcom/liquable/nemo/util/crop/Texture;
    :cond_1
    const-string/jumbo v5, "RenderView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GLObject has changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iput-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    goto/16 :goto_0

    .line 779
    :cond_2
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mActiveTextureList:Lcom/liquable/nemo/util/crop/DirectLinkedList;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/crop/DirectLinkedList;->clear()V

    .line 780
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    if-eqz v5, :cond_3

    .line 781
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    invoke-virtual {v5, p0, v0}, Lcom/liquable/nemo/util/crop/RootLayer;->onSurfaceCreated(Lcom/liquable/nemo/util/crop/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 783
    :cond_3
    sget-object v6, Lcom/liquable/nemo/util/crop/RenderView;->sLists:Lcom/liquable/nemo/util/crop/RenderView$Lists;

    monitor-enter v6

    .line 784
    :try_start_0
    sget-object v5, Lcom/liquable/nemo/util/crop/RenderView;->sLists:Lcom/liquable/nemo/util/crop/RenderView$Lists;

    iget-object v3, v5, Lcom/liquable/nemo/util/crop/RenderView$Lists;->systemList:Ljava/util/ArrayList;

    .line 785
    .local v3, "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/Layer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 786
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/util/crop/Layer;

    invoke-virtual {v5, p0, v0}, Lcom/liquable/nemo/util/crop/Layer;->onSurfaceCreated(Lcom/liquable/nemo/util/crop/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 785
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 788
    :cond_4
    monitor-exit v6

    .line 789
    return-void

    .line 788
    .end local v1    # "i":I
    .end local v3    # "systemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/Layer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 795
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-nez v2, :cond_1

    .line 796
    const/4 v1, 0x0

    .line 807
    :cond_0
    :goto_0
    return v1

    .line 799
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mTouchEventQueue:Lcom/liquable/nemo/util/crop/Deque;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/crop/Deque;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 802
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mTouchEventQueue:Lcom/liquable/nemo/util/crop/Deque;

    monitor-enter v2

    .line 803
    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 804
    .local v0, "eventCopy":Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/RenderView;->mTouchEventQueue:Lcom/liquable/nemo/util/crop/Deque;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/util/crop/Deque;->addLast(Ljava/lang/Object;)V

    .line 805
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/RenderView;->requestRender()V

    .line 806
    monitor-exit v2

    goto :goto_0

    .end local v0    # "eventCopy":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prime(Lcom/liquable/nemo/util/crop/Texture;Z)V
    .locals 2
    .param p1, "texture"    # Lcom/liquable/nemo/util/crop/Texture;
    .param p2, "highPriority"    # Z

    .prologue
    .line 811
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/liquable/nemo/util/crop/Texture;->mState:I

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mLoadingCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 813
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/crop/RenderView;->queueLoad(Lcom/liquable/nemo/util/crop/Texture;Z)V

    .line 815
    :cond_1
    return-void
.end method

.method public processAllTextures()V
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/crop/RenderView;->processTextures(Z)V

    .line 819
    return-void
.end method

.method public resetColor()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 967
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 968
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const v3, 0x45f00800    # 7681.0f

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 969
    invoke-interface {v0, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 970
    return-void
.end method

.method public setAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .prologue
    .line 974
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 975
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x46040000    # 8448.0f

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 976
    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 977
    iput p1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mAlpha:F

    .line 978
    return-void
.end method

.method public setColor(FFFF)V
    .locals 4
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 981
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 982
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x46040000    # 8448.0f

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 983
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 984
    iput p4, p0, Lcom/liquable/nemo/util/crop/RenderView;->mAlpha:F

    .line 985
    return-void
.end method

.method public setFov(F)V
    .locals 6
    .param p1, "fov"    # F

    .prologue
    .line 988
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 989
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    const/16 v3, 0x1701

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 990
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 991
    const v2, 0x3dcccccd    # 0.1f

    .line 992
    .local v2, "zNear":F
    const/high16 v1, 0x42c80000    # 100.0f

    .line 993
    .local v1, "zFar":F
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/RenderView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/RenderView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v0, p1, v3, v4, v5}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 994
    const/16 v3, 0x1700

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 995
    return-void
.end method

.method public setRootLayer(Lcom/liquable/nemo/util/crop/RootLayer;)V
    .locals 3
    .param p1, "layer"    # Lcom/liquable/nemo/util/crop/RootLayer;

    .prologue
    .line 998
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    if-eq v0, p1, :cond_0

    .line 999
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mListsDirty:Z

    .line 1001
    if-eqz p1, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    iget v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/liquable/nemo/util/crop/RenderView;->mViewHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/crop/RootLayer;->setSize(FF)V

    .line 1005
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 1008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mRootLayer:Lcom/liquable/nemo/util/crop/RootLayer;

    .line 1009
    sget-object v1, Lcom/liquable/nemo/util/crop/RenderView;->sLists:Lcom/liquable/nemo/util/crop/RenderView$Lists;

    monitor-enter v1

    .line 1010
    :try_start_0
    sget-object v0, Lcom/liquable/nemo/util/crop/RenderView;->sLists:Lcom/liquable/nemo/util/crop/RenderView$Lists;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/RenderView$Lists;->clear()V

    .line 1011
    monitor-exit v1

    .line 1012
    return-void

    .line 1011
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1016
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1017
    return-void
.end method

.method public unbindMixed()V
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 1022
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 1025
    const v1, 0x84c0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 1026
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/RenderView;->mBoundTexture:Lcom/liquable/nemo/util/crop/Texture;

    .line 1027
    return-void
.end method
