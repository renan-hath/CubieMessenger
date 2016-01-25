.class Lcom/liquable/nemo/gallery/PictureListAdapter$1;
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
    .line 106
    iput-object p1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter$1;->this$0:Lcom/liquable/nemo/gallery/PictureListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 110
    .local v0, "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/gallery/PictureListAdapter$1;->this$0:Lcom/liquable/nemo/gallery/PictureListAdapter;

    # getter for: Lcom/liquable/nemo/gallery/PictureListAdapter;->pictureListAdapterListener:Lcom/liquable/nemo/gallery/PictureListAdapter$PictureListAdapterListener;
    invoke-static {v1}, Lcom/liquable/nemo/gallery/PictureListAdapter;->access$100(Lcom/liquable/nemo/gallery/PictureListAdapter;)Lcom/liquable/nemo/gallery/PictureListAdapter$PictureListAdapterListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/liquable/nemo/gallery/PictureListAdapter$PictureListAdapterListener;->onThumbnailClick(Lcom/liquable/nemo/android/provider/PictureInfo;)V

    goto :goto_0
.end method
