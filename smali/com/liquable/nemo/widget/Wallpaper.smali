.class public Lcom/liquable/nemo/widget/Wallpaper;
.super Landroid/widget/ImageView;
.source "Wallpaper.java"


# static fields
.field private static debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private loaded:Z

.field private final matrix:Landroid/graphics/Matrix;

.field private measureHeight:I

.field private measureWidth:I

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/liquable/nemo/widget/Wallpaper;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/widget/Wallpaper;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/widget/Wallpaper;->matrix:Landroid/graphics/Matrix;

    .line 44
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I

    .line 45
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/widget/Wallpaper;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/Wallpaper;

    .prologue
    .line 27
    iget v0, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/widget/Wallpaper;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/Wallpaper;

    .prologue
    .line 27
    iget v0, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I

    return v0
.end method

.method private asyncLoadLargeWallpaper(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 51
    new-instance v0, Lcom/liquable/nemo/widget/Wallpaper$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/widget/Wallpaper$1;-><init>(Lcom/liquable/nemo/widget/Wallpaper;Lcom/liquable/nemo/group/model/ChatGroup;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    .line 74
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/Wallpaper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/widget/Wallpaper;->loaded:Z

    .line 79
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-void
.end method

.method public loadChatGroupBackground(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 5
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 83
    iget-boolean v2, p0, Lcom/liquable/nemo/widget/Wallpaper;->loaded:Z

    if-eqz v2, :cond_0

    .line 117
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 89
    .local v0, "usingSmallWallpaper":Z
    if-nez p1, :cond_1

    .line 90
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->getWallpaperFile(Z)Ljava/io/File;

    move-result-object v1

    .line 103
    .local v1, "wallpaperFile":Ljava/io/File;
    :goto_1
    if-nez v1, :cond_3

    .line 105
    const v2, 0x7f02010d

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/widget/Wallpaper;->setImageResource(I)V

    .line 115
    :goto_2
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->resetMatrix()V

    .line 116
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/liquable/nemo/widget/Wallpaper;->loaded:Z

    goto :goto_0

    .line 92
    .end local v1    # "wallpaperFile":Ljava/io/File;
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->getSmallWallpaperFile(Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/io/File;

    move-result-object v1

    .line 93
    .restart local v1    # "wallpaperFile":Ljava/io/File;
    if-eqz v1, :cond_2

    .line 94
    const/4 v0, 0x1

    .line 98
    :goto_3
    sget-object v2, Lcom/liquable/nemo/widget/Wallpaper;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wallpaper:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " usingSmallWallpaper:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_2
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->getWallpaperFile(Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/io/File;

    move-result-object v1

    goto :goto_3

    .line 107
    :cond_3
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/widget/Wallpaper;->setImageDrawable(Ljava/io/File;)V

    .line 108
    if-eqz v0, :cond_4

    .line 109
    invoke-direct {p0, p1}, Lcom/liquable/nemo/widget/Wallpaper;->asyncLoadLargeWallpaper(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/liquable/nemo/background/GenSmallWallpaperTask;

    invoke-direct {v3, p1}, Lcom/liquable/nemo/background/GenSmallWallpaperTask;-><init>(Lcom/liquable/nemo/group/model/ChatGroup;)V

    invoke-static {v2, v3}, Lcom/liquable/nemo/background/BackgroundIntentService;->run(Landroid/content/Context;Lcom/liquable/nemo/background/BackgroundRunnable;)V

    goto :goto_2
.end method

.method public loadUserDefaultBackground()V
    .locals 4

    .prologue
    .line 120
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getDefaultWallpaperFileName()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "wallpaperBaseNameOrCode":Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->isDefaultWallpaper(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-static {v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 124
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 125
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/Wallpaper;->setImageDrawable(Ljava/io/File;)V

    .line 127
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->resetMatrix()V

    .line 134
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 132
    :cond_0
    const v2, 0x7f02010d

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/widget/Wallpaper;->setImageResource(I)V

    .line 133
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->resetMatrix()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 140
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/liquable/nemo/widget/Wallpaper;->measureWidth:I

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/liquable/nemo/widget/Wallpaper;->measureHeight:I

    if-eq v0, v1, :cond_1

    .line 141
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/widget/Wallpaper;->measureWidth:I

    .line 142
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/widget/Wallpaper;->measureHeight:I

    .line 143
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->resetMatrix()V

    .line 145
    :cond_1
    return-void
.end method

.method public resetMatrix()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 148
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I

    .line 149
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I

    .line 151
    iget-object v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 152
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    .line 175
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 156
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 157
    .local v1, "height":I
    int-to-float v5, v4

    iget v6, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 158
    .local v3, "wRatio":F
    int-to-float v5, v1

    iget v6, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 160
    .local v0, "hRatio":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 161
    .local v2, "ratio":F
    iget v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I

    if-lt v4, v5, :cond_1

    iget v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I

    if-ge v1, v5, :cond_2

    :cond_1
    iget v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I

    if-gt v4, v5, :cond_5

    iget v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I

    if-gt v1, v5, :cond_5

    .line 162
    :cond_2
    cmpl-float v5, v3, v0

    if-lez v5, :cond_4

    .line 163
    iget v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 172
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 173
    iget-object v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->matrix:Landroid/graphics/Matrix;

    int-to-float v6, v4

    mul-float/2addr v6, v2

    iget v7, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    neg-float v6, v6

    div-float/2addr v6, v9

    int-to-float v7, v1

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    neg-float v7, v7

    div-float/2addr v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 174
    iget-object v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/widget/Wallpaper;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 165
    :cond_4
    iget v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I

    int-to-float v5, v5

    int-to-float v6, v4

    div-float v2, v5, v6

    goto :goto_1

    .line 167
    :cond_5
    iget v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I

    if-ge v4, v5, :cond_6

    iget v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I

    if-lt v1, v5, :cond_6

    .line 168
    iget v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I

    int-to-float v5, v5

    int-to-float v6, v4

    div-float v2, v5, v6

    goto :goto_1

    .line 169
    :cond_6
    iget v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I

    if-lt v4, v5, :cond_3

    iget v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I

    if-ge v1, v5, :cond_3

    .line 170
    iget v5, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v2, v5, v6

    goto :goto_1
.end method

.method public final setImageDrawable(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const v5, 0x7f02010d

    .line 178
    invoke-static {p1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I

    iget v4, p0, Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap565(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 185
    .local v0, "scaledBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/widget/Wallpaper;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    .end local v0    # "scaledBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/Wallpaper;->resetMatrix()V

    .line 194
    return-void

    .line 188
    .restart local v0    # "scaledBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :cond_0
    invoke-virtual {p0, v5}, Lcom/liquable/nemo/widget/Wallpaper;->setImageResource(I)V

    goto :goto_0

    .line 191
    .end local v0    # "scaledBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :cond_1
    invoke-virtual {p0, v5}, Lcom/liquable/nemo/widget/Wallpaper;->setImageResource(I)V

    goto :goto_0
.end method
