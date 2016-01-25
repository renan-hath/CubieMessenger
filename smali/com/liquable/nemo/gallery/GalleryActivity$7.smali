.class Lcom/liquable/nemo/gallery/GalleryActivity$7;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/liquable/nemo/gallery/PictureListAdapter$PictureListAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/gallery/GalleryActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$7;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailClick(Lcom/liquable/nemo/android/provider/PictureInfo;)V
    .locals 3
    .param p1, "pictureInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$7;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    iget-boolean v0, v0, Lcom/liquable/nemo/gallery/GalleryActivity;->multipleSelect:Z

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$7;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$7;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->currentAlbum:Lcom/liquable/nemo/gallery/AlbumInfo;
    invoke-static {v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$300(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/AlbumInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->createUriResultIntent(Landroid/net/Uri;Lcom/liquable/nemo/gallery/AlbumInfo;)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/gallery/GalleryActivity;->finishWithOkay(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$600(Lcom/liquable/nemo/gallery/GalleryActivity;Landroid/content/Intent;)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$7;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # invokes: Lcom/liquable/nemo/gallery/GalleryActivity;->updateDetailImageView(Lcom/liquable/nemo/android/provider/PictureInfo;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$900(Lcom/liquable/nemo/gallery/GalleryActivity;Lcom/liquable/nemo/android/provider/PictureInfo;)V

    goto :goto_0
.end method
