.class Lcom/liquable/nemo/gallery/GalleryActivity$4;
.super Landroid/os/AsyncTask;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/gallery/GalleryActivity;->loadPicturesMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$4;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$4;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$4;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    .line 254
    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->currentAlbum:Lcom/liquable/nemo/gallery/AlbumInfo;
    invoke-static {v1}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$300(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/AlbumInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/gallery/AlbumInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$4;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    .line 255
    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$200(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/PictureListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/gallery/PictureListAdapter;->getLoadedCount()I

    move-result v2

    .line 253
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/android/provider/Medias;->listPicturesByAlbum(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity$4;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$4;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/liquable/nemo/gallery/GalleryActivity;->noMorePicturesToLoad:Z

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$4;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$200(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/PictureListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/gallery/PictureListAdapter;->addAll(Ljava/util/List;)V

    .line 264
    return-void
.end method
