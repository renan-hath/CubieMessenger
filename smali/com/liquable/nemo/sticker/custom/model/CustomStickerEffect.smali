.class public Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
.super Ljava/lang/Object;
.source "CustomStickerEffect.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect$NoneCustomStickerEffect;
    }
.end annotation


# static fields
.field private static final CUSTOM_STICKER_EFFECT_KEYPATH:Ljava/lang/String; = "cubie/custom_sticker/effects/"

.field private static final serialVersionUID:J = -0x2735cd9904ac840cL


# instance fields
.field private final height:I

.field private final keyPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final offsetX:I

.field private final offsetY:I

.field private final s3endpoint:Ljava/lang/String;

.field private final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;IIII)V
    .locals 0
    .param p2, "s3endpoint"    # Ljava/lang/String;
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "keyPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->keyPaths:Ljava/util/List;

    .line 113
    iput-object p2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->s3endpoint:Ljava/lang/String;

    .line 114
    iput p3, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->offsetX:I

    .line 115
    iput p4, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->offsetY:I

    .line 116
    iput p5, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->width:I

    .line 117
    iput p6, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->height:I

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;IIIILcom/liquable/nemo/sticker/custom/model/CustomStickerEffect$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect$1;

    .prologue
    .line 25
    invoke-direct/range {p0 .. p6}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;-><init>(Ljava/util/List;Ljava/lang/String;IIII)V

    return-void
.end method

.method public static create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .locals 8
    .param p1, "s3endpoint"    # Ljava/lang/String;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IIII)",
            "Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "fileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "keyPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 70
    .local v7, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cubie/custom_sticker/effects/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v7    # "fileName":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    const-string/jumbo v2, "s3.amazonaws.com"

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;-><init>(Ljava/util/List;Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public static fromCustomSticker(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .locals 7
    .param p0, "customSticker"    # Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .prologue
    .line 82
    new-instance v0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectKeyPaths()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "s3.amazonaws.com"

    .line 84
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectOffsetX()I

    move-result v3

    .line 85
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectOffsetY()I

    move-result v4

    .line 86
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectWidth()I

    move-result v5

    .line 87
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectHeight()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;-><init>(Ljava/util/List;Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public static fromMessage(Lcom/liquable/nemo/message/model/CustomStickerMessage;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .locals 7
    .param p0, "customStickerMessage"    # Lcom/liquable/nemo/message/model/CustomStickerMessage;

    .prologue
    .line 91
    new-instance v0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectKeyPaths()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "s3.amazonaws.com"

    .line 93
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectOffsetX()I

    move-result v3

    .line 94
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectOffsetY()I

    move-result v4

    .line 95
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectWidth()I

    move-result v5

    .line 96
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/CustomStickerMessage;->getEffectHeight()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;-><init>(Ljava/util/List;Ljava/lang/String;IIII)V

    return-object v0
.end method


# virtual methods
.method public createAnimatedFiles(Landroid/content/Context;Ljava/io/File;II)Ljava/util/List;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tempCustomStickerFile"    # Ljava/io/File;
    .param p3, "stickerWidth"    # I
    .param p4, "stickerHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v4, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v3, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getKeyPaths()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "effectKeyPath":Ljava/lang/String;
    new-instance v8, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    invoke-direct {v8, v2}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v6

    .line 132
    .local v6, "localFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 133
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 134
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "effectKeyPath":Ljava/lang/String;
    .end local v6    # "localFile":Ljava/io/File;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getOffsetX()I

    move-result v7

    .line 139
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getOffsetY()I

    move-result v8

    .line 140
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getOffsetX()I

    move-result v9

    add-int/2addr v9, p3

    .line 141
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getOffsetY()I

    move-result v10

    add-int/2addr v10, p4

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 143
    .local v0, "backgroundRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getHeight()I

    move-result v10

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 144
    .local v5, "foregroundRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7, v0, v3, v5}, Lcom/liquable/nemo/util/ImageUtils;->createAnimatedImages(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    return-object v4
.end method

.method public createCoverImage(Landroid/content/Context;)Lcom/liquable/nemo/util/LoadableImage;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x80

    .line 153
    new-instance v0, Lcom/liquable/nemo/util/LocalKeyPathImage;

    new-instance v1, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    .line 154
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getFirstKeyPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, v3, v3}, Lcom/liquable/nemo/util/LocalKeyPathImage;-><init>(Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;II)V

    return-object v0
.end method

.method public getFirstKeyPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getKeyPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getKeyPaths()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->height:I

    return v0
.end method

.method public getKeyPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->keyPaths:Ljava/util/List;

    return-object v0
.end method

.method public getOffsetX()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->offsetY:I

    return v0
.end method

.method public getS3endpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->s3endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondKeyPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getKeyPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getKeyPaths()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->width:I

    return v0
.end method

.method public isAllAnimationFileCreated(I)Z
    .locals 1
    .param p1, "fileCount"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getKeyPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergedHeight(I)I
    .locals 1
    .param p1, "baseHeight"    # I

    .prologue
    .line 198
    iget v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->height:I

    return v0
.end method

.method public mergedWidth(I)I
    .locals 1
    .param p1, "baseWidth"    # I

    .prologue
    .line 202
    iget v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->width:I

    return v0
.end method
