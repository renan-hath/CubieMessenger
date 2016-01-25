.class Lcom/liquable/nemo/profile/ProfileAccountIcon;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "ProfileAccountIcon.java"


# instance fields
.field private final iconExists:Z

.field private final lastUpdateTime:J

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "lastUpdateTime"    # J
    .param p4, "iconExists"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->uid:Ljava/lang/String;

    .line 25
    iput-wide p2, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->lastUpdateTime:J

    .line 26
    iput-boolean p4, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->iconExists:Z

    .line 27
    return-void
.end method


# virtual methods
.method public imageMissingResourceId()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0202a9

    return v0
.end method

.method public isIconExpired(J)Z
    .locals 2
    .param p1, "iconCreateTime"    # J

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->lastUpdateTime:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 44
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 46
    check-cast v0, Lcom/liquable/nemo/profile/ProfileAccountIcon;

    .line 47
    .local v0, "other":Lcom/liquable/nemo/profile/ProfileAccountIcon;
    iget-boolean v3, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->iconExists:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->iconExists:Z

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 48
    goto :goto_0

    .line 50
    :cond_3
    iget-wide v3, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->lastUpdateTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->lastUpdateTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->uid:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 54
    iget-object v3, v0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 58
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 8

    .prologue
    .line 65
    const/16 v0, 0x1f

    .line 66
    .local v0, "prime":I
    iget-boolean v2, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->iconExists:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 67
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->lastUpdateTime:J

    iget-wide v5, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->lastUpdateTime:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 68
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->uid:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    add-int v1, v3, v2

    .line 69
    return v1

    .line 66
    .end local v1    # "result":I
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0

    .line 68
    .restart local v1    # "result":I
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->uid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iget-boolean v2, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->iconExists:Z

    if-nez v2, :cond_0

    .line 75
    const/4 v2, 0x0

    .line 83
    :goto_0
    return-object v2

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->uid:Ljava/lang/String;

    invoke-static {v2}, Lcom/liquable/nemo/friend/model/Account;->createIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 79
    .local v0, "iconLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 80
    .local v1, "normalFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/liquable/nemo/profile/ProfileAccountIcon;->isIconExpired(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v3, p0, Lcom/liquable/nemo/profile/ProfileAccountIcon;->uid:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/liquable/nemo/friend/model/FriendManager;->downloadOrDeleteUserIcon(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 83
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 89
    return-void
.end method
