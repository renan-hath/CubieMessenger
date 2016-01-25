.class Lcom/liquable/nemo/share/ShareMediaAdapter$6;
.super Ljava/lang/Object;
.source "ShareMediaAdapter.java"

# interfaces
.implements Lcom/liquable/nemo/share/PictureRow$ThumbnailFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/ShareMediaAdapter;->getPictureView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/share/ShareMediaAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/ShareMediaAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/share/ShareMediaAdapter;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/liquable/nemo/share/ShareMediaAdapter$6;->this$0:Lcom/liquable/nemo/share/ShareMediaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createThumbnail(J)Lcom/liquable/nemo/util/AbstractLoadableImage;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 189
    new-instance v0, Lcom/liquable/nemo/share/PictureMediaThumbnail;

    invoke-direct {v0, p1, p2}, Lcom/liquable/nemo/share/PictureMediaThumbnail;-><init>(J)V

    return-object v0
.end method
