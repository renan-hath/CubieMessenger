.class Lcom/liquable/nemo/forum/ForumImagePreviewFragment$4;
.super Ljava/lang/Object;
.source "ForumImagePreviewFragment.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->initPaintWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$4;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendBtnClicked(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;II)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "numberOfPaintText"    # I
    .param p4, "numberOfPaintSticker"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$4;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    # invokes: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->send()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$000(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V

    .line 228
    return-void
.end method
