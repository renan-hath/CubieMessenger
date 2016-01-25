.class Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$6;
.super Ljava/lang/Object;
.source "PaintEmojiWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$6;->this$0:Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$6;->this$0:Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->onCancelListener:Lcom/liquable/nemo/chat/paint/OnPropertyListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->access$300(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)Lcom/liquable/nemo/chat/paint/OnPropertyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget$6;->this$0:Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;

    # getter for: Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->property:Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;
    invoke-static {v1}, Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;->access$000(Lcom/liquable/nemo/chat/paint/PaintEmojiWidget;)Lcom/liquable/nemo/chat/paint/PaintEmojiProperty;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/chat/paint/OnPropertyListener;->onProperty(Ljava/lang/Object;)V

    .line 68
    return-void
.end method
