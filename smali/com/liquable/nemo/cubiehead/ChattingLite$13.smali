.class Lcom/liquable/nemo/cubiehead/ChattingLite$13;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;->initEmojiWidget(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$13;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;)V
    .locals 1
    .param p1, "emojiCode"    # Ljava/lang/String;
    .param p2, "selectionContext"    # Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$13;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$1600(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->inputEmoji(Ljava/lang/String;)V

    .line 579
    return-void
.end method
