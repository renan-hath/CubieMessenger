.class Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;
.super Landroid/os/AsyncTask;
.source "ImageMultiSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/ImageMultiSelectActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
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
        "Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

.field final synthetic val$imageGridView:Lcom/liquable/nemo/staggerd/StaggeredGridView;

.field final synthetic val$imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field final synthetic val$pictureInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/ImageMultiSelectActivity;Ljava/util/List;Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/staggerd/StaggeredGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    iput-object p2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->val$pictureInfos:Ljava/util/List;

    iput-object p3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->val$imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iput-object p4, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->val$imageGridView:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "images":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;>;"
    iget-object v2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->val$pictureInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 211
    .local v1, "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    new-instance v3, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;

    iget-object v4, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    invoke-direct {v3, v4, v1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;-><init>(Lcom/liquable/nemo/share/ImageMultiSelectActivity;Lcom/liquable/nemo/android/provider/PictureInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    .end local v1    # "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 205
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->onCancelled(Ljava/util/List;)V

    return-void
.end method

.method protected onCancelled(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;>;"
    iget-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->removeDialog(I)V

    .line 219
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 205
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;>;"
    iget-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->removeDialog(I)V

    .line 224
    iget-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    new-instance v1, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    iget-object v2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    iget-object v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    iget-object v4, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->val$imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;-><init>(Lcom/liquable/nemo/share/ImageMultiSelectActivity;Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V

    iput-object v1, v0, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->adapter:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->val$imageGridView:Lcom/liquable/nemo/staggerd/StaggeredGridView;

    iget-object v1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    iget-object v1, v1, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->adapter:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->showDialog(I)V

    .line 231
    return-void
.end method
