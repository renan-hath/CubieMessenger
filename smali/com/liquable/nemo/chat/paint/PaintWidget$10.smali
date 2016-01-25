.class Lcom/liquable/nemo/chat/paint/PaintWidget$10;
.super Ljava/lang/Object;
.source "PaintWidget.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/PaintWidget$OnPrepareCreatingDecorationListener;


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


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/PaintWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/paint/PaintWidget;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$10;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepare(Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;)V
    .locals 2
    .param p1, "property"    # Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintWidget$10;->this$0:Lcom/liquable/nemo/chat/paint/PaintWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintWidget;->onOpenEmojiWidget:Lcom/liquable/nemo/chat/paint/PaintWidget$OnOpenEmojiWidget;
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->access$600(Lcom/liquable/nemo/chat/paint/PaintWidget;)Lcom/liquable/nemo/chat/paint/PaintWidget$OnOpenEmojiWidget;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;

    invoke-direct {v1, p1}, Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;-><init>(Lcom/liquable/nemo/chat/paint/PaintDecorationProperty;)V

    invoke-interface {v0, v1}, Lcom/liquable/nemo/chat/paint/PaintWidget$OnOpenEmojiWidget;->onOpen(Lcom/liquable/nemo/chat/paint/PaintWidget$CreatePaintDecorationContext;)V

    .line 306
    return-void
.end method
