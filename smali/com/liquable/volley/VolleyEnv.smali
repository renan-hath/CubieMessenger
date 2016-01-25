.class public final Lcom/liquable/volley/VolleyEnv;
.super Ljava/lang/Object;
.source "VolleyEnv.java"


# instance fields
.field private final imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

.field private final requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 40
    invoke-static {p1}, Lcom/liquable/volley/VolleyEnv;->calculateConservativeImageCacheByteSize(Landroid/app/Application;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/liquable/volley/VolleyEnv;-><init>(Landroid/app/Application;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;I)V
    .locals 9
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "maxImageCacheByteSize"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string/jumbo v4, "volley/0"

    .line 47
    .local v4, "userAgent":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 49
    .local v0, "info":Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 53
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_0

    .line 54
    new-instance v3, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v3}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 58
    .local v3, "stack":Lcom/android/volley/toolbox/HttpStack;
    :goto_1
    new-instance v1, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v1, v3}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 59
    .local v1, "network":Lcom/android/volley/Network;
    new-instance v5, Lcom/android/volley/RequestQueue;

    new-instance v6, Lcom/android/volley/toolbox/DiskBasedCache;

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const-string/jumbo v8, "volley"

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    const/high16 v8, 0x2000000

    invoke-direct {v6, v7, v8}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    invoke-direct {v5, v6, v1}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    iput-object v5, p0, Lcom/liquable/volley/VolleyEnv;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 63
    iget-object v5, p0, Lcom/liquable/volley/VolleyEnv;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v5}, Lcom/android/volley/RequestQueue;->start()V

    .line 65
    new-instance v5, Lcom/liquable/volley/toolbox/ImageLoader;

    iget-object v6, p0, Lcom/liquable/volley/VolleyEnv;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v7, Lcom/liquable/volley/toolbox/ImageLruCache;

    invoke-direct {v7, p2}, Lcom/liquable/volley/toolbox/ImageLruCache;-><init>(I)V

    invoke-direct {v5, v6, v7}, Lcom/liquable/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/liquable/volley/toolbox/ImageLoader$ImageCache;)V

    iput-object v5, p0, Lcom/liquable/volley/VolleyEnv;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    .line 66
    return-void

    .line 56
    .end local v1    # "network":Lcom/android/volley/Network;
    .end local v3    # "stack":Lcom/android/volley/toolbox/HttpStack;
    :cond_0
    new-instance v3, Lcom/android/volley/toolbox/HttpClientStack;

    invoke-static {v4}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    .restart local v3    # "stack":Lcom/android/volley/toolbox/HttpStack;
    goto :goto_1

    .line 50
    .end local v3    # "stack":Lcom/android/volley/toolbox/HttpStack;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static calculateConservativeImageCacheByteSize(Landroid/app/Application;)I
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 31
    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 32
    .local v0, "memClass":I
    const/high16 v1, 0x100000

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x9

    return v1
.end method


# virtual methods
.method public getImageLoader()Lcom/liquable/volley/toolbox/ImageLoader;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/volley/VolleyEnv;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/liquable/volley/VolleyEnv;->requestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method
