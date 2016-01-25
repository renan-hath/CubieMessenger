.class public Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
.super Ljava/lang/Object;
.source "CustomSticker.java"


# static fields
.field private static final CUSTOM_STICKER_BASE_KEYPATH:Ljava/lang/String; = "cubie/custom_sticker/%s/%s_0.%s"

.field public static final THUMB_WIDTH_IN_DP:I = 0x40

.field public static final WIDTH_IN_DP:I = 0x80

.field public static final WIDTH_IN_PIXEL:I = 0x100


# instance fields
.field private final customStickerCode:Ljava/lang/String;

.field private final effectHeight:I

.field private final effectKeyPath1:Ljava/lang/String;

.field private final effectKeyPath2:Ljava/lang/String;

.field private final effectOffsetX:I

.field private final effectOffsetY:I

.field private final effectWidth:I

.field private final height:I

.field private final id:Ljava/lang/Long;

.field private final keyPath:Ljava/lang/String;

.field private final s3endpoint:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "customStickerCode"    # Ljava/lang/String;
    .param p3, "keyPath"    # Ljava/lang/String;
    .param p4, "s3endpoint"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "effectKeyPath1"    # Ljava/lang/String;
    .param p8, "effectKeyPath2"    # Ljava/lang/String;
    .param p9, "effectOffsetX"    # I
    .param p10, "effectOffsetY"    # I
    .param p11, "effectWidth"    # I
    .param p12, "effectHeight"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->id:Ljava/lang/Long;

    .line 103
    iput-object p2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->customStickerCode:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->keyPath:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->s3endpoint:Ljava/lang/String;

    .line 106
    iput p5, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->width:I

    .line 107
    iput p6, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->height:I

    .line 108
    iput-object p7, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectKeyPath1:Ljava/lang/String;

    .line 109
    iput-object p8, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectKeyPath2:Ljava/lang/String;

    .line 110
    iput p9, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectOffsetX:I

    .line 111
    iput p10, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectOffsetY:I

    .line 112
    iput p11, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectWidth:I

    .line 113
    iput p12, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectHeight:I

    .line 114
    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;Landroid/graphics/Bitmap$CompressFormat;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    .locals 15
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "customStickerEffect"    # Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 21
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 22
    const-string/jumbo v14, "jpg"

    .line 26
    .local v14, "suffix":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "customStickerCode":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "cubie/custom_sticker/%s/%s_0.%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v14, v5, v6

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "keyPath":Ljava/lang/String;
    new-instance v1, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    const/4 v2, 0x0

    const-string/jumbo v5, "s3.amazonaws.com"

    const/16 v6, 0x100

    const/16 v7, 0x100

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getFirstKeyPath()Ljava/lang/String;

    move-result-object v8

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getSecondKeyPath()Ljava/lang/String;

    move-result-object v9

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getOffsetX()I

    move-result v10

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->getOffsetY()I

    move-result v11

    const/16 v12, 0x100

    .line 42
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->mergedWidth(I)I

    move-result v12

    const/16 v13, 0x100

    .line 43
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->mergedHeight(I)I

    move-result v13

    invoke-direct/range {v1 .. v13}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v1

    .line 24
    .end local v3    # "customStickerCode":Ljava/lang/String;
    .end local v4    # "keyPath":Ljava/lang/String;
    .end local v14    # "suffix":Ljava/lang/String;
    :cond_0
    const-string/jumbo v14, "png"

    .restart local v14    # "suffix":Ljava/lang/String;
    goto :goto_0
.end method

.method public static createAnimatedKeyPaths(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .param p0, "keyPath"    # Ljava/lang/String;
    .param p1, "effectCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, "localKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/LocalKeyPath;>;"
    const/4 v4, 0x0

    const-string/jumbo v5, "."

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "prefix":Ljava/lang/String;
    const-string/jumbo v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "suffix":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 52
    new-instance v4, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    if-ne p0, p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 121
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 125
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 127
    check-cast v0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .line 128
    .local v0, "other":Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->id:Ljava/lang/Long;

    if-nez v3, :cond_4

    .line 129
    iget-object v3, v0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->id:Ljava/lang/Long;

    if-eqz v3, :cond_0

    move v1, v2

    .line 130
    goto :goto_0

    .line 132
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->id:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 133
    goto :goto_0
.end method

.method public getAnimatedKeyPaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->keyPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->getEffectKeyPaths()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->createAnimatedKeyPaths(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCustomStickerCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->customStickerCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectHeight()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectHeight:I

    return v0
.end method

.method public getEffectKeyPath1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectKeyPath1:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectKeyPath2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectKeyPath2:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectKeyPaths()Ljava/util/List;
    .locals 2
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
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "keyPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectKeyPath1:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectKeyPath1:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectKeyPath2:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectKeyPath2:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1
    return-object v0
.end method

.method public getEffectOffsetX()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectOffsetX:I

    return v0
.end method

.method public getEffectOffsetY()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectOffsetY:I

    return v0
.end method

.method public getEffectWidth()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->effectWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->height:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getKeyPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->keyPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->keyPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemoteKeyPath(I)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->s3endpoint:Ljava/lang/String;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->keyPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createRegionKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getS3endpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->s3endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 6

    .prologue
    .line 206
    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->keyPath:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->keyPath:Ljava/lang/String;

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->keyPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->keyPath:Ljava/lang/String;

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "suffix":Ljava/lang/String;
    new-instance v2, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_thumb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 217
    const/16 v0, 0x1f

    .line 218
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 219
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->id:Ljava/lang/Long;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 220
    return v1

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_0
.end method
