.class Lcom/liquable/nemo/gallery/GalleryActivity$3;
.super Landroid/os/AsyncTask;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/gallery/GalleryActivity;->loadPicturesByAlbum(Lcom/liquable/nemo/gallery/AlbumInfo;)V
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

.field final synthetic val$album:Lcom/liquable/nemo/gallery/AlbumInfo;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/gallery/GalleryActivity;Lcom/liquable/nemo/gallery/AlbumInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$3;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    iput-object p2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$3;->val$album:Lcom/liquable/nemo/gallery/AlbumInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
    .line 231
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$3;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$3;->val$album:Lcom/liquable/nemo/gallery/AlbumInfo;

    invoke-virtual {v1}, Lcom/liquable/nemo/gallery/AlbumInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/android/provider/Medias;->listPicturesByAlbum(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity$3;->onPostExecute(Ljava/util/List;)V

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
    .line 236
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$3;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$200(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/PictureListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/gallery/PictureListAdapter;->reset(Ljava/util/List;)V

    .line 237
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$3;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/liquable/nemo/gallery/GalleryActivity;->noMorePicturesToLoad:Z

    .line 238
    return-void
.end method
