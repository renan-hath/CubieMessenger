.class Lcom/liquable/nemo/gallery/AlbumListAdapter$1;
.super Ljava/lang/Object;
.source "AlbumListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/gallery/AlbumListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/gallery/AlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/gallery/AlbumListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/gallery/AlbumListAdapter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/liquable/nemo/gallery/AlbumListAdapter$1;->this$0:Lcom/liquable/nemo/gallery/AlbumListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;

    .line 79
    .local v0, "viewHolder":Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;
    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/gallery/AlbumListAdapter$1;->this$0:Lcom/liquable/nemo/gallery/AlbumListAdapter;

    # getter for: Lcom/liquable/nemo/gallery/AlbumListAdapter;->onAlbumClickListener:Lcom/liquable/nemo/gallery/AlbumListAdapter$OnAlbumClickListener;
    invoke-static {v1}, Lcom/liquable/nemo/gallery/AlbumListAdapter;->access$100(Lcom/liquable/nemo/gallery/AlbumListAdapter;)Lcom/liquable/nemo/gallery/AlbumListAdapter$OnAlbumClickListener;

    move-result-object v1

    iget-object v2, v0, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;->album:Lcom/liquable/nemo/gallery/AlbumInfo;

    invoke-interface {v1, v2}, Lcom/liquable/nemo/gallery/AlbumListAdapter$OnAlbumClickListener;->onAlbumClick(Lcom/liquable/nemo/gallery/AlbumInfo;)V

    goto :goto_0
.end method
