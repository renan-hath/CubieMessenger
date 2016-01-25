.class Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;
.super Ljava/lang/Object;
.source "ManageStickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/ManageStickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CategoryItem"
.end annotation


# instance fields
.field final categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

.field private isSelected:Z

.field final packageDto:Lcom/liquable/nemo/model/sticker/StickerPackageDto;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/model/sticker/StickerCategoryDto;Lcom/liquable/nemo/model/sticker/StickerPackageDto;Z)V
    .locals 0
    .param p1, "categoryDto"    # Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    .param p2, "packageDto"    # Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .param p3, "isSelected"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .line 40
    iput-object p2, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->packageDto:Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 41
    iput-boolean p3, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->isSelected:Z

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->isSelected:Z

    return v0
.end method


# virtual methods
.method public createThumbnail()Lcom/liquable/nemo/util/LoadableImage;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v1, Lcom/liquable/nemo/sticker/StickerThumbnail;

    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->packageDto:Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getStickers()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerDto;

    invoke-direct {v1, v0}, Lcom/liquable/nemo/sticker/StickerThumbnail;-><init>(Lcom/liquable/nemo/model/sticker/StickerDto;)V

    move-object v0, v1

    .line 48
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/sticker/StickerCategoryThumbnail;-><init>(Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p0, p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 61
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;

    .line 64
    .local v0, "other":Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;
    iget-object v3, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    if-nez v3, :cond_4

    .line 65
    iget-object v3, v0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    if-eqz v3, :cond_0

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 69
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 76
    const/16 v0, 0x1f

    .line 77
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 78
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 79
    return v1

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public final isSelected()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->isSelected:Z

    return v0
.end method

.method public final setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->isSelected:Z

    .line 88
    return-void
.end method
