.class public Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;
.super Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;
.source "FavoriteGrid.java"


# instance fields
.field private containsEmoji:Z

.field private containsSticker:Z

.field private final emojiGrid:Landroid/widget/GridView;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private onEmojiClickListener:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;

.field private onStickerClickListener:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 30
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03013b

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0800bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->emojiGrid:Landroid/widget/GridView;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;)Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->onStickerClickListener:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;)Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->onEmojiClickListener:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;

    return-object v0
.end method


# virtual methods
.method public init(Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;Lcom/liquable/nemo/util/ImageLoader;ZZ)V
    .locals 0
    .param p1, "onEmojiClickListener"    # Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;
    .param p2, "onStickerClickListener"    # Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;
    .param p3, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p4, "containsEmoji"    # Z
    .param p5, "containsSticker"    # Z

    .prologue
    .line 39
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->onEmojiClickListener:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;

    .line 40
    iput-object p2, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->onStickerClickListener:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;

    .line 41
    iput-object p3, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 42
    iput-boolean p4, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->containsEmoji:Z

    .line 43
    iput-boolean p5, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->containsSticker:Z

    .line 44
    return-void
.end method

.method public updateGrid(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-boolean v3, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->containsEmoji:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getFavoriteEmojis()Ljava/util/List;

    move-result-object v2

    .line 50
    .local v2, "emojis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    iget-boolean v3, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->containsSticker:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getFavoriteStickers()Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    new-instance v0, Lcom/liquable/nemo/chat/FavoriteAdapter;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/liquable/nemo/chat/FavoriteAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/liquable/nemo/util/ImageLoader;)V

    .line 53
    .local v0, "adapter":Lcom/liquable/nemo/chat/FavoriteAdapter;
    iget-object v3, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->emojiGrid:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v3, p0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->emojiGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid$1;

    invoke-direct {v4, p0, v0}, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid$1;-><init>(Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;Lcom/liquable/nemo/chat/FavoriteAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-void

    .line 49
    .end local v0    # "adapter":Lcom/liquable/nemo/chat/FavoriteAdapter;
    .end local v1    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "emojis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 51
    .restart local v2    # "emojis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method
