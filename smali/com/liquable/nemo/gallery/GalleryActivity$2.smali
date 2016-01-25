.class Lcom/liquable/nemo/gallery/GalleryActivity$2;
.super Landroid/os/AsyncTask;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/gallery/GalleryActivity;->loadAlbums()V
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
        "Lcom/liquable/nemo/gallery/AlbumInfo;",
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
    .line 212
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$2;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/gallery/AlbumInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$2;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-static {v0}, Lcom/liquable/nemo/android/provider/Medias;->listAlbums(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 212
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/gallery/AlbumInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/gallery/AlbumInfo;>;"
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$2;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->albumListAdapter:Lcom/liquable/nemo/gallery/AlbumListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$100(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/gallery/AlbumListAdapter;->reset(Ljava/util/List;)V

    .line 221
    return-void
.end method
