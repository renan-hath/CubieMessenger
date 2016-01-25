.class abstract Lcom/liquable/nemo/friend/model/AbstractAccountIcon;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "AbstractAccountIcon.java"


# instance fields
.field public final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->uid:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected fetchFromServer()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public imageMissingResourceId()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f0202a8

    return v0
.end method

.method public abstract isIconExists()Z
.end method

.method public abstract isIconExpired(J)Z
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 48
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;

    .line 51
    .local v0, "other":Lcom/liquable/nemo/friend/model/AbstractAccountIcon;
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->uid:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 52
    iget-object v3, v0, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 56
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 63
    const/16 v0, 0x1f

    .line 64
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 65
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->uid:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 66
    return v1

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->uid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x34

    .line 71
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->isIconExists()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v3, v5

    .line 96
    :cond_0
    :goto_0
    return-object v3

    .line 75
    :cond_1
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->uid:Ljava/lang/String;

    invoke-static {v6}, Lcom/liquable/nemo/friend/model/Account;->createIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 76
    .local v0, "iconLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v6, p0, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->uid:Ljava/lang/String;

    invoke-static {v6}, Lcom/liquable/nemo/friend/model/Account;->createSmallIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    .line 77
    .local v4, "smallIconLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v4, v6}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 78
    .local v2, "smallFile":Ljava/io/File;
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v6}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 80
    .local v1, "normalFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->fetchFromServer()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->isIconExpired(J)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    :cond_2
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v7, p0, Lcom/liquable/nemo/friend/model/AbstractAccountIcon;->uid:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, p1, v7, v8}, Lcom/liquable/nemo/friend/model/FriendManager;->downloadOrDeleteUserIcon(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 84
    :cond_3
    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 86
    .local v3, "smallIcon":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {p1, v9}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 88
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {p1, v9}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 93
    .end local v3    # "smallIcon":Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 94
    invoke-static {p1, v0, v4}, Lcom/liquable/nemo/util/ImageUtils;->saveSmallUserIcon(Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_5
    move-object v3, v5

    .line 96
    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 102
    return-void
.end method
