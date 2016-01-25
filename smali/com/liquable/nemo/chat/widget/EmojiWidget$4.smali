.class Lcom/liquable/nemo/chat/widget/EmojiWidget$4;
.super Ljava/lang/Object;
.source "EmojiWidget.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/EmojiWidget;->createOnEmojiClickListenerForAdapter()Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/EmojiWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$4;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmojiClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "emojiCode"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$4;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/EmojiWidget;->onEmojiSelectListener:Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->access$300(Lcom/liquable/nemo/chat/widget/EmojiWidget;)Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$4;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/EmojiWidget;->onEmojiSelectListener:Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->access$300(Lcom/liquable/nemo/chat/widget/EmojiWidget;)Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget$4;->this$0:Lcom/liquable/nemo/chat/widget/EmojiWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectionContext:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->access$200(Lcom/liquable/nemo/chat/widget/EmojiWidget;)Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;->onSelect(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;)V

    .line 206
    :cond_0
    return-void
.end method
