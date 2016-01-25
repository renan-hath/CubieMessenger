.class public Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;
.super Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;
.source "EmojiGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;
    }
.end annotation


# instance fields
.field private final emojiGrid:Landroid/widget/GridView;

.field private listener:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030139

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0800bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;->emojiGrid:Landroid/widget/GridView;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;)Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;->listener:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;

    return-object v0
.end method


# virtual methods
.method public init(Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;->listener:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;

    .line 35
    return-void
.end method

.method public updateGrid(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p1}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/chat/EmojiUtil;->getEmojiCodes(Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;)Ljava/util/List;

    move-result-object v0

    .line 40
    .local v0, "emojis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;->emojiGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/liquable/nemo/chat/EmojiAdapter;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/liquable/nemo/chat/EmojiAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;->emojiGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$1;-><init>(Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    return-void
.end method
