.class Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$1;
.super Ljava/lang/Object;
.source "EmojiGrid.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;->updateGrid(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$1;->this$0:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "emojiCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$1;->this$0:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;

    # getter for: Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;->listener:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;->access$000(Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;)Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;->onEmojiClick(Ljava/lang/String;)V

    .line 49
    return-void
.end method
