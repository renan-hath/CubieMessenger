.class Lcom/liquable/nemo/chat/ImagePreviewActivity$6;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImagePreviewActivity;->initPaintWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$6;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendBtnClicked(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;II)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "numberOfPaintText"    # I
    .param p4, "numberOfPaintSticker"    # I

    .prologue
    .line 495
    new-instance v0, Lcom/liquable/nemo/analytics/PictureParameters;

    invoke-direct {v0}, Lcom/liquable/nemo/analytics/PictureParameters;-><init>()V

    .line 496
    .local v0, "params":Lcom/liquable/nemo/analytics/PictureParameters;
    sget-object v1, Lcom/liquable/nemo/analytics/PictureParameters$Key;->num_paint_sticker:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/analytics/PictureParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v1, Lcom/liquable/nemo/analytics/PictureParameters$Key;->num_paint_text:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/analytics/PictureParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$6;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$6;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    # getter for: Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$600(Lcom/liquable/nemo/chat/ImagePreviewActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v3

    # invokes: Lcom/liquable/nemo/chat/ImagePreviewActivity;->send(Ljava/lang/String;ZLcom/liquable/nemo/analytics/PictureParameters;)V
    invoke-static {v1, v2, v3, v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$200(Lcom/liquable/nemo/chat/ImagePreviewActivity;Ljava/lang/String;ZLcom/liquable/nemo/analytics/PictureParameters;)V

    .line 499
    return-void
.end method
