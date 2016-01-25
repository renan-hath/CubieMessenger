.class public Lcom/aviary/android/feather/utils/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# static fields
.field private static final sTypeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/utils/TypefaceUtils;->sTypeCache:Ljava/util/HashMap;

    return-void
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "fontname"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v1, 0x0

    .line 15
    .local v1, "result":Landroid/graphics/Typeface;
    invoke-static {p1}, Lcom/aviary/android/feather/utils/TypefaceUtils;->getFromCache(Ljava/lang/String;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    .line 17
    .local v0, "cachedFont":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Typeface;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Landroid/graphics/Typeface;
    check-cast v1, Landroid/graphics/Typeface;

    .line 24
    .restart local v1    # "result":Landroid/graphics/Typeface;
    :goto_0
    return-object v1

    .line 20
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 21
    invoke-static {p1, v1}, Lcom/aviary/android/feather/utils/TypefaceUtils;->putIntoCache(Ljava/lang/String;Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method private static getFromCache(Ljava/lang/String;)Ljava/lang/ref/SoftReference;
    .locals 2
    .param p0, "fontname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    sget-object v1, Lcom/aviary/android/feather/utils/TypefaceUtils;->sTypeCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/aviary/android/feather/utils/TypefaceUtils;->sTypeCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static putIntoCache(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 3
    .param p0, "fontname"    # Ljava/lang/String;
    .param p1, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 34
    sget-object v1, Lcom/aviary/android/feather/utils/TypefaceUtils;->sTypeCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/aviary/android/feather/utils/TypefaceUtils;->sTypeCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    monitor-exit v1

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
