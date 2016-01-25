.class Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid$1;
.super Ljava/lang/Object;
.source "FavoriteGrid.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->updateGrid(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

.field final synthetic val$adapter:Lcom/liquable/nemo/chat/FavoriteAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;Lcom/liquable/nemo/chat/FavoriteAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid$1;->this$0:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    iput-object p2, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid$1;->val$adapter:Lcom/liquable/nemo/chat/FavoriteAdapter;

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
    .line 60
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid$1;->val$adapter:Lcom/liquable/nemo/chat/FavoriteAdapter;

    invoke-virtual {v1, p3}, Lcom/liquable/nemo/chat/FavoriteAdapter;->isSticker(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid$1;->this$0:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    # getter for: Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->onStickerClickListener:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->access$000(Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;)Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;->onStickerClick(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid$1;->this$0:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    # getter for: Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->onEmojiClickListener:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->access$100(Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;)Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;->onEmojiClick(Ljava/lang/String;)V

    goto :goto_0
.end method
