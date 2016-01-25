.class Lcom/liquable/nemo/sticker/ManageStickerActivity$1;
.super Ljava/lang/Object;
.source "ManageStickerActivity.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/ManageStickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/ManageStickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/ManageStickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/ManageStickerActivity;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity$1;->this$0:Lcom/liquable/nemo/sticker/ManageStickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 47
    if-eq p1, p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity$1;->this$0:Lcom/liquable/nemo/sticker/ManageStickerActivity;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->adapter:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity$1;->this$0:Lcom/liquable/nemo/sticker/ManageStickerActivity;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/ManageStickerActivity;->adapter:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->getItem(I)Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->move(Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;I)V

    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity$1;->this$0:Lcom/liquable/nemo/sticker/ManageStickerActivity;

    # getter for: Lcom/liquable/nemo/sticker/ManageStickerActivity;->dragHandleTips:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->access$000(Lcom/liquable/nemo/sticker/ManageStickerActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowDragHandleTips(Z)V

    .line 52
    :cond_0
    return-void
.end method
