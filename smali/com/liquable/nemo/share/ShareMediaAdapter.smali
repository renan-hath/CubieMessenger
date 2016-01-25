.class public Lcom/liquable/nemo/share/ShareMediaAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;
    }
.end annotation


# static fields
.field private static final MUSIC_ROWS_INCREMENT:I = 0x5

.field private static final PICTURE_ROWS_INCREMENT:I = 0x2

.field private static final TITLE_ROWS:I = 0x3

.field private static final VIDEO_ROWS_INCREMENT:I = 0x2


# instance fields
.field private final checkedMediaInfos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/liquable/nemo/android/provider/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private expectedMusicLines:I

.field private expectedPicLines:I

.field private expectedVideoLines:I

.field private hasMoreMusics:Z

.field private hasMorePictures:Z

.field private hasMoreVideos:Z

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final musicColumnCount:I

.field private musicLines:I

.field private musics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/AudioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final onShowMoreMusicsClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

.field private final onShowMorePicsClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

.field private final onShowMoreVideosClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

.field private final picColumnCount:I

.field private picLines:I

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final videoColumnCount:I

.field private videoLines:I

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/VideoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    const/4 v1, 0x2

    .line 101
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->checkedMediaInfos:Ljava/util/Set;

    .line 53
    iput v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedPicLines:I

    .line 55
    iput v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedVideoLines:I

    .line 57
    const/4 v0, 0x5

    iput v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedMusicLines:I

    .line 77
    new-instance v0, Lcom/liquable/nemo/share/ShareMediaAdapter$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/share/ShareMediaAdapter$1;-><init>(Lcom/liquable/nemo/share/ShareMediaAdapter;)V

    iput-object v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->onShowMorePicsClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

    .line 85
    new-instance v0, Lcom/liquable/nemo/share/ShareMediaAdapter$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/share/ShareMediaAdapter$2;-><init>(Lcom/liquable/nemo/share/ShareMediaAdapter;)V

    iput-object v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->onShowMoreMusicsClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

    .line 93
    new-instance v0, Lcom/liquable/nemo/share/ShareMediaAdapter$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/share/ShareMediaAdapter$3;-><init>(Lcom/liquable/nemo/share/ShareMediaAdapter;)V

    iput-object v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->onShowMoreVideosClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

    .line 102
    iput-object p1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->context:Landroid/content/Context;

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 104
    iput-object p2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picColumnCount:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videoColumnCount:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musicColumnCount:I

    .line 109
    invoke-virtual {p0}, Lcom/liquable/nemo/share/ShareMediaAdapter;->reset()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/share/ShareMediaAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/ShareMediaAdapter;

    .prologue
    .line 26
    iget v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedPicLines:I

    return v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/share/ShareMediaAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/share/ShareMediaAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedPicLines:I

    return p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/share/ShareMediaAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/ShareMediaAdapter;

    .prologue
    .line 26
    iget v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedMusicLines:I

    return v0
.end method

.method static synthetic access$102(Lcom/liquable/nemo/share/ShareMediaAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/share/ShareMediaAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedMusicLines:I

    return p1
.end method

.method static synthetic access$200(Lcom/liquable/nemo/share/ShareMediaAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/ShareMediaAdapter;

    .prologue
    .line 26
    iget v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedVideoLines:I

    return v0
.end method

.method static synthetic access$202(Lcom/liquable/nemo/share/ShareMediaAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/share/ShareMediaAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedVideoLines:I

    return p1
.end method

.method static synthetic access$300(Lcom/liquable/nemo/share/ShareMediaAdapter;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/ShareMediaAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->checkedMediaInfos:Ljava/util/Set;

    return-object v0
.end method

.method private getMusicView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 150
    if-nez p2, :cond_0

    .line 151
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030115

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/share/MusicRow;

    .line 152
    .local v0, "musicRow":Lcom/liquable/nemo/share/MusicRow;
    new-instance v1, Lcom/liquable/nemo/share/ShareMediaAdapter$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/share/ShareMediaAdapter$4;-><init>(Lcom/liquable/nemo/share/ShareMediaAdapter;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/MusicRow;->setOnMediaInfoCheckedListener(Lcom/liquable/nemo/share/MediaInfoCheckedListener;)V

    .line 162
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->onShowMoreMusicsClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/MusicRow;->setOnShowMoreClickListener(Lcom/liquable/nemo/share/OnShowMoreClickListener;)V

    .line 166
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musics:Ljava/util/List;

    iget-object v3, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->checkedMediaInfos:Ljava/util/Set;

    iget-object v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->hasMoreMusics:Z

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/share/MusicRow;->updateContent(Ljava/util/List;ILjava/util/Set;Lcom/liquable/nemo/util/ImageLoader;Z)V

    .line 167
    return-object v0

    .end local v0    # "musicRow":Lcom/liquable/nemo/share/MusicRow;
    :cond_0
    move-object v0, p2

    .line 164
    check-cast v0, Lcom/liquable/nemo/share/MusicRow;

    .restart local v0    # "musicRow":Lcom/liquable/nemo/share/MusicRow;
    goto :goto_0
.end method

.method private getPictureView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 173
    if-nez p2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030116

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/share/PictureRow;

    .line 175
    .local v0, "picRow":Lcom/liquable/nemo/share/PictureRow;
    new-instance v1, Lcom/liquable/nemo/share/ShareMediaAdapter$5;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/share/ShareMediaAdapter$5;-><init>(Lcom/liquable/nemo/share/ShareMediaAdapter;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/PictureRow;->setOnMediaInfoCheckedListener(Lcom/liquable/nemo/share/MediaInfoCheckedListener;)V

    .line 185
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->onShowMorePicsClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/PictureRow;->setOnShowMoreClickListener(Lcom/liquable/nemo/share/OnShowMoreClickListener;)V

    .line 186
    new-instance v1, Lcom/liquable/nemo/share/ShareMediaAdapter$6;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/share/ShareMediaAdapter$6;-><init>(Lcom/liquable/nemo/share/ShareMediaAdapter;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/PictureRow;->setThumbnailFactory(Lcom/liquable/nemo/share/PictureRow$ThumbnailFactory;)V

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->pictures:Ljava/util/List;

    iget-object v3, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->checkedMediaInfos:Ljava/util/Set;

    iget-object v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->hasMorePictures:Z

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/share/PictureRow;->updateContent(Ljava/util/List;ILjava/util/Set;Lcom/liquable/nemo/util/ImageLoader;Z)V

    .line 198
    return-object v0

    .end local v0    # "picRow":Lcom/liquable/nemo/share/PictureRow;
    :cond_0
    move-object v0, p2

    .line 193
    check-cast v0, Lcom/liquable/nemo/share/PictureRow;

    .restart local v0    # "picRow":Lcom/liquable/nemo/share/PictureRow;
    goto :goto_0
.end method

.method private getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 203
    if-nez p2, :cond_0

    .line 204
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030114

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 209
    .local v0, "titleText":Landroid/widget/TextView;
    :goto_0
    if-nez p1, :cond_1

    .line 211
    const v1, 0x7f0d03cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    const v1, 0x7f0204f4

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 223
    :goto_1
    return-object v0

    .end local v0    # "titleText":Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .line 206
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "titleText":Landroid/widget/TextView;
    goto :goto_0

    .line 213
    :cond_1
    iget v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picLines:I

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_2

    .line 215
    const v1, 0x7f0d0505

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 216
    const v1, 0x7f0204a7

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 219
    :cond_2
    const v1, 0x7f0d0379

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    const v1, 0x7f0204aa

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private getVideoView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 228
    if-nez p2, :cond_0

    .line 229
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030116

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/share/PictureRow;

    .line 230
    .local v0, "picRow":Lcom/liquable/nemo/share/PictureRow;
    new-instance v1, Lcom/liquable/nemo/share/ShareMediaAdapter$7;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/share/ShareMediaAdapter$7;-><init>(Lcom/liquable/nemo/share/ShareMediaAdapter;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/PictureRow;->setOnMediaInfoCheckedListener(Lcom/liquable/nemo/share/MediaInfoCheckedListener;)V

    .line 240
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->onShowMoreVideosClickListener:Lcom/liquable/nemo/share/OnShowMoreClickListener;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/PictureRow;->setOnShowMoreClickListener(Lcom/liquable/nemo/share/OnShowMoreClickListener;)V

    .line 241
    new-instance v1, Lcom/liquable/nemo/share/ShareMediaAdapter$8;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/share/ShareMediaAdapter$8;-><init>(Lcom/liquable/nemo/share/ShareMediaAdapter;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/PictureRow;->setThumbnailFactory(Lcom/liquable/nemo/share/PictureRow$ThumbnailFactory;)V

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videos:Ljava/util/List;

    iget-object v3, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->checkedMediaInfos:Ljava/util/Set;

    iget-object v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->hasMoreVideos:Z

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/share/PictureRow;->updateContent(Ljava/util/List;ILjava/util/Set;Lcom/liquable/nemo/util/ImageLoader;Z)V

    .line 253
    return-object v0

    .end local v0    # "picRow":Lcom/liquable/nemo/share/PictureRow;
    :cond_0
    move-object v0, p2

    .line 248
    check-cast v0, Lcom/liquable/nemo/share/PictureRow;

    .restart local v0    # "picRow":Lcom/liquable/nemo/share/PictureRow;
    goto :goto_0
.end method

.method private initMusics(Lcom/liquable/nemo/storage/DeviceExternalStorage;)V
    .locals 6
    .param p1, "deviceExternalStorage"    # Lcom/liquable/nemo/storage/DeviceExternalStorage;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 283
    sget-object v1, Lcom/liquable/nemo/android/service/MediaType;->AUDIO:Lcom/liquable/nemo/android/service/MediaType;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/MediaType;->getLocalPreserveFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 285
    .local v0, "musicFolder":Ljava/io/File;
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->context:Landroid/content/Context;

    iget v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musicColumnCount:I

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedMusicLines:I

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    new-array v5, v2, [Ljava/io/File;

    aput-object v0, v5, v3

    invoke-static {v1, v4, v5}, Lcom/liquable/nemo/android/provider/Medias;->listRecentMusics(Landroid/content/Context;I[Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musics:Ljava/util/List;

    .line 288
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musicColumnCount:I

    div-int v4, v1, v4

    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musicColumnCount:I

    rem-int/2addr v1, v5

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v1, v4

    iput v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musicLines:I

    .line 289
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musicColumnCount:I

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedMusicLines:I

    mul-int/2addr v4, v5

    if-le v1, v4, :cond_1

    .line 290
    iput-boolean v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->hasMoreMusics:Z

    .line 295
    :goto_1
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musicColumnCount:I

    iget v3, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedMusicLines:I

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 296
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musics:Ljava/util/List;

    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move v1, v3

    .line 288
    goto :goto_0

    .line 292
    :cond_1
    iput-boolean v3, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->hasMoreMusics:Z

    goto :goto_1

    .line 298
    :cond_2
    return-void
.end method

.method private initPictures(Lcom/liquable/nemo/storage/DeviceExternalStorage;)V
    .locals 7
    .param p1, "deviceExternalStorage"    # Lcom/liquable/nemo/storage/DeviceExternalStorage;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 301
    sget-object v2, Lcom/liquable/nemo/android/service/MediaType;->PAINT:Lcom/liquable/nemo/android/service/MediaType;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/MediaType;->getLocalPreserveFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 302
    .local v0, "paintFolder":Ljava/io/File;
    sget-object v2, Lcom/liquable/nemo/android/service/MediaType;->PICTURE:Lcom/liquable/nemo/android/service/MediaType;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/MediaType;->getLocalPreserveFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 304
    .local v1, "pictureFolder":Ljava/io/File;
    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->context:Landroid/content/Context;

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picColumnCount:I

    iget v6, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedPicLines:I

    mul-int/2addr v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/io/File;

    aput-object v0, v6, v4

    aput-object v1, v6, v3

    invoke-static {v2, v5, v6}, Lcom/liquable/nemo/android/provider/Medias;->listRecentPictures(Landroid/content/Context;I[Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->pictures:Ljava/util/List;

    .line 306
    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->pictures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picColumnCount:I

    div-int v5, v2, v5

    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->pictures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v6, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picColumnCount:I

    rem-int/2addr v2, v6

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/2addr v2, v5

    iput v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picLines:I

    .line 307
    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->pictures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picColumnCount:I

    iget v6, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedPicLines:I

    mul-int/2addr v5, v6

    if-lt v2, v5, :cond_1

    .line 308
    iput-boolean v3, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->hasMorePictures:Z

    .line 313
    :goto_1
    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->pictures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picColumnCount:I

    iget v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedPicLines:I

    mul-int/2addr v3, v4

    if-lt v2, v3, :cond_2

    .line 314
    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->pictures:Ljava/util/List;

    iget-object v3, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->pictures:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move v2, v4

    .line 306
    goto :goto_0

    .line 310
    :cond_1
    iput-boolean v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->hasMorePictures:Z

    goto :goto_1

    .line 316
    :cond_2
    return-void
.end method

.method private initVideos(Lcom/liquable/nemo/storage/DeviceExternalStorage;)V
    .locals 6
    .param p1, "deviceExternalStorage"    # Lcom/liquable/nemo/storage/DeviceExternalStorage;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 319
    sget-object v1, Lcom/liquable/nemo/android/service/MediaType;->VIDEO:Lcom/liquable/nemo/android/service/MediaType;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/MediaType;->getLocalPreserveFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 321
    .local v0, "videoFolder":Ljava/io/File;
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->context:Landroid/content/Context;

    iget v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videoColumnCount:I

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedVideoLines:I

    mul-int/2addr v4, v5

    new-array v5, v2, [Ljava/io/File;

    aput-object v0, v5, v3

    invoke-static {v1, v4, v5}, Lcom/liquable/nemo/android/provider/Medias;->listRecentVideos(Landroid/content/Context;I[Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videos:Ljava/util/List;

    .line 324
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videoColumnCount:I

    div-int v4, v1, v4

    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videoColumnCount:I

    rem-int/2addr v1, v5

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v1, v4

    iput v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videoLines:I

    .line 325
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videoColumnCount:I

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedVideoLines:I

    mul-int/2addr v4, v5

    if-lt v1, v4, :cond_1

    .line 326
    iput-boolean v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->hasMoreVideos:Z

    .line 331
    :goto_1
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videoColumnCount:I

    iget v3, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->expectedVideoLines:I

    mul-int/2addr v2, v3

    if-lt v1, v2, :cond_2

    .line 332
    iget-object v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videos:Ljava/util/List;

    iget-object v2, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move v1, v3

    .line 324
    goto :goto_0

    .line 328
    :cond_1
    iput-boolean v3, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->hasMoreVideos:Z

    goto :goto_1

    .line 334
    :cond_2
    return-void
.end method


# virtual methods
.method public getCheckedMediaInfos()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/liquable/nemo/android/provider/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->checkedMediaInfos:Ljava/util/Set;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picLines:I

    iget v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videoLines:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musicLines:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 128
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    sget-object v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->TITLE:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    invoke-virtual {v0}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->ordinal()I

    move-result v0

    .line 144
    :goto_0
    return v0

    .line 135
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picLines:I

    if-gt p1, v0, :cond_1

    .line 136
    sget-object v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->PIC:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    invoke-virtual {v0}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->ordinal()I

    move-result v0

    goto :goto_0

    .line 137
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picLines:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2

    .line 138
    sget-object v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->TITLE:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    invoke-virtual {v0}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->ordinal()I

    move-result v0

    goto :goto_0

    .line 139
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picLines:I

    iget v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videoLines:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_3

    .line 140
    sget-object v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->VIDEO:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    invoke-virtual {v0}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->ordinal()I

    move-result v0

    goto :goto_0

    .line 141
    :cond_3
    iget v0, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picLines:I

    iget v1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videoLines:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    if-ne p1, v0, :cond_4

    .line 142
    sget-object v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->TITLE:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    invoke-virtual {v0}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->ordinal()I

    move-result v0

    goto :goto_0

    .line 144
    :cond_4
    sget-object v0, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->MUSIC:Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    invoke-virtual {v0}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 258
    invoke-static {}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->values()[Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/ShareMediaAdapter;->getItemViewType(I)I

    move-result v5

    aget-object v0, v4, v5

    .line 259
    .local v0, "itemViewType":Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;
    sget-object v4, Lcom/liquable/nemo/share/ShareMediaAdapter$9;->$SwitchMap$com$liquable$nemo$share$ShareMediaAdapter$ItemViewType:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 273
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 261
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/share/ShareMediaAdapter;->getTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 270
    :goto_0
    return-object v4

    .line 263
    :pswitch_1
    add-int/lit8 v4, p1, -0x1

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picColumnCount:I

    mul-int v2, v4, v5

    .line 264
    .local v2, "picIndex":I
    invoke-direct {p0, v2, p2, p3}, Lcom/liquable/nemo/share/ShareMediaAdapter;->getPictureView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 266
    .end local v2    # "picIndex":I
    :pswitch_2
    iget v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picLines:I

    sub-int v4, p1, v4

    add-int/lit8 v4, v4, -0x2

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videoColumnCount:I

    mul-int v3, v4, v5

    .line 267
    .local v3, "videoIndex":I
    invoke-direct {p0, v3, p2, p3}, Lcom/liquable/nemo/share/ShareMediaAdapter;->getVideoView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 269
    .end local v3    # "videoIndex":I
    :pswitch_3
    iget v4, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->picLines:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->videoLines:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x3

    iget v5, p0, Lcom/liquable/nemo/share/ShareMediaAdapter;->musicColumnCount:I

    mul-int v1, v4, v5

    .line 270
    .local v1, "musicIndex":I
    invoke-direct {p0, v1, p2, p3}, Lcom/liquable/nemo/share/ShareMediaAdapter;->getMusicView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;->values()[Lcom/liquable/nemo/share/ShareMediaAdapter$ItemViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 337
    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v0

    .line 338
    .local v0, "deviceExternalStorage":Lcom/liquable/nemo/storage/DeviceExternalStorage;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/share/ShareMediaAdapter;->initPictures(Lcom/liquable/nemo/storage/DeviceExternalStorage;)V

    .line 339
    invoke-direct {p0, v0}, Lcom/liquable/nemo/share/ShareMediaAdapter;->initVideos(Lcom/liquable/nemo/storage/DeviceExternalStorage;)V

    .line 340
    invoke-direct {p0, v0}, Lcom/liquable/nemo/share/ShareMediaAdapter;->initMusics(Lcom/liquable/nemo/storage/DeviceExternalStorage;)V

    .line 341
    invoke-virtual {p0}, Lcom/liquable/nemo/share/ShareMediaAdapter;->notifyDataSetChanged()V

    .line 342
    return-void
.end method
