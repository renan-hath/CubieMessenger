.class public Lcom/liquable/nemo/chat/EmojiAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmojiAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final emojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "emojis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/chat/EmojiAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/liquable/nemo/chat/EmojiAdapter;->emojis:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/chat/EmojiAdapter;->emojis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/chat/EmojiAdapter;->emojis:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 49
    if-nez p2, :cond_1

    .line 50
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/liquable/nemo/chat/EmojiAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v2, "emojiView":Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v4, p0, Lcom/liquable/nemo/chat/EmojiAdapter;->context:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/liquable/nemo/chat/EmojiAdapter;->context:Landroid/content/Context;

    .line 53
    invoke-static {v5, v7}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 58
    :goto_0
    iget-object v3, p0, Lcom/liquable/nemo/chat/EmojiAdapter;->emojis:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "emojiCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/chat/EmojiAdapter;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/liquable/nemo/chat/EmojiUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_0
    return-object v2

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "emojiCode":Ljava/lang/String;
    .end local v2    # "emojiView":Landroid/widget/ImageView;
    :cond_1
    move-object v2, p2

    .line 56
    check-cast v2, Landroid/widget/ImageView;

    .restart local v2    # "emojiView":Landroid/widget/ImageView;
    goto :goto_0
.end method
