.class public Lcom/aviary/android/feather/effects/CropPanel;
.super Lcom/aviary/android/feather/effects/AbstractContentPanel;
.source "CropPanel.java"

# interfaces
.implements Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;
.implements Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;,
        Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;
    }
.end annotation


# instance fields
.field isChecked:Z

.field mCropNames:[Ljava/lang/String;

.field mCropValues:[Ljava/lang/String;

.field mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

.field private mHasScrolled:Z

.field mIsPortrait:Z

.field mNonInvertOptions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedPosition:I

.field mStrictPolicy:Z


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V
    .locals 2
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .param p2, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 42
    iput v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mSelectedPosition:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/CropPanel;->mIsPortrait:Z

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel;->mNonInvertOptions:Ljava/util/HashSet;

    .line 48
    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mStrictPolicy:Z

    .line 51
    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->isChecked:Z

    .line 59
    return-void
.end method

.method private calculateAspectRatio(IZ)D
    .locals 11
    .param p1, "position"    # I
    .param p2, "inverted"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 157
    iget-object v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->mCropValues:[Ljava/lang/String;

    aget-object v4, v6, p1

    .line 158
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "values":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 161
    if-eqz p2, :cond_3

    aget-object v6, v5, v10

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "aspectx":I
    if-eqz p2, :cond_4

    aget-object v6, v5, v9

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 164
    .local v1, "aspecty":I
    if-ne v0, v8, :cond_0

    .line 165
    if-eqz p2, :cond_5

    iget-object v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 168
    :cond_0
    :goto_2
    if-ne v1, v8, :cond_1

    .line 169
    if-eqz p2, :cond_6

    iget-object v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 172
    :cond_1
    :goto_3
    const-wide/16 v2, 0x0

    .line 174
    .local v2, "ratio":D
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 175
    int-to-double v6, v0

    int-to-double v8, v1

    div-double v2, v6, v8

    .line 179
    .end local v0    # "aspectx":I
    .end local v1    # "aspecty":I
    .end local v2    # "ratio":D
    :cond_2
    :goto_4
    return-wide v2

    .line 161
    :cond_3
    aget-object v6, v5, v9

    goto :goto_0

    .line 162
    .restart local v0    # "aspectx":I
    :cond_4
    aget-object v6, v5, v10

    goto :goto_1

    .line 165
    .restart local v1    # "aspecty":I
    :cond_5
    iget-object v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_2

    .line 169
    :cond_6
    iget-object v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_3

    .line 179
    .end local v0    # "aspectx":I
    .end local v1    # "aspecty":I
    :cond_7
    const-wide/16 v2, 0x0

    goto :goto_4
.end method

.method private createCropView(DZ)V
    .locals 2
    .param p1, "aspectRatio"    # D
    .param p3, "isFixed"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/CropImageView;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/aviary/android/feather/widget/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;DZ)V

    .line 198
    return-void
.end method

.method private invertRatios([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_2

    .line 65
    aget-object v5, p1, v0

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    aget-object v4, p1, v0

    .line 67
    .local v4, "temp":Ljava/lang/String;
    const-string/jumbo v5, "[:]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "splitted":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "mNewOptionName":Ljava/lang/String;
    aput-object v1, p1, v0

    .line 72
    .end local v1    # "mNewOptionName":Ljava/lang/String;
    .end local v3    # "splitted":[Ljava/lang/String;
    .end local v4    # "temp":Ljava/lang/String;
    :cond_0
    aget-object v5, p2, v0

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    aget-object v4, p2, v0

    .line 74
    .restart local v4    # "temp":Ljava/lang/String;
    const-string/jumbo v5, "[:]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 75
    .restart local v3    # "splitted":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "mNewOptionValue":Ljava/lang/String;
    aput-object v2, p2, v0

    .line 63
    .end local v2    # "mNewOptionValue":Ljava/lang/String;
    .end local v3    # "splitted":[Ljava/lang/String;
    .end local v4    # "temp":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_2
    return-void
.end method

.method private populateInvertOptions(Ljava/util/HashSet;[Ljava/lang/String;)V
    .locals 6
    .param p2, "cropValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "options":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_1

    .line 83
    aget-object v1, p2, v0

    .line 84
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "values":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 86
    .local v3, "x":I
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 88
    .local v4, "y":I
    if-ne v3, v4, :cond_0

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    return-void
.end method

.method private setCustomRatio(DZ)V
    .locals 1
    .param p1, "aspectRatio"    # D
    .param p3, "isFixed"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aviary/android/feather/widget/CropImageView;->setAspectRatio(DZ)V

    .line 202
    return-void
.end method


# virtual methods
.method protected generateContentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 271
    sget v1, Lcom/aviary/android/feather/R$layout;->aviary_content_crop:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/CropPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aviary/android/feather/library/utils/ScreenUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    :cond_0
    return-object v0
.end method

.method protected generateOptionView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 287
    sget v0, Lcom/aviary/android/feather/R$layout;->aviary_panel_crop:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onActivate()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onActivate()V

    .line 142
    new-array v5, v4, [Lcom/aviary/android/feather/widget/VibrationWidget;

    iget-object v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    aput-object v6, v5, v3

    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/effects/CropPanel;->disableHapticIsNecessary([Lcom/aviary/android/feather/widget/VibrationWidget;)V

    .line 144
    iget-object v5, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v5, p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->setOnItemsScrollListener(Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;)V

    .line 145
    iget-object v5, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v5, p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->setOnItemClickListener(Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;)V

    .line 147
    iget-object v5, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v5}, Lcom/aviary/android/feather/widget/AviaryGallery;->getSelectedItemPosition()I

    move-result v0

    .line 148
    .local v0, "position":I
    invoke-direct {p0, v0, v3}, Lcom/aviary/android/feather/effects/CropPanel;->calculateAspectRatio(IZ)D

    move-result-wide v1

    .line 150
    .local v1, "ratio":D
    const-wide/16 v5, 0x0

    cmpl-double v5, v1, v5

    if-eqz v5, :cond_0

    move v3, v4

    :cond_0
    invoke-direct {p0, v1, v2, v3}, Lcom/aviary/android/feather/effects/CropPanel;->createCropView(DZ)V

    .line 151
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/CropPanel;->contentReady()V

    .line 152
    invoke-virtual {p0, v4}, Lcom/aviary/android/feather/effects/CropPanel;->setIsChanged(Z)V

    .line 153
    return-void
.end method

.method public onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/CropPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v1

    const-class v2, Lcom/aviary/android/feather/library/services/ConfigService;

    invoke-interface {v1, v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/services/ConfigService;

    .line 99
    .local v0, "config":Lcom/aviary/android/feather/library/services/ConfigService;
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->CROP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-static {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mFilter:Lcom/aviary/android/feather/headless/filters/IFilter;

    .line 101
    sget v1, Lcom/aviary/android/feather/R$array;->aviary_crop_labels:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mCropNames:[Ljava/lang/String;

    .line 102
    sget v1, Lcom/aviary/android/feather/R$array;->aviary_crop_values:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mCropValues:[Ljava/lang/String;

    .line 103
    sget v1, Lcom/aviary/android/feather/R$integer;->aviary_crop_invert_policy:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mStrictPolicy:Z

    .line 105
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mStrictPolicy:Z

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 107
    iput-boolean v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->mIsPortrait:Z

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mNonInvertOptions:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/CropPanel;->mCropValues:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/aviary/android/feather/effects/CropPanel;->populateInvertOptions(Ljava/util/HashSet;[Ljava/lang/String;)V

    .line 115
    iget-boolean v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mIsPortrait:Z

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mCropNames:[Ljava/lang/String;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/CropPanel;->mCropValues:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/aviary/android/feather/effects/CropPanel;->invertRatios([Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    :cond_0
    sget v1, Lcom/aviary/android/feather/R$integer;->aviary_crop_selected_index:I

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/services/ConfigService;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mSelectedPosition:I

    .line 122
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/CropPanel;->getContentView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_crop_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/CropImageView;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 123
    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDoubleTapEnabled(Z)V

    .line 124
    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setScaleEnabled(Z)V

    .line 125
    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setScrollEnabled(Z)V

    .line 126
    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    sget-object v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;->FIT_IF_BIGGER:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setDisplayType(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$DisplayType;)V

    .line 128
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/CropPanel;->getOptionView()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/aviary/android/feather/R$id;->aviary_gallery:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aviary/android/feather/widget/AviaryGallery;

    iput-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    .line 130
    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    iget v2, p0, Lcom/aviary/android/feather/effects/CropPanel;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->setDefaultPosition(I)V

    .line 131
    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v1, v5}, Lcom/aviary/android/feather/widget/AviaryGallery;->setCallbackDuringFling(Z)V

    .line 132
    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v1, v5}, Lcom/aviary/android/feather/widget/AviaryGallery;->setAutoSelectChild(Z)V

    .line 134
    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    new-instance v2, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;

    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/CropPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v3

    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/aviary/android/feather/effects/CropPanel;->mCropNames:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/aviary/android/feather/effects/CropPanel$GalleryAdapter;-><init>(Lcom/aviary/android/feather/effects/CropPanel;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/widget/AviaryGallery;->setAdapter(Landroid/widget/Adapter;)V

    .line 135
    iget-object v1, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    iget v2, p0, Lcom/aviary/android/feather/effects/CropPanel;->mSelectedPosition:I

    invoke-virtual {v1, v2, v5, v6}, Lcom/aviary/android/feather/widget/AviaryGallery;->setSelection(IZZ)V

    .line 136
    return-void

    .line 109
    :cond_1
    iput-boolean v5, p0, Lcom/aviary/android/feather/effects/CropPanel;->mIsPortrait:Z

    goto :goto_0
.end method

.method public onDeactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDeactivate()V

    .line 192
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setOnItemsScrollListener(Lcom/aviary/android/feather/widget/AviaryGallery$OnItemsScrollListener;)V

    .line 193
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/AviaryGallery;->setOnItemClickListener(Lcom/aviary/android/feather/widget/AviaryAdapterView$OnItemClickListener;)V

    .line 194
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->clear()V

    .line 185
    iget-object v0, p0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/CropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/CropImageView;->setOnHighlightSingleTapUpConfirmedListener(Lcom/aviary/android/feather/widget/CropImageView$OnHighlightSingleTapUpConfirmedListener;)V

    .line 186
    invoke-super {p0}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->onDestroy()V

    .line 187
    return-void
.end method

.method protected onGenerateResult()V
    .locals 5

    .prologue
    .line 206
    new-instance v0, Lcom/aviary/android/feather/library/graphics/RectD;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/widget/CropImageView;

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/CropImageView;->getHighlightView()Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/HighlightView;->getCropRectD()Lcom/aviary/android/feather/library/graphics/RectD;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/aviary/android/feather/library/graphics/RectD;-><init>(Lcom/aviary/android/feather/library/graphics/RectD;)V

    .line 207
    .local v0, "crop_rect":Lcom/aviary/android/feather/library/graphics/RectD;
    new-instance v1, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;

    invoke-direct {v1, p0, v0}, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;-><init>(Lcom/aviary/android/feather/effects/CropPanel;Lcom/aviary/android/feather/library/graphics/RectD;)V

    .line 208
    .local v1, "task":Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aviary/android/feather/effects/CropPanel;->mBitmap:Landroid/graphics/Bitmap;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/effects/CropPanel$GenerateResultTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    return-void
.end method

.method public onItemClick(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    iget-boolean v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->mStrictPolicy:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->mNonInvertOptions:Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 389
    iget-boolean v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->isChecked:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->isChecked:Z

    .line 391
    iget-object v2, p0, Lcom/aviary/android/feather/effects/CropPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v2, Lcom/aviary/android/feather/widget/CropImageView;

    .line 392
    .local v2, "cview":Lcom/aviary/android/feather/widget/CropImageView;
    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/CropImageView;->getAspectRatio()D

    move-result-wide v0

    .line 394
    .local v0, "currentAspectRatio":D
    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/CropImageView;->getHighlightView()Lcom/aviary/android/feather/widget/HighlightView;

    move-result-object v3

    .line 395
    .local v3, "hv":Lcom/aviary/android/feather/widget/HighlightView;
    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/CropImageView;->getAspectRatioIsFixed()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/HighlightView;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/HighlightView;->getDrawRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-double v8, v8

    div-double v0, v6, v8

    .line 399
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v4, v6, v0

    .line 401
    .local v4, "invertedAspectRatio":D
    invoke-virtual {v2}, Lcom/aviary/android/feather/widget/CropImageView;->getAspectRatioIsFixed()Z

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/aviary/android/feather/widget/CropImageView;->setAspectRatio(DZ)V

    .line 402
    iget-object v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->mCropNames:[Ljava/lang/String;

    iget-object v7, p0, Lcom/aviary/android/feather/effects/CropPanel;->mCropValues:[Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/aviary/android/feather/effects/CropPanel;->invertRatios([Ljava/lang/String;[Ljava/lang/String;)V

    .line 403
    iget-object v6, p0, Lcom/aviary/android/feather/effects/CropPanel;->mGallery:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v6}, Lcom/aviary/android/feather/widget/AviaryGallery;->invalidateViews()V

    .line 405
    .end local v0    # "currentAspectRatio":D
    .end local v2    # "cview":Lcom/aviary/android/feather/widget/CropImageView;
    .end local v3    # "hv":Lcom/aviary/android/feather/widget/HighlightView;
    .end local v4    # "invertedAspectRatio":D
    :cond_1
    return-void

    .line 389
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onScroll(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/CropPanel;->mHasScrolled:Z

    .line 415
    return-void
.end method

.method public onScrollFinished(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    const/4 v2, 0x0

    .line 419
    iput p3, p0, Lcom/aviary/android/feather/effects/CropPanel;->mSelectedPosition:I

    .line 421
    invoke-direct {p0, p3, v2}, Lcom/aviary/android/feather/effects/CropPanel;->calculateAspectRatio(IZ)D

    move-result-wide v0

    .line 422
    .local v0, "ratio":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v0, v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/aviary/android/feather/effects/CropPanel;->setCustomRatio(DZ)V

    .line 423
    return-void
.end method

.method public onScrollStarted(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/widget/AviaryAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "parent":Lcom/aviary/android/feather/widget/AviaryAdapterView;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<*>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/effects/CropPanel;->mHasScrolled:Z

    .line 410
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/aviary/android/feather/effects/AbstractContentPanel;->setEnabled(Z)V

    return-void
.end method
