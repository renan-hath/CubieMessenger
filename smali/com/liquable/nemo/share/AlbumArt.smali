.class public Lcom/liquable/nemo/share/AlbumArt;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "AlbumArt.java"


# instance fields
.field private final audioInfo:Lcom/liquable/nemo/android/provider/AudioInfo;

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/android/provider/AudioInfo;)V
    .locals 1
    .param p1, "audioInfo"    # Lcom/liquable/nemo/android/provider/AudioInfo;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/liquable/nemo/share/AlbumArt;->audioInfo:Lcom/liquable/nemo/android/provider/AudioInfo;

    .line 19
    invoke-virtual {p1}, Lcom/liquable/nemo/android/provider/AudioInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/share/AlbumArt;->id:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-ne p0, p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 31
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 33
    check-cast v0, Lcom/liquable/nemo/share/AlbumArt;

    .line 34
    .local v0, "other":Lcom/liquable/nemo/share/AlbumArt;
    iget-object v3, p0, Lcom/liquable/nemo/share/AlbumArt;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 35
    iget-object v3, v0, Lcom/liquable/nemo/share/AlbumArt;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 36
    goto :goto_0

    .line 38
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/share/AlbumArt;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/share/AlbumArt;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 39
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0x1f

    .line 47
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 48
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/share/AlbumArt;->id:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 49
    return v1

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/share/AlbumArt;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/liquable/nemo/share/AlbumArt;->audioInfo:Lcom/liquable/nemo/android/provider/AudioInfo;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/android/provider/AudioInfo;->getAlbumArtUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 55
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 58
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/util/ImageUtils;->decodeAlbumArtToBitmap(Ljava/lang/String;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 64
    return-void
.end method
