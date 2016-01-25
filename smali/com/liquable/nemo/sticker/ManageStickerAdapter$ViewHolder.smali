.class Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ManageStickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/ManageStickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field checkbox:Landroid/widget/CheckBox;

.field stickerCategoryLayout:Landroid/widget/RelativeLayout;

.field stickerThumbnail:Landroid/widget/ImageView;

.field stickerTitleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/liquable/nemo/sticker/ManageStickerAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/ManageStickerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;->this$0:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
