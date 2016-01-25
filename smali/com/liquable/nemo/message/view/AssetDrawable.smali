.class public Lcom/liquable/nemo/message/view/AssetDrawable;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "AssetDrawable.java"


# instance fields
.field private heightInDp:I

.field private final resourceName:Ljava/lang/String;

.field private widthInDp:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AssetDrawable;->resourceName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "widthInDp"    # I
    .param p3, "heightInDp"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AssetDrawable;->resourceName:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/liquable/nemo/message/view/AssetDrawable;->widthInDp:I

    .line 28
    iput p3, p0, Lcom/liquable/nemo/message/view/AssetDrawable;->heightInDp:I

    .line 29
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    if-ne p0, p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 40
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/liquable/nemo/message/view/AssetDrawable;

    .line 43
    .local v0, "other":Lcom/liquable/nemo/message/view/AssetDrawable;
    iget-object v3, p0, Lcom/liquable/nemo/message/view/AssetDrawable;->resourceName:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/message/view/AssetDrawable;->resourceName:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 44
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0x1f

    .line 52
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 53
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AssetDrawable;->resourceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 54
    return v1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/message/view/AssetDrawable;->resourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 62
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 66
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :goto_0
    return-object v2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 66
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 72
    iget v0, p0, Lcom/liquable/nemo/message/view/AssetDrawable;->heightInDp:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 73
    iget v0, p0, Lcom/liquable/nemo/message/view/AssetDrawable;->widthInDp:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 74
    return-void
.end method
