.class final Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;
.super Ljava/lang/Object;
.source "PaintWidget.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/PaintView$OnPaintChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/paint/PaintWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnPaintChangedListener"
.end annotation


# instance fields
.field lastChangedTime:J

.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V
    .locals 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;->lastChangedTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/chat/paint/PaintWidget;Lcom/liquable/nemo/chat/paint/PaintWidget$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;
    .param p2, "x1"    # Lcom/liquable/nemo/chat/paint/PaintWidget$1;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;-><init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    return-void
.end method


# virtual methods
.method public onPaintChanged(Lcom/liquable/nemo/chat/paint/PaintView;Z)V
    .locals 6
    .param p1, "thatPaintView"    # Lcom/liquable/nemo/chat/paint/PaintView;
    .param p2, "added"    # Z

    .prologue
    .line 63
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    # invokes: Lcom/liquable/nemo/chat/paint/PaintWidget;->refreshButtonsState()V
    invoke-static {v2}, Lcom/liquable/nemo/chat/paint/PaintWidget;->access$000(Lcom/liquable/nemo/chat/paint/PaintWidget;)V

    .line 64
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/paint/PaintWidget;->invalidate()V

    .line 66
    if-nez p2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 71
    .local v0, "now":J
    iget-wide v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;->lastChangedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f40

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintWidget;->onPaintDrawingListener:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/liquable/nemo/chat/paint/PaintWidget;->access$100(Lcom/liquable/nemo/chat/paint/PaintWidget;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 73
    iput-wide v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;->lastChangedTime:J

    goto :goto_0
.end method

.method public resetTime()V
    .locals 2

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$OnPaintChangedListener;->lastChangedTime:J

    .line 80
    return-void
.end method
