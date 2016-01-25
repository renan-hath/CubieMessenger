.class Lcom/liquable/nemo/gallery/GalleryActivity$6;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/liquable/nemo/gallery/AlbumListAdapter$OnAlbumClickListener;


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
    .line 336
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$6;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumClick(Lcom/liquable/nemo/gallery/AlbumInfo;)V
    .locals 1
    .param p1, "album"    # Lcom/liquable/nemo/gallery/AlbumInfo;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$6;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # invokes: Lcom/liquable/nemo/gallery/GalleryActivity;->enterAlbum(Lcom/liquable/nemo/gallery/AlbumInfo;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$800(Lcom/liquable/nemo/gallery/GalleryActivity;Lcom/liquable/nemo/gallery/AlbumInfo;)V

    .line 340
    return-void
.end method
