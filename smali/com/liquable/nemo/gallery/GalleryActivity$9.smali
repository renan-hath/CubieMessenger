.class Lcom/liquable/nemo/gallery/GalleryActivity$9;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 369
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$9;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 375
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$9;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$200(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/PictureListAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 376
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$9;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->pictureListAdapter:Lcom/liquable/nemo/gallery/PictureListAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$200(Lcom/liquable/nemo/gallery/GalleryActivity;)Lcom/liquable/nemo/gallery/PictureListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/gallery/PictureListAdapter;->getLoadedCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    if-lt v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$9;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # invokes: Lcom/liquable/nemo/gallery/GalleryActivity;->loadPicturesMore()V
    invoke-static {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$1100(Lcom/liquable/nemo/gallery/GalleryActivity;)V

    .line 380
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 383
    return-void
.end method
