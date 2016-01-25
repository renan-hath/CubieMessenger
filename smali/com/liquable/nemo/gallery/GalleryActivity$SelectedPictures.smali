.class Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;
.super Ljava/lang/Object;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/gallery/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectedPictures"
.end annotation


# instance fields
.field private final selectedPictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/liquable/nemo/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/gallery/GalleryActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/liquable/nemo/gallery/GalleryActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->selectedPictures:Ljava/util/List;

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->selectedPictures:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public contains(Lcom/liquable/nemo/android/provider/PictureInfo;)Z
    .locals 1
    .param p1, "pictureInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->selectedPictures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toArrayList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->selectedPictures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 77
    .local v1, "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    invoke-virtual {v1}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v1    # "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    :cond_0
    return-object v0
.end method

.method public toImmutableList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->selectedPictures:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toggle(Lcom/liquable/nemo/android/provider/PictureInfo;)V
    .locals 4
    .param p1, "pictureInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->contains(Lcom/liquable/nemo/android/provider/PictureInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->selectedPictures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->sendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$000(Lcom/liquable/nemo/gallery/GalleryActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->selectedPictures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    # getter for: Lcom/liquable/nemo/gallery/GalleryActivity;->sendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->access$000(Lcom/liquable/nemo/gallery/GalleryActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    const v3, 0x7f0d0474

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/gallery/GalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->selectedPictures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$SelectedPictures;->selectedPictures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
