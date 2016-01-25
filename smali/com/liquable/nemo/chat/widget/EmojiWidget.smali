.class public Lcom/liquable/nemo/chat/widget/EmojiWidget;
.super Lcom/liquable/nemo/chat/widget/ChattingWidget;
.source "EmojiWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;,
        Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;
    }
.end annotation


# static fields
.field private static final NONE:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private customStickerGrid:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

.field private emojiGrid:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;

.field private favoriteEmoji:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private favoriteGrid:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

.field private horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

.field private lastSelectedGrid:Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;

.field private onCustomStickerListener:Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;

.field private onEmojiSelectListener:Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;

.field private onStickerSelectListener:Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;

.field private selectedTabTag:Ljava/lang/String;

.field private selectionContext:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

.field private stickerAdapter:Lcom/liquable/nemo/chat/StickerAdapter;

.field private stickerGrid:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

.field private tabArrowLeft:Landroid/view/View;

.field private tabArrowRight:Landroid/view/View;

.field private tabLayout:Landroid/widget/LinearLayout;

.field private final tabs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$1;

    invoke-direct {v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->NONE:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    sget-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->NONE:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectionContext:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteEmoji:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabs:Ljava/util/Map;

    .line 114
    sget-object v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;-><init>(Landroid/content/Context;)V

    .line 64
    sget-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->NONE:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectionContext:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteEmoji:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabs:Ljava/util/Map;

    .line 114
    sget-object v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->values()[Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->init(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/widget/EmojiWidget;Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/EmojiWidget;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onSwitch(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/widget/EmojiWidget;)Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onCustomStickerListener:Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/widget/EmojiWidget;)Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectionContext:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/widget/EmojiWidget;)Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onEmojiSelectListener:Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/widget/EmojiWidget;)Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onStickerSelectListener:Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/widget/EmojiWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/EmojiWidget;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->showHideTabArrow()V

    return-void
.end method

.method private createEmojiTabBtn(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "grid"    # Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;
    .param p4, "btnDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 160
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030170

    const/4 v3, 0x0

    .line 161
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 163
    .local v0, "btn":Landroid/widget/ImageButton;
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 165
    new-instance v1, Lcom/liquable/nemo/chat/widget/EmojiWidget$2;

    invoke-direct {v1, p0, p3}, Lcom/liquable/nemo/chat/widget/EmojiWidget$2;-><init>(Lcom/liquable/nemo/chat/widget/EmojiWidget;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-virtual {v0, p4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    return-object v0
.end method

.method private createOnCustomStickerSendListener()Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget$3;-><init>(Lcom/liquable/nemo/chat/widget/EmojiWidget;)V

    return-object v0
.end method

.method private createOnEmojiClickListenerForAdapter()Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget$4;-><init>(Lcom/liquable/nemo/chat/widget/EmojiWidget;)V

    return-object v0
.end method

.method private createOnStickerClickListenerForAdapter()Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$5;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget$5;-><init>(Lcom/liquable/nemo/chat/widget/EmojiWidget;)V

    return-object v0
.end method

.method private createTab(Ljava/util/Map;Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2, "tabCode"    # Ljava/lang/String;
    .param p3, "grid"    # Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "oldStickerCategoryBtnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 234
    .local v0, "emojiTabBtn":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabs:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    return-void

    .line 231
    .end local v0    # "emojiTabBtn":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->createEmojiTabBtn(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "emojiTabBtn":Landroid/view/View;
    goto :goto_0
.end method

.method private getStateListDrawable(Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "category"    # Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    .prologue
    .line 239
    sget-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$EmojiUtil$EmojiCategory:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 245
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020254

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02024c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020248

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getStateListDrawable(Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "emojiType"    # Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    .prologue
    .line 250
    sget-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$EmojiUtil$EmojiType:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 256
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020254

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02024b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02024f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getStateListDrawable(Landroid/content/Context;Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)Landroid/graphics/drawable/StateListDrawable;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryDto"    # Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 68
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    sget-object v9, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    .line 69
    invoke-virtual {v9}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->resolveIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 68
    invoke-virtual {v8, v9}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 70
    .local v3, "normalFile":Ljava/io/File;
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    sget-object v9, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    .line 71
    invoke-virtual {v9}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->resolvePressedIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 70
    invoke-virtual {v8, v9}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 73
    .local v6, "pressedFile":Ljava/io/File;
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 74
    .local v0, "bg":Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v3}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v6}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 75
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 76
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 77
    .local v7, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 79
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 81
    const-wide/high16 v10, 0x4064000000000000L    # 160.0

    invoke-static {p0}, Lcom/liquable/nemo/util/NemoUIs;->getDensity(Landroid/content/Context;)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    :goto_0
    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 84
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, "normal":Landroid/graphics/drawable/Drawable;
    move-object v8, v2

    .line 85
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    iget v9, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 86
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .local v5, "pressed":Landroid/graphics/drawable/Drawable;
    move-object v8, v5

    .line 87
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    iget v9, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 93
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "windowManager":Landroid/view/WindowManager;
    :goto_1
    new-array v8, v13, [I

    const v9, 0x10100a7

    aput v9, v8, v12

    invoke-virtual {v0, v8, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 94
    new-array v8, v13, [I

    const v9, 0x10100a1

    aput v9, v8, v12

    invoke-virtual {v0, v8, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 95
    new-array v8, v12, [I

    invoke-virtual {v0, v8, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 96
    return-object v0

    .line 81
    .end local v2    # "normal":Landroid/graphics/drawable/Drawable;
    .end local v5    # "pressed":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v7    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 89
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020255

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 90
    .restart local v2    # "normal":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020256

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 91
    .restart local v5    # "pressed":Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v8, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadCategoryIcons(Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)V

    goto :goto_1
.end method

.method private handlerStickerCategoryIconTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "event"    # Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .prologue
    .line 281
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "categoryCode":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 284
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->updateStickerCategoryIcon(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handlerStickerPackageTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "event"    # Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .prologue
    .line 293
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "packageCode":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 296
    :pswitch_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->addStickerTabsIfNecessary()V

    .line 297
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerGrid:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->updateStickerPackageComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handlerStickerThumbnailTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "event"    # Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .prologue
    .line 306
    const-string/jumbo v1, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "stickerCode":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 314
    :goto_0
    return-void

    .line 309
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerGrid:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->updateStickerThumbnailComplete(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handlerStickerTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "event"    # Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .prologue
    .line 318
    sget-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I

    invoke-virtual {p2}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 320
    :pswitch_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->addStickerTabsIfNecessary()V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initTabs()V
    .locals 11

    .prologue
    .line 378
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v5}, Lcom/liquable/nemo/sticker/model/StickerManager;->listSelectedCategoriesByOrder()Ljava/util/List;

    move-result-object v4

    .line 381
    .local v4, "selectedCategories":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerCategoryDto;>;"
    new-instance v3, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabs:Ljava/util/Map;

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 383
    .local v3, "oldStickerCategoryBtnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabs:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 384
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 386
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->categories:Ljava/util/List;

    sget-object v6, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    sget-object v5, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    .line 388
    invoke-virtual {v5}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteGrid:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    sget-object v7, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    .line 390
    invoke-direct {p0, v7}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->getStateListDrawable(Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 387
    invoke-direct {p0, v3, v5, v6, v7}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->createTab(Ljava/util/Map;Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;Landroid/graphics/drawable/Drawable;)V

    .line 392
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->categories:Ljava/util/List;

    sget-object v6, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->EMOJI:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 393
    invoke-static {}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->values()[Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v2, v6, v5

    .line 395
    .local v2, "emojiType":Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->name()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->emojiGrid:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;

    .line 397
    invoke-direct {p0, v2}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->getStateListDrawable(Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 394
    invoke-direct {p0, v3, v8, v9, v10}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->createTab(Ljava/util/Map;Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;Landroid/graphics/drawable/Drawable;)V

    .line 393
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 401
    .end local v2    # "emojiType":Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;
    :cond_1
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->categories:Ljava/util/List;

    sget-object v6, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->CUSTOM_STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 402
    sget-object v5, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->CUSTOM_STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    .line 403
    invoke-virtual {v5}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->customStickerGrid:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    sget-object v7, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->CUSTOM_STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    .line 405
    invoke-direct {p0, v7}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->getStateListDrawable(Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 402
    invoke-direct {p0, v3, v5, v6, v7}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->createTab(Ljava/util/Map;Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;Landroid/graphics/drawable/Drawable;)V

    .line 408
    :cond_2
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->categories:Ljava/util/List;

    sget-object v6, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 409
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .line 410
    .local v0, "category":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "categoryCode":Ljava/lang/String;
    iget-object v6, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerGrid:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    iget-object v7, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    .line 414
    invoke-static {v7, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->getStateListDrawable(Landroid/content/Context;Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    .line 411
    invoke-direct {p0, v3, v1, v6, v7}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->createTab(Ljava/util/Map;Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 418
    .end local v0    # "category":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    .end local v1    # "categoryCode":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private isStickerOrderChanged()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 421
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->listSelectedCategoriesByOrder()Ljava/util/List;

    move-result-object v2

    .line 422
    .local v2, "selectedCategories":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerCategoryDto;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    invoke-static {}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->values()[Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v5, v6

    if-eq v3, v5, :cond_0

    move v3, v4

    .line 433
    :goto_0
    return v3

    .line 426
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 427
    iget-object v3, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->values()[Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 428
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    .local v0, "categoryCode":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 430
    goto :goto_0

    .line 426
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 433
    .end local v0    # "categoryCode":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onSwitch(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "iEmojiGrid"    # Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;

    .prologue
    const/16 v1, 0x8

    .line 519
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->updateTabSelected(Ljava/lang/String;)V

    .line 520
    iput-object p2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->lastSelectedGrid:Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;

    .line 522
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->emojiGrid:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerGrid:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteGrid:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->customStickerGrid:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->setVisibility(I)V

    .line 527
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;->setVisibility(I)V

    .line 528
    invoke-virtual {p2, p1}, Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;->updateGrid(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method private showHideTabArrow()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 572
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    invoke-virtual {v4}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getMeasuredWidth()I

    move-result v4

    sub-int v0, v1, v4

    .line 573
    .local v0, "scrollWidth":I
    if-gtz v0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabArrowLeft:Landroid/view/View;

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getScrollX()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabArrowRight:Landroid/view/View;

    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    invoke-virtual {v4}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getScrollX()I

    move-result v4

    if-ne v4, v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 576
    goto :goto_1

    :cond_2
    move v2, v3

    .line 577
    goto :goto_2
.end method

.method private updateTabSelected(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 619
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 620
    .local v0, "btn":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 622
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    goto :goto_0

    .line 624
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 627
    .end local v0    # "btn":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public addStickerTabsIfNecessary()V
    .locals 8

    .prologue
    .line 137
    iget-object v4, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->categories:Ljava/util/List;

    sget-object v5, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    :cond_0
    return-void

    .line 141
    :cond_1
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/sticker/model/StickerManager;->listSelectedCategoriesByOrder()Ljava/util/List;

    move-result-object v3

    .line 143
    .local v3, "selectedCategories":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerCategoryDto;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .line 144
    .local v1, "category":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "categoryCode":Ljava/lang/String;
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabs:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 146
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerGrid:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    iget-object v7, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    .line 149
    invoke-static {v7, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->getStateListDrawable(Landroid/content/Context;Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    .line 146
    invoke-direct {p0, v5, v2, v6, v7}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->createEmojiTabBtn(Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    .line 150
    .local v0, "btn":Landroid/view/View;
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabs:Ljava/util/Map;

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public handleExtraFileTransferEvent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 262
    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .line 264
    .local v0, "event":Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    const-string/jumbo v2, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "extraFileType":Ljava/lang/String;
    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_PACKAGE:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->handlerStickerPackageTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->handlerStickerTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V

    goto :goto_0

    .line 270
    :cond_2
    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 271
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->handlerStickerThumbnailTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V

    goto :goto_0

    .line 272
    :cond_3
    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_CATEGORY_ICON:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 273
    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->handlerStickerCategoryIconTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)V

    goto :goto_0

    .line 274
    :cond_4
    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->CUSTOM_STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->customStickerGrid:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->updateGrid(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p3, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;>;"
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    .line 331
    iput-object p3, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->categories:Ljava/util/List;

    .line 333
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 334
    .local v6, "layoutInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f03013a

    const/4 v3, 0x1

    invoke-virtual {v6, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 335
    .local v8, "rootView":Landroid/view/View;
    const v0, 0x7f0802f8

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabLayout:Landroid/widget/LinearLayout;

    .line 336
    const v0, 0x7f0802e8

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabArrowLeft:Landroid/view/View;

    .line 337
    const v0, 0x7f0802e9

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabArrowRight:Landroid/view/View;

    .line 338
    const v0, 0x7f0802ee

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    .line 339
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    new-instance v3, Lcom/liquable/nemo/chat/widget/EmojiWidget$6;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget$6;-><init>(Lcom/liquable/nemo/chat/widget/EmojiWidget;)V

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->setOnScrollListener(Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;)V

    .line 349
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getFavoriteEmojis()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteEmoji:Ljava/util/List;

    .line 350
    new-instance v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$7;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget$7;-><init>(Lcom/liquable/nemo/chat/widget/EmojiWidget;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 357
    const v0, 0x7f0802fb

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteGrid:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    .line 358
    const v0, 0x7f0802fa

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerGrid:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    .line 359
    const v0, 0x7f0802f9

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->emojiGrid:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;

    .line 360
    const v0, 0x7f0802fc

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->customStickerGrid:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    .line 362
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->createOnEmojiClickListenerForAdapter()Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;

    move-result-object v1

    .line 363
    .local v1, "onEmojiClickListener":Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->createOnStickerClickListenerForAdapter()Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;

    move-result-object v2

    .line 364
    .local v2, "onStickerClickListener":Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->createOnCustomStickerSendListener()Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;

    move-result-object v7

    .line 366
    .local v7, "onCustomStickerClickListener":Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteGrid:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    sget-object v3, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->EMOJI:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    .line 369
    invoke-interface {p3, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    sget-object v3, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    .line 370
    invoke-interface {p3, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    move-object v3, p2

    .line 366
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->init(Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;Lcom/liquable/nemo/util/ImageLoader;ZZ)V

    .line 371
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerGrid:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    invoke-virtual {v0, v2, p2}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->init(Lcom/liquable/nemo/chat/widget/emoji/StickerGrid$OnStickerClickListener;Lcom/liquable/nemo/util/ImageLoader;)V

    .line 372
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->emojiGrid:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;->init(Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid$OnEmojiClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->customStickerGrid:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    invoke-virtual {v0, v7, p2}, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->init(Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;Lcom/liquable/nemo/util/ImageLoader;)V

    .line 374
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteGrid:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->lastSelectedGrid:Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;

    .line 375
    return-void
.end method

.method protected onClose()V
    .locals 3

    .prologue
    .line 438
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 439
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 440
    new-instance v1, Lcom/liquable/nemo/chat/widget/EmojiWidget$8;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget$8;-><init>(Lcom/liquable/nemo/chat/widget/EmojiWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 454
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 455
    sget-object v1, Lcom/liquable/nemo/chat/widget/EmojiWidget;->NONE:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    iput-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectionContext:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    .line 456
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 460
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    sub-int v0, p2, v0

    invoke-super {p0, p1, v0}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onMeasure(II)V

    .line 461
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->showHideTabArrow()V

    .line 462
    return-void
.end method

.method protected onOpen(Z)V
    .locals 3
    .param p1, "isSecret"    # Z

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onOpen(Z)V

    .line 467
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->initTabs()V

    .line 468
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabs:Ljava/util/Map;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 469
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->updateTabSelected(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->lastSelectedGrid:Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;->isStickerMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerGrid:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onSwitch(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V

    .line 484
    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 485
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 486
    new-instance v1, Lcom/liquable/nemo/chat/widget/EmojiWidget$9;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget$9;-><init>(Lcom/liquable/nemo/chat/widget/EmojiWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 500
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 501
    return-void

    .line 472
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    sget-object v1, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->CUSTOM_STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->customStickerGrid:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onSwitch(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V

    goto :goto_0

    .line 474
    :cond_1
    sget-object v1, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteGrid:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onSwitch(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V

    goto :goto_0

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->emojiGrid:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;

    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onSwitch(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V

    goto :goto_0

    .line 480
    :cond_3
    sget-object v1, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    .line 481
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->updateTabSelected(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteGrid:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onSwitch(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V

    goto :goto_0
.end method

.method public onResume(Z)V
    .locals 3
    .param p1, "isSecret"    # Z

    .prologue
    .line 505
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerAdapter:Lcom/liquable/nemo/chat/StickerAdapter;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerAdapter:Lcom/liquable/nemo/chat/StickerAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/StickerAdapter;->reset()V

    .line 507
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->isStickerOrderChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->initTabs()V

    .line 509
    sget-object v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteGrid:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;->updateGrid(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->horizontalScrollView:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;

    invoke-virtual {v2}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->scrollTo(II)V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->addStickerTabsIfNecessary()V

    goto :goto_0
.end method

.method public refreshCustomStickers()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->customStickerGrid:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->updateGrid(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public refreshFavEmojis()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 536
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getFavoriteEmojis()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteEmoji:Ljava/util/List;

    .line 537
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteEmoji:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 538
    sget-object v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->favoriteGrid:Lcom/liquable/nemo/chat/widget/emoji/FavoriteGrid;

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onSwitch(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V

    .line 544
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 545
    return-void

    .line 541
    :cond_0
    sget-object v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->FACE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectedTabTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->emojiGrid:Lcom/liquable/nemo/chat/widget/emoji/EmojiGrid;

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onSwitch(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V

    goto :goto_0
.end method

.method public setDownloadNewStickerBtnOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerGrid:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->setOnShopBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    return-void
.end method

.method public setOnCustomStickerSendListener(Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;)V
    .locals 0
    .param p1, "onCustomStickerSendListener"    # Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onCustomStickerListener:Lcom/liquable/nemo/chat/WidgetManager$OnCustomStickerListener;

    .line 553
    return-void
.end method

.method public setOnEmojiSelectListener(Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;)V
    .locals 0
    .param p1, "onEmojiSelectListener"    # Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onEmojiSelectListener:Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;

    .line 557
    return-void
.end method

.method public setOnManageCustomStickerClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->customStickerGrid:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->setOnManageButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    return-void
.end method

.method public setOnStickerSelectListener(Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;)V
    .locals 0
    .param p1, "onStickerSelectListener"    # Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onStickerSelectListener:Lcom/liquable/nemo/chat/widget/EmojiWidget$OnSelectListener;

    .line 565
    return-void
.end method

.method public setSelectionContext(Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;)V
    .locals 0
    .param p1, "selectionContext"    # Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->selectionContext:Lcom/liquable/nemo/chat/widget/EmojiWidget$SelectionContext;

    .line 569
    return-void
.end method

.method public switchToCustomStickerGrid()V
    .locals 2

    .prologue
    .line 583
    sget-object v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->CUSTOM_STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->customStickerGrid:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->onSwitch(Ljava/lang/String;Lcom/liquable/nemo/chat/widget/emoji/AbstractEmojiGrid;)V

    .line 584
    return-void
.end method

.method public updateCustomStickerThumbnailReady()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->customStickerGrid:Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/emoji/CustomStickerGrid;->updateGrid(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public updateStickerCategoryIcon(Ljava/lang/String;)V
    .locals 8
    .param p1, "categoryCode"    # Ljava/lang/String;

    .prologue
    .line 591
    iget-object v5, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->tabs:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 592
    .local v1, "imageButton":Landroid/view/View;
    if-nez v1, :cond_1

    .line 608
    :cond_0
    return-void

    .line 595
    :cond_1
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v5}, Lcom/liquable/nemo/sticker/model/StickerManager;->listSelectedCategoriesByOrder()Ljava/util/List;

    move-result-object v4

    .line 597
    .local v4, "selectedCategories":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerCategoryDto;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .line 598
    .local v0, "category":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 599
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    .line 600
    invoke-virtual {v7}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->resolveIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 599
    invoke-virtual {v5, v7}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 601
    .local v2, "normalFile":Ljava/io/File;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    .line 602
    invoke-virtual {v7}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->resolvePressedIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 601
    invoke-virtual {v5, v7}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 603
    .local v3, "pressedFile":Ljava/io/File;
    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v1

    .line 604
    check-cast v5, Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->context:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/liquable/nemo/chat/widget/EmojiWidget;->getStateListDrawable(Landroid/content/Context;Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateStickerPackageComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerGrid:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->updateStickerPackageComplete(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public updateStickerThumbnailComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "stickerCode"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/EmojiWidget;->stickerGrid:Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/emoji/StickerGrid;->updateStickerThumbnailComplete(Ljava/lang/String;)V

    .line 616
    return-void
.end method
