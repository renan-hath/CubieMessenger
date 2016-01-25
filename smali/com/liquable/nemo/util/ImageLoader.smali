.class public Lcom/liquable/nemo/util/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/liquable/nemo/ILifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;,
        Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;,
        Lcom/liquable/nemo/util/ImageLoader$LoadingThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRACTION:Lorg/apache/commons/lang3/math/Fraction;

.field private static final IMAGE_LOADED:I = 0x2

.field private static final NOT_EXISTS_BITMAP:Landroid/graphics/Bitmap;

.field private static final REQUEST_IMAGE_LOADING:I = 0x1

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final bitmapDrawableCaches:Lcom/liquable/nemo/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/LruCache",
            "<",
            "Lcom/liquable/nemo/util/LoadableImage;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final diskBitmapCache:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;

.field private final handler:Landroid/os/Handler;

.field private loadingRequested:Z

.field private final loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/liquable/nemo/util/LoadableImage;",
            ">;"
        }
    .end annotation
.end field

.field private loadingThread:Lcom/liquable/nemo/util/ImageLoader$LoadingThread;

.field private final name:Ljava/lang/String;

.field private volatile paused:Z

.field private final reusableBitmaps:Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;

.field private volatile showImageImmediatelyAfterLoaded:Z

.field private final threadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 281
    const/16 v0, 0x9

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/ImageLoader;->DEFAULT_FRACTION:Lorg/apache/commons/lang3/math/Fraction;

    .line 283
    const-class v0, Lcom/liquable/nemo/util/ImageLoader;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/ImageLoader;->logger:Lcom/liquable/nemo/util/Logger;

    .line 289
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/util/ImageLoader;->NOT_EXISTS_BITMAP:Landroid/graphics/Bitmap;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lorg/apache/commons/lang3/math/Fraction;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fraction"    # Lorg/apache/commons/lang3/math/Fraction;

    .prologue
    .line 322
    invoke-static {p1}, Lcom/liquable/nemo/util/ImageLoader;->generateThreadName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/liquable/nemo/util/ImageLoader;->generateDiskCacheName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/liquable/nemo/util/ImageLoader;-><init>(Landroid/content/Context;Lorg/apache/commons/lang3/math/Fraction;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/apache/commons/lang3/math/Fraction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "memRate"    # Lorg/apache/commons/lang3/math/Fraction;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "diskCacheDirName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance v3, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;-><init>(Lcom/liquable/nemo/util/ImageLoader$1;)V

    iput-object v3, p0, Lcom/liquable/nemo/util/ImageLoader;->reusableBitmaps:Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;

    .line 303
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 305
    iput-boolean v5, p0, Lcom/liquable/nemo/util/ImageLoader;->paused:Z

    .line 307
    iput-boolean v5, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingRequested:Z

    .line 309
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/liquable/nemo/util/ImageLoader;->handler:Landroid/os/Handler;

    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/util/ImageLoader;->name:Ljava/lang/String;

    .line 330
    iput-object p3, p0, Lcom/liquable/nemo/util/ImageLoader;->threadName:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/util/ImageLoader;->context:Landroid/content/Context;

    .line 332
    const-string/jumbo v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 333
    .local v2, "memClass":I
    const/high16 v3, 0x100000

    mul-int/2addr v3, v2

    invoke-virtual {p2}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p2}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v4

    div-int v1, v3, v4

    .line 334
    .local v1, "maxSize":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "memory cache:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/liquable/nemo/util/ImageLoader;->debug(Ljava/lang/String;)V

    .line 335
    new-instance v3, Lcom/liquable/nemo/util/ImageLoader$1;

    invoke-direct {v3, p0, v1}, Lcom/liquable/nemo/util/ImageLoader$1;-><init>(Lcom/liquable/nemo/util/ImageLoader;I)V

    iput-object v3, p0, Lcom/liquable/nemo/util/ImageLoader;->bitmapDrawableCaches:Lcom/liquable/nemo/util/LruCache;

    .line 367
    new-instance v0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;

    invoke-direct {v0, p1, p4}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 368
    .local v0, "cacheParams":Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->diskCacheEnabled:Z

    .line 371
    const/high16 v3, 0xa00000

    iput v3, v0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->diskCacheSize:I

    .line 372
    iput-boolean v5, v0, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;->initDiskCacheOnCreate:Z

    .line 374
    new-instance v3, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;

    invoke-direct {v3, v0, p0}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;-><init>(Lcom/liquable/nemo/util/bitmap/DiskBitmapCache$ImageCacheParams;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v3, p0, Lcom/liquable/nemo/util/ImageLoader;->diskBitmapCache:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;

    .line 375
    new-instance v3, Lcom/liquable/nemo/util/ImageLoader$2;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/util/ImageLoader$2;-><init>(Lcom/liquable/nemo/util/ImageLoader;)V

    new-array v4, v5, [Ljava/lang/Void;

    .line 381
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/ImageLoader$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 382
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/util/ImageLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/util/ImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/util/ImageLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/liquable/nemo/util/ImageLoader;->paused:Z

    return v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/util/ImageLoader;)Lcom/liquable/nemo/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->bitmapDrawableCaches:Lcom/liquable/nemo/util/LruCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/util/ImageLoader;)Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->diskBitmapCache:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/util/ImageLoader;Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Lcom/liquable/nemo/util/LoadableImage;
    .param p3, "x3"    # Landroid/graphics/Bitmap;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/util/ImageLoader;->addIntoMemoryCache(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/liquable/nemo/util/ImageLoader;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/util/ImageLoader;)Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->reusableBitmaps:Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;

    return-object v0
.end method

.method private addIntoMemoryCache(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "loadableImage"    # Lcom/liquable/nemo/util/LoadableImage;
    .param p3, "bitmapOrNull"    # Landroid/graphics/Bitmap;

    .prologue
    .line 387
    iget-boolean v1, p0, Lcom/liquable/nemo/util/ImageLoader;->paused:Z

    if-eqz v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/util/ImageLoader;->createBitmapDrawable(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 394
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->bitmapDrawableCaches:Lcom/liquable/nemo/util/LruCache;

    invoke-virtual {v1, p2, v0}, Lcom/liquable/nemo/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-boolean v1, p0, Lcom/liquable/nemo/util/ImageLoader;->showImageImmediatelyAfterLoaded:Z

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private createBitmapDrawable(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "loadableImage"    # Lcom/liquable/nemo/util/LoadableImage;
    .param p3, "bitmapOrNull"    # Landroid/graphics/Bitmap;

    .prologue
    .line 419
    if-nez p3, :cond_0

    .line 420
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/util/ImageLoader;->NOT_EXISTS_BITMAP:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 430
    :goto_0
    return-object v0

    .line 423
    :cond_0
    instance-of v1, p1, Lcom/liquable/nemo/util/bitmap/RecyclingImageView;

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 425
    new-instance v0, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;

    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 427
    .local v0, "recyclingBitmapDrawable":Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;->setIsCached(Z)V

    goto :goto_0

    .line 430
    .end local v0    # "recyclingBitmapDrawable":Lcom/liquable/nemo/util/bitmap/RecyclingBitmapDrawable;
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 2
    .param p0, "activity"    # Lcom/liquable/nemo/BaseActivity;

    .prologue
    .line 235
    new-instance v0, Lcom/liquable/nemo/util/ImageLoader;

    sget-object v1, Lcom/liquable/nemo/util/ImageLoader;->DEFAULT_FRACTION:Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/util/ImageLoader;-><init>(Landroid/app/Activity;Lorg/apache/commons/lang3/math/Fraction;)V

    .line 237
    .local v0, "imageLoader":Lcom/liquable/nemo/util/ImageLoader;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/BaseActivity;->registerManagedLifecycleListener(Lcom/liquable/nemo/ILifecycleListener;)V

    .line 238
    sget-object v1, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->INSTANCE:Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->add(Lcom/liquable/nemo/util/ImageLoader;)V

    .line 240
    return-object v0
.end method

.method public static createImageLoader(Lcom/liquable/nemo/BaseActivity;Lorg/apache/commons/lang3/math/Fraction;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 2
    .param p0, "activity"    # Lcom/liquable/nemo/BaseActivity;
    .param p1, "memRate"    # Lorg/apache/commons/lang3/math/Fraction;

    .prologue
    .line 250
    new-instance v0, Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/util/ImageLoader;-><init>(Landroid/app/Activity;Lorg/apache/commons/lang3/math/Fraction;)V

    .line 251
    .local v0, "imageLoader":Lcom/liquable/nemo/util/ImageLoader;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/BaseActivity;->registerManagedLifecycleListener(Lcom/liquable/nemo/ILifecycleListener;)V

    .line 253
    sget-object v1, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->INSTANCE:Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->add(Lcom/liquable/nemo/util/ImageLoader;)V

    .line 255
    return-object v0
.end method

.method public static createImageLoader(Lcom/liquable/nemo/BaseFragmentActivity;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 2
    .param p0, "activity"    # Lcom/liquable/nemo/BaseFragmentActivity;

    .prologue
    .line 259
    new-instance v0, Lcom/liquable/nemo/util/ImageLoader;

    sget-object v1, Lcom/liquable/nemo/util/ImageLoader;->DEFAULT_FRACTION:Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/util/ImageLoader;-><init>(Landroid/app/Activity;Lorg/apache/commons/lang3/math/Fraction;)V

    .line 260
    .local v0, "imageLoader":Lcom/liquable/nemo/util/ImageLoader;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/BaseFragmentActivity;->registerManagedLifecycleListener(Lcom/liquable/nemo/ILifecycleListener;)V

    .line 262
    sget-object v1, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->INSTANCE:Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->add(Lcom/liquable/nemo/util/ImageLoader;)V

    .line 264
    return-object v0
.end method

.method public static createUnmanagedImageLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "diskCacheDirName"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Lcom/liquable/nemo/util/ImageLoader;

    sget-object v1, Lcom/liquable/nemo/util/ImageLoader;->DEFAULT_FRACTION:Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/liquable/nemo/util/ImageLoader;-><init>(Landroid/content/Context;Lorg/apache/commons/lang3/math/Fraction;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 435
    sget-object v0, Lcom/liquable/nemo/util/ImageLoader;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/liquable/nemo/util/ImageLoader;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method private static generateDiskCacheName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateThreadName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "image_loader_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadCachedImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)Z
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "loadableImage"    # Lcom/liquable/nemo/util/LoadableImage;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 470
    iget-object v3, p0, Lcom/liquable/nemo/util/ImageLoader;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 472
    .local v1, "density":F
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 473
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 475
    invoke-interface {p2, v1, p1}, Lcom/liquable/nemo/util/LoadableImage;->predictSize(FLandroid/view/View;)V

    .line 476
    iget-object v3, p0, Lcom/liquable/nemo/util/ImageLoader;->bitmapDrawableCaches:Lcom/liquable/nemo/util/LruCache;

    invoke-virtual {v3, p2}, Lcom/liquable/nemo/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 478
    .local v0, "cached":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_3

    .line 479
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 480
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/util/ImageLoader;->NOT_EXISTS_BITMAP:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_2

    .line 481
    invoke-interface {p2}, Lcom/liquable/nemo/util/LoadableImage;->imageMissingResourceId()I

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    invoke-interface {p2}, Lcom/liquable/nemo/util/LoadableImage;->imageMissingResourceId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 489
    :goto_0
    const/4 v2, 0x1

    .line 497
    :cond_0
    :goto_1
    return v2

    .line 484
    :cond_1
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 491
    :cond_3
    invoke-interface {p2}, Lcom/liquable/nemo/util/LoadableImage;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 492
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/ImageLoader;->setLoadingIfNecessary(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_1

    .line 493
    :cond_4
    invoke-interface {p2}, Lcom/liquable/nemo/util/LoadableImage;->clearViewIfNotYetLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 495
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private processLoadedImages()V
    .locals 5

    .prologue
    .line 577
    iget-object v4, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 578
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 579
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 580
    .local v3, "view":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/LoadableImage;

    .line 581
    .local v1, "loadableImage":Lcom/liquable/nemo/util/LoadableImage;
    invoke-direct {p0, v3, v1}, Lcom/liquable/nemo/util/ImageLoader;->loadCachedImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)Z

    move-result v2

    .line 582
    .local v2, "loaded":Z
    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/liquable/nemo/util/LoadableImage;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 586
    .end local v1    # "loadableImage":Lcom/liquable/nemo/util/LoadableImage;
    .end local v2    # "loaded":Z
    .end local v3    # "view":Landroid/widget/ImageView;
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 587
    invoke-direct {p0}, Lcom/liquable/nemo/util/ImageLoader;->requestLoading()V

    .line 589
    :cond_3
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 616
    iget-boolean v0, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingRequested:Z

    if-nez v0, :cond_0

    .line 617
    iput-boolean v1, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingRequested:Z

    .line 618
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 620
    :cond_0
    return-void
.end method

.method private setLoadingIfNecessary(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "loadableImage"    # Lcom/liquable/nemo/util/LoadableImage;

    .prologue
    .line 623
    invoke-interface {p2}, Lcom/liquable/nemo/util/LoadableImage;->showLoadingAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    const v1, 0x7f020507

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 625
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 626
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 630
    .end local v0    # "animation":Landroid/graphics/drawable/AnimationDrawable;
    :goto_0
    return-void

    .line 628
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 406
    const-string/jumbo v0, "clearCache"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/ImageLoader;->debug(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->bitmapDrawableCaches:Lcom/liquable/nemo/util/LruCache;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/LruCache;->evictAll()V

    .line 408
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->reusableBitmaps:Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->clear()V

    .line 409
    return-void
.end method

.method public clearCache(D)V
    .locals 5
    .param p1, "removeRatio"    # D

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clearCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/ImageLoader;->debug(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->bitmapDrawableCaches:Lcom/liquable/nemo/util/LruCache;

    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->bitmapDrawableCaches:Lcom/liquable/nemo/util/LruCache;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/LruCache;->maxSize()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, p1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/LruCache;->trimToSize(I)V

    .line 414
    return-void
.end method

.method public forceReloadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "loadableImage"    # Lcom/liquable/nemo/util/LoadableImage;

    .prologue
    .line 439
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 441
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 445
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 447
    :pswitch_0
    iput-boolean v1, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingRequested:Z

    .line 448
    iget-boolean v1, p0, Lcom/liquable/nemo/util/ImageLoader;->paused:Z

    if-nez v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingThread:Lcom/liquable/nemo/util/ImageLoader$LoadingThread;

    if-nez v1, :cond_1

    .line 450
    new-instance v1, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;

    iget-object v2, p0, Lcom/liquable/nemo/util/ImageLoader;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/liquable/nemo/util/ImageLoader;->threadName:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;-><init>(Lcom/liquable/nemo/util/ImageLoader;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingThread:Lcom/liquable/nemo/util/ImageLoader$LoadingThread;

    .line 451
    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingThread:Lcom/liquable/nemo/util/ImageLoader$LoadingThread;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->start()V

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingThread:Lcom/liquable/nemo/util/ImageLoader$LoadingThread;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->requestLoading()V

    goto :goto_0

    .line 457
    :pswitch_1
    iget-boolean v1, p0, Lcom/liquable/nemo/util/ImageLoader;->paused:Z

    if-nez v1, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/liquable/nemo/util/ImageLoader;->processLoadedImages()V

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isLoadProgressly()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/liquable/nemo/util/ImageLoader;->showImageImmediatelyAfterLoaded:Z

    return v0
.end method

.method public loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "loadableImage"    # Lcom/liquable/nemo/util/LoadableImage;

    .prologue
    .line 502
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/ImageLoader;->loadCachedImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)Z

    move-result v0

    .line 503
    .local v0, "loaded":Z
    if-eqz v0, :cond_1

    .line 504
    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-boolean v1, p0, Lcom/liquable/nemo/util/ImageLoader;->paused:Z

    if-nez v1, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/liquable/nemo/util/ImageLoader;->requestLoading()V

    goto :goto_0
.end method

.method public loadImageFromCacheOnly(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "loadableImage"    # Lcom/liquable/nemo/util/LoadableImage;

    .prologue
    const/4 v3, 0x0

    .line 514
    iget-object v2, p0, Lcom/liquable/nemo/util/ImageLoader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 516
    .local v1, "density":F
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 517
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 519
    invoke-interface {p2, v1, p1}, Lcom/liquable/nemo/util/LoadableImage;->predictSize(FLandroid/view/View;)V

    .line 520
    iget-object v2, p0, Lcom/liquable/nemo/util/ImageLoader;->bitmapDrawableCaches:Lcom/liquable/nemo/util/LruCache;

    invoke-virtual {v2, p2}, Lcom/liquable/nemo/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 521
    .local v0, "cached":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/util/ImageLoader;->NOT_EXISTS_BITMAP:Landroid/graphics/Bitmap;

    if-eq v2, v3, :cond_0

    .line 522
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 528
    const-string/jumbo v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/ImageLoader;->debug(Ljava/lang/String;)V

    .line 529
    sget-object v0, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->INSTANCE:Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/util/ImageLoader$ManagedImageLoaders;->remove(Lcom/liquable/nemo/util/ImageLoader;)V

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/ImageLoader;->paused:Z

    .line 532
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingThread:Lcom/liquable/nemo/util/ImageLoader$LoadingThread;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingThread:Lcom/liquable/nemo/util/ImageLoader$LoadingThread;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/ImageLoader$LoadingThread;->quit()Z

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingThread:Lcom/liquable/nemo/util/ImageLoader$LoadingThread;

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 537
    invoke-virtual {p0}, Lcom/liquable/nemo/util/ImageLoader;->clearCache()V

    .line 540
    new-instance v0, Lcom/liquable/nemo/util/ImageLoader$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/util/ImageLoader$3;-><init>(Lcom/liquable/nemo/util/ImageLoader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 546
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/ImageLoader$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 547
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/util/ImageLoader;->paused:Z

    .line 555
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/util/ImageLoader;->paused:Z

    .line 560
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/liquable/nemo/util/ImageLoader;->requestLoading()V

    .line 563
    :cond_0
    return-void
.end method

.method public pollReusedBitmap(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->reusableBitmaps:Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->poll(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public reduceMemoryUsage()V
    .locals 2

    .prologue
    .line 592
    invoke-static {}, Lcom/liquable/nemo/util/BuildUtils;->isSamsung()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const-string/jumbo v0, "reduceMemoryUsage for Samsung devices"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/ImageLoader;->debug(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/liquable/nemo/util/ImageLoader;->clearCache()V

    .line 596
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 597
    const-string/jumbo v0, "reduceMemoryUsage for < Honeycomb"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/ImageLoader;->debug(Ljava/lang/String;)V

    .line 599
    const-wide v0, 0x3fe999999999999aL    # 0.8

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/util/ImageLoader;->clearCache(D)V

    .line 604
    :goto_0
    return-void

    .line 601
    :cond_1
    const-string/jumbo v0, "reduceMemoryUsage"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/ImageLoader;->debug(Ljava/lang/String;)V

    .line 602
    const-wide v0, 0x3fd3333333333333L    # 0.3

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/util/ImageLoader;->clearCache(D)V

    goto :goto_0
.end method

.method public remove(Lcom/liquable/nemo/util/LoadableImage;)V
    .locals 2
    .param p1, "loadableImage"    # Lcom/liquable/nemo/util/LoadableImage;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->bitmapDrawableCaches:Lcom/liquable/nemo/util/LruCache;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/liquable/nemo/util/LoadableImage;->getDiskCacheStrategy()Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;->NONE:Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    if-eq v0, v1, :cond_0

    .line 611
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader;->diskBitmapCache:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;

    invoke-interface {p1}, Lcom/liquable/nemo/util/LoadableImage;->getDiskCacheStrategy()Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->removeBitmap(Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;)Z

    .line 613
    :cond_0
    return-void
.end method

.method public setLoadProgressly(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 637
    iput-boolean p1, p0, Lcom/liquable/nemo/util/ImageLoader;->showImageImmediatelyAfterLoaded:Z

    .line 638
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cachedBitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->bitmapDrawableCaches:Lcom/liquable/nemo/util/LruCache;

    .line 643
    invoke-virtual {v1}, Lcom/liquable/nemo/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bytes, reusableBitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->reusableBitmaps:Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;

    .line 645
    invoke-virtual {v1}, Lcom/liquable/nemo/util/ImageLoader$ReusableBitmaps;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", loadingTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/ImageLoader;->loadingTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 647
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
