.class Lcom/liquable/nemo/gallery/PictureListAdapter$2;
.super Ljava/lang/Object;
.source "PictureListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/gallery/PictureListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/gallery/PictureListAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/gallery/PictureListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/gallery/PictureListAdapter;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter$2;->this$0:Lcom/liquable/nemo/gallery/PictureListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 121
    .local v0, "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    if-nez v0, :cond_0

    .line 126
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 124
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter$2;->this$0:Lcom/liquable/nemo/gallery/PictureListAdapter;

    # getter for: Lcom/liquable/nemo/gallery/PictureListAdapter;->selectedPictures:Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;
    invoke-static {v1}, Lcom/liquable/nemo/gallery/PictureListAdapter;->access$200(Lcom/liquable/nemo/gallery/PictureListAdapter;)Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->toggle(Lcom/liquable/nemo/android/provider/PictureInfo;)V

    .line 125
    iget-object v1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter$2;->this$0:Lcom/liquable/nemo/gallery/PictureListAdapter;

    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    # invokes: Lcom/liquable/nemo/gallery/PictureListAdapter;->updateSelectedView(Landroid/widget/ImageView;Lcom/liquable/nemo/android/provider/PictureInfo;)V
    invoke-static {v1, p1, v0}, Lcom/liquable/nemo/gallery/PictureListAdapter;->access$300(Lcom/liquable/nemo/gallery/PictureListAdapter;Landroid/widget/ImageView;Lcom/liquable/nemo/android/provider/PictureInfo;)V

    goto :goto_0
.end method
