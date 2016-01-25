.class public Lcom/liquable/nemo/gallery/GalleryActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;,
        Lcom/liquable/nemo/gallery/GalleryActivity$MyGestureListener;
    }
.end annotation


# static fields
.field private static final CHATGROUP:Ljava/lang/String; = "com.liquable.nemo.gallery.CHATGROUP"

.field private static final IS_SECRET:Ljava/lang/String; = "com.liquable.nemo.gallery.IS_SECRET"

.field private static final SELECT_RECIPIENTS:I = 0x4d2

.field private static final SENT:Ljava/lang/String; = "com.liquable.nemo.gallery.SENT"

.field private static final SINGLE_SELECT_ONLY:Ljava/lang/String; = "com.liquable.nemo.gallery.SINGLE_SELECT_ONLY"


# instance fields
.field private albumListAdapter:Lcom/liquable/nemo/gallery/AlbumListAdapter;

.field protected canSwipe:Z

.field private checkItemIsVisible:Z

.field private currentAlbum:Lcom/liquable/nemo/gallery/AlbumInfo;

.field private currentPicture:Lcom/liquable/nemo/android/provider/PictureInfo;

.field private detailImage:Lcom/liquable/nemo/gallery/PictureInfoImage;

.field private detailImageView:Lcom/liquable/nemo/gallery/GalleryBigImageView;

.field private detailImageViewer:Landroid/widget/FrameLayout;

.field private gridView:Landroid/widget/GridView;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private loadAlbumsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/gallery/AlbumInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadPicturesTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected multipleSelect:Z

.field private multipleSelectItemIsVisible:Z

.field protected noMorePicturesToLoad:Z

.field private final onImageLoadedListener:Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;

.field private pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;

.field private final selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

.field private sendButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 175
    new-instance v0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    .line 183
    new-instance v0, Lcom/liquable/nemo/gallery/GalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/gallery/GalleryActivity$1;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->onImageLoadedListener:Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->checkItemIsVisible:Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->multipleSelectItemIsVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/gallery/GalleryActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->sendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/AlbumListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->albumListAdapter:Lcom/liquable/nemo/gallery/AlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/gallery/GalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->loadPicturesMore()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/PictureListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/AlbumInfo;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentAlbum:Lcom/liquable/nemo/gallery/AlbumInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/gallery/GalleryActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/GalleryActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity;->finishWithOkay(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/gallery/GalleryActivity;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/GalleryActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity;->sendPictureMessage(Lcom/liquable/nemo/group/model/ChatGroup;)V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/gallery/GalleryActivity;Lcom/liquable/nemo/gallery/AlbumInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/GalleryActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/gallery/AlbumInfo;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity;->enterAlbum(Lcom/liquable/nemo/gallery/AlbumInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/liquable/nemo/gallery/GalleryActivity;Lcom/liquable/nemo/android/provider/PictureInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/GalleryActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity;->updateDetailImageView(Lcom/liquable/nemo/android/provider/PictureInfo;)V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/gallery/AlbumInfo;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "currentAlbum"    # Lcom/liquable/nemo/gallery/AlbumInfo;
    .param p3, "isSecret"    # Z

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.gallery.CHATGROUP"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 103
    const-class v1, Lcom/liquable/nemo/gallery/AlbumInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    const-string/jumbo v1, "com.liquable.nemo.gallery.IS_SECRET"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    return-object v0
.end method

.method public static createSentSuccessfullyResultIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.gallery.SENT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    return-object v0
.end method

.method public static createSingleSelectIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.gallery.SINGLE_SELECT_ONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    return-object v0
.end method

.method public static createUriResultIntent(Landroid/net/Uri;Lcom/liquable/nemo/gallery/AlbumInfo;)Landroid/content/Intent;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "currentAlbum"    # Lcom/liquable/nemo/gallery/AlbumInfo;

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    const-class v1, Lcom/liquable/nemo/gallery/AlbumInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    return-object v0
.end method

.method private enterAlbum(Lcom/liquable/nemo/gallery/AlbumInfo;)V
    .locals 2
    .param p1, "album"    # Lcom/liquable/nemo/gallery/AlbumInfo;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;

    invoke-virtual {p1}, Lcom/liquable/nemo/gallery/AlbumInfo;->getImageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/gallery/PictureListAdapter;->setTotal(I)V

    .line 201
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    invoke-direct {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity;->loadPicturesByAlbum(Lcom/liquable/nemo/gallery/AlbumInfo;)V

    .line 203
    invoke-direct {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->update()V

    .line 204
    return-void
.end method

.method private finishWithOkay(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity;->setResult(ILandroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->finish()V

    .line 209
    return-void
.end method

.method public static getAlbumInfo(Landroid/content/Intent;)Lcom/liquable/nemo/gallery/AlbumInfo;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    const-class v0, Lcom/liquable/nemo/gallery/AlbumInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/gallery/AlbumInfo;

    return-object v0
.end method

.method public static getChatGroup(Landroid/content/Intent;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    const-string/jumbo v0, "com.liquable.nemo.gallery.CHATGROUP"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method public static hasChatGroup(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 136
    const-string/jumbo v0, "com.liquable.nemo.gallery.CHATGROUP"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.liquable.nemo.gallery.CHATGROUP"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSecret(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    const-string/jumbo v0, "com.liquable.nemo.gallery.IS_SECRET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSentSuccessfully(ILandroid/content/Intent;)Z
    .locals 1
    .param p0, "resultCode"    # I
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.liquable.nemo.gallery.SENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleSelectOnly(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
    const-string/jumbo v0, "com.liquable.nemo.gallery.SINGLE_SELECT_ONLY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private loadAlbums()V
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lcom/liquable/nemo/gallery/GalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/gallery/GalleryActivity$2;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 222
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/gallery/GalleryActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->loadAlbumsTask:Landroid/os/AsyncTask;

    .line 223
    return-void
.end method

.method private loadPicturesByAlbum(Lcom/liquable/nemo/gallery/AlbumInfo;)V
    .locals 2
    .param p1, "album"    # Lcom/liquable/nemo/gallery/AlbumInfo;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentAlbum:Lcom/liquable/nemo/gallery/AlbumInfo;

    .line 227
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->loadPicturesTask:Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->stopAsyncTask(Landroid/os/AsyncTask;)V

    .line 228
    new-instance v0, Lcom/liquable/nemo/gallery/GalleryActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity$3;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;Lcom/liquable/nemo/gallery/AlbumInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 239
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/gallery/GalleryActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->loadPicturesTask:Landroid/os/AsyncTask;

    .line 240
    return-void
.end method

.method private loadPicturesMore()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentAlbum:Lcom/liquable/nemo/gallery/AlbumInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->noMorePicturesToLoad:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;

    .line 244
    invoke-virtual {v0}, Lcom/liquable/nemo/gallery/PictureListAdapter;->getLoadedCount()I

    move-result v0

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentAlbum:Lcom/liquable/nemo/gallery/AlbumInfo;

    invoke-virtual {v1}, Lcom/liquable/nemo/gallery/AlbumInfo;->getImageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->loadPicturesTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->loadPicturesTask:Landroid/os/AsyncTask;

    .line 246
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    new-instance v0, Lcom/liquable/nemo/gallery/GalleryActivity$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/gallery/GalleryActivity$4;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 265
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/gallery/GalleryActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->loadPicturesTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private sendPictureMessage(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 435
    new-instance v0, Lcom/liquable/nemo/gallery/GalleryActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity$10;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;Lcom/liquable/nemo/group/model/ChatGroup;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 467
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/gallery/GalleryActivity$10;->execute([Ljava/lang/Object;)V

    .line 468
    return-void
.end method

.method private stopAsyncTask(Landroid/os/AsyncTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 472
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 474
    :cond_0
    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 486
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentPicture:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-eqz v2, :cond_1

    .line 488
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->sendButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->multipleSelect:Z

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 489
    iput-boolean v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->multipleSelectItemIsVisible:Z

    .line 490
    iget-boolean v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->multipleSelect:Z

    iput-boolean v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->checkItemIsVisible:Z

    .line 504
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->invalidateOptionsMenu()V

    .line 505
    invoke-direct {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->updateTitle()V

    .line 506
    return-void

    .line 491
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentAlbum:Lcom/liquable/nemo/gallery/AlbumInfo;

    if-eqz v2, :cond_3

    .line 493
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->sendButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->multipleSelect:Z

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->multipleSelectItemIsVisible:Z

    .line 495
    iput-boolean v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->checkItemIsVisible:Z

    goto :goto_0

    .line 499
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->sendButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 500
    iput-boolean v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->multipleSelectItemIsVisible:Z

    .line 501
    iput-boolean v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->checkItemIsVisible:Z

    goto :goto_0
.end method

.method private updateDetailImageView(Lcom/liquable/nemo/android/provider/PictureInfo;)V
    .locals 4
    .param p1, "pictureInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 509
    if-nez p1, :cond_0

    .line 530
    :goto_0
    return-void

    .line 512
    :cond_0
    iput-boolean v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->canSwipe:Z

    .line 513
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImage:Lcom/liquable/nemo/gallery/PictureInfoImage;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImageView:Lcom/liquable/nemo/gallery/GalleryBigImageView;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/gallery/GalleryBigImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 515
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImage:Lcom/liquable/nemo/gallery/PictureInfoImage;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 517
    :cond_1
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentPicture:Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 518
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImageView:Lcom/liquable/nemo/gallery/GalleryBigImageView;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/gallery/GalleryBigImageView;->setOnImageLoadedListener(Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;)V

    .line 519
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImageView:Lcom/liquable/nemo/gallery/GalleryBigImageView;

    new-instance v2, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;

    invoke-direct {v2, p1}, Lcom/liquable/nemo/gallery/PictureInfoThumbnail;-><init>(Lcom/liquable/nemo/android/provider/PictureInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImageFromCacheOnly(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 520
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImageViewer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 522
    new-instance v0, Lcom/liquable/nemo/gallery/PictureInfoImage;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->gridView:Landroid/widget/GridView;

    .line 524
    invoke-virtual {v1}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->gridView:Landroid/widget/GridView;

    .line 525
    invoke-virtual {v2}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/liquable/nemo/gallery/PictureInfoImage;-><init>(Landroid/content/Context;Lcom/liquable/nemo/android/provider/PictureInfo;II)V

    iput-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImage:Lcom/liquable/nemo/gallery/PictureInfoImage;

    .line 526
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImageView:Lcom/liquable/nemo/gallery/GalleryBigImageView;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->onImageLoadedListener:Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/gallery/GalleryBigImageView;->setOnImageLoadedListener(Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;)V

    .line 527
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImageView:Lcom/liquable/nemo/gallery/GalleryBigImageView;

    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImage:Lcom/liquable/nemo/gallery/PictureInfoImage;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 529
    invoke-direct {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->update()V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentAlbum:Lcom/liquable/nemo/gallery/AlbumInfo;

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentAlbum:Lcom/liquable/nemo/gallery/AlbumInfo;

    invoke-virtual {v1}, Lcom/liquable/nemo/gallery/AlbumInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 540
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->hasChatGroup(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/gallery/GalleryActivity;->getChatGroup(Landroid/content/Intent;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0074

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method protected beforeOnCreate()V
    .locals 2

    .prologue
    .line 196
    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/gallery/GalleryActivity;->requestWindowFeature(J)V

    .line 197
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImageViewer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iput-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentPicture:Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 273
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImageViewer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImageView:Lcom/liquable/nemo/gallery/GalleryBigImageView;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/gallery/GalleryBigImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImage:Lcom/liquable/nemo/gallery/PictureInfoImage;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 276
    invoke-direct {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->update()V

    .line 289
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->gridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;

    if-ne v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->albumListAdapter:Lcom/liquable/nemo/gallery/AlbumListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    iput-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentAlbum:Lcom/liquable/nemo/gallery/AlbumInfo;

    .line 284
    invoke-direct {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->update()V

    goto :goto_0

    .line 288
    :cond_1
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->loadPicturesTask:Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->stopAsyncTask(Landroid/os/AsyncTask;)V

    .line 294
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->loadAlbumsTask:Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->stopAsyncTask(Landroid/os/AsyncTask;)V

    .line 295
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 296
    return-void
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 302
    invoke-super {p0, p1, p2, p3}, Lcom/liquable/nemo/BaseActivity;->onLoggedInActivityResult(IILandroid/content/Intent;)V

    .line 303
    const/16 v0, 0x4d2

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 304
    invoke-static {}, Lcom/liquable/nemo/gallery/GalleryActivity;->createSentSuccessfullyResultIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->finishWithOkay(Landroid/content/Intent;)V

    .line 306
    :cond_0
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    const v2, 0x7f03002d

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->setContentView(I)V

    .line 312
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 313
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->setLoadProgressly(Z)V

    .line 315
    const v2, 0x7f0800ba

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->sendButton:Landroid/widget/Button;

    .line 316
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->sendButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->sendButton:Landroid/widget/Button;

    new-instance v3, Lcom/liquable/nemo/gallery/GalleryActivity$5;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/gallery/GalleryActivity$5;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    new-instance v2, Lcom/liquable/nemo/gallery/AlbumListAdapter;

    iget-object v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    new-instance v4, Lcom/liquable/nemo/gallery/GalleryActivity$6;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/gallery/GalleryActivity$6;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V

    invoke-direct {v2, p0, v3, v4}, Lcom/liquable/nemo/gallery/AlbumListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/gallery/AlbumListAdapter$OnAlbumClickListener;)V

    iput-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->albumListAdapter:Lcom/liquable/nemo/gallery/AlbumListAdapter;

    .line 343
    new-instance v2, Lcom/liquable/nemo/gallery/PictureListAdapter;

    iget-object v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v4, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    new-instance v5, Lcom/liquable/nemo/gallery/GalleryActivity$7;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/gallery/GalleryActivity$7;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/liquable/nemo/gallery/PictureListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;Lcom/liquable/nemo/gallery/PictureListAdapter$PictureListAdapterListener;)V

    iput-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;

    .line 357
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/liquable/nemo/gallery/GalleryActivity$MyGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/gallery/GalleryActivity$MyGestureListener;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;Lcom/liquable/nemo/gallery/GalleryActivity$1;)V

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 358
    .local v1, "gestureDetector":Landroid/view/GestureDetector;
    const v2, 0x7f0800bc

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImageViewer:Landroid/widget/FrameLayout;

    .line 359
    const v2, 0x7f0800bd

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/gallery/GalleryBigImageView;

    iput-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImageView:Lcom/liquable/nemo/gallery/GalleryBigImageView;

    .line 360
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->detailImageView:Lcom/liquable/nemo/gallery/GalleryBigImageView;

    new-instance v3, Lcom/liquable/nemo/gallery/GalleryActivity$8;

    invoke-direct {v3, p0, v1}, Lcom/liquable/nemo/gallery/GalleryActivity$8;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;Landroid/view/GestureDetector;)V

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/gallery/GalleryBigImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 367
    const v2, 0x7f0800bb

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->gridView:Landroid/widget/GridView;

    .line 368
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->gridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->albumListAdapter:Lcom/liquable/nemo/gallery/AlbumListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->gridView:Landroid/widget/GridView;

    new-instance v3, Lcom/liquable/nemo/gallery/GalleryActivity$9;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/gallery/GalleryActivity$9;-><init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 386
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->getAlbumInfo(Landroid/content/Intent;)Lcom/liquable/nemo/gallery/AlbumInfo;

    move-result-object v0

    .line 387
    .local v0, "albumInfo":Lcom/liquable/nemo/gallery/AlbumInfo;
    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0, v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->enterAlbum(Lcom/liquable/nemo/gallery/AlbumInfo;)V

    .line 392
    :goto_0
    invoke-direct {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->loadAlbums()V

    .line 393
    return-void

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->update()V

    goto :goto_0
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const/4 v4, 0x1

    .line 397
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v1

    .line 398
    .local v1, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v3, 0x7f0f0008

    invoke-virtual {v1, v3, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 399
    const v3, 0x7f08036d

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 400
    .local v0, "checkItem":Lcom/actionbarsherlock/view/MenuItem;
    iget-boolean v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->checkItemIsVisible:Z

    invoke-interface {v0, v3}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 402
    const v3, 0x7f08036e

    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 403
    .local v2, "multipleSelectItem":Lcom/actionbarsherlock/view/MenuItem;
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/gallery/GalleryActivity;->isSingleSelectOnly(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->multipleSelectItemIsVisible:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 405
    iget-object v3, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    iget-object v5, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentPicture:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->contains(Lcom/liquable/nemo/android/provider/PictureInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    const v3, 0x7f0203ff

    invoke-interface {v0, v3}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 410
    :goto_1
    return v4

    .line 403
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 408
    :cond_1
    const v3, 0x7f0203fe

    invoke-interface {v0, v3}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 416
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 431
    :goto_0
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 418
    :sswitch_0
    invoke-virtual {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->onBackPressed()V

    goto :goto_1

    .line 421
    :sswitch_1
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentPicture:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->toggle(Lcom/liquable/nemo/android/provider/PictureInfo;)V

    .line 422
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/gallery/PictureListAdapter;->notifyDataSetChanged()V

    .line 423
    invoke-direct {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->update()V

    goto :goto_0

    .line 426
    :sswitch_2
    iput-boolean v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->multipleSelect:Z

    .line 427
    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/gallery/PictureListAdapter;->setMultipleSelect(Z)V

    .line 428
    invoke-direct {p0}, Lcom/liquable/nemo/gallery/GalleryActivity;->update()V

    goto :goto_0

    .line 416
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08036d -> :sswitch_1
        0x7f08036e -> :sswitch_2
    .end sparse-switch
.end method

.method public swipeLeft()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentPicture:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/gallery/PictureListAdapter;->getNext(Lcom/liquable/nemo/android/provider/PictureInfo;)Lcom/liquable/nemo/android/provider/PictureInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->updateDetailImageView(Lcom/liquable/nemo/android/provider/PictureInfo;)V

    .line 478
    return-void
.end method

.method public swipeRight()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity;->currentPicture:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/gallery/PictureListAdapter;->getPrev(Lcom/liquable/nemo/android/provider/PictureInfo;)Lcom/liquable/nemo/android/provider/PictureInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->updateDetailImageView(Lcom/liquable/nemo/android/provider/PictureInfo;)V

    .line 482
    return-void
.end method
