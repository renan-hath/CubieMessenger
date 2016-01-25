.class Lcom/liquable/nemo/chat/paint/PaintWidget$9;
.super Ljava/lang/Object;
.source "PaintWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/paint/PaintWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

.field final synthetic val$onPaintChangedListener:Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/PaintWidget;Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$9;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iput-object p2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$9;->val$onPaintChangedListener:Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$9;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iget-object v0, v0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onSendBtnClicked:Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$9;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iget-object v0, v0, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintView;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$9;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iget-object v0, v0, Lcom/liquable/nemo/chat/paint/PaintWidget;->onSendBtnClicked:Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$9;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iget-object v1, v1, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/paint/PaintView;->takeSnapshot()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$9;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iget-object v2, v2, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    .line 287
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/paint/PaintView;->getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$9;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iget-object v3, v3, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    .line 288
    invoke-virtual {v3}, Lcom/liquable/nemo/chat/paint/PaintView;->getNumberOfPaintText()I

    move-result v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$9;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    iget-object v4, v4, Lcom/liquable/nemo/chat/paint/PaintWidget;->paintView:Lcom/liquable/nemo/chat/paint/PaintView;

    .line 289
    invoke-virtual {v4}, Lcom/liquable/nemo/chat/paint/PaintView;->getNumberOfPaintSticker()I

    move-result v4

    .line 286
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;->onSendBtnClicked(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;II)V

    .line 291
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$9;->val$onPaintChangedListener:Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;->resetTime()V

    goto :goto_0
.end method
