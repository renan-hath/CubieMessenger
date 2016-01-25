.class Lcom/liquable/nemo/gallery/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/liquable/nemo/gallery/GalleryBigImageView$OnImageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/gallery/GalleryActivity;
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
    .line 183
    iput-object p1, p0, Lcom/liquable/nemo/gallery/GalleryActivity$1;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/gallery/GalleryActivity$1;->this$0:Lcom/liquable/nemo/gallery/GalleryActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/liquable/nemo/gallery/GalleryActivity;->canSwipe:Z

    .line 187
    return-void
.end method
