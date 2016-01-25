.class Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "ChatStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/status/view/ChatStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircleAvatarImage"
.end annotation


# instance fields
.field private final WIDTH_IN_PIXEL:I

.field private final senderUid:Ljava/lang/String;

.field final synthetic this$0:Lcom/liquable/nemo/status/view/ChatStatusView;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/status/view/ChatStatusView;Ljava/lang/String;)V
    .locals 2
    .param p2, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    invoke-virtual {v0}, Lcom/liquable/nemo/status/view/ChatStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->WIDTH_IN_PIXEL:I

    .line 85
    iput-object p2, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->senderUid:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private createDefaultMemberIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202a9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->WIDTH_IN_PIXEL:I

    iget v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->WIDTH_IN_PIXEL:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getOuterType()Lcom/liquable/nemo/status/view/ChatStatusView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    return-object v0
.end method

.method private senderScaledDownIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    iget-object v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->senderUid:Ljava/lang/String;

    invoke-static {v2}, Lcom/liquable/nemo/friend/model/Account;->createIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 160
    .local v1, "iconLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 162
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->createDefaultMemberIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 169
    :goto_0
    return-object v2

    .line 166
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->WIDTH_IN_PIXEL:I

    iget v5, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->WIDTH_IN_PIXEL:I

    invoke-static {v2, v3, v4, v5}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    .line 169
    invoke-direct {p0, p1}, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->createDefaultMemberIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    if-ne p0, p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 103
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 105
    check-cast v0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;

    .line 106
    .local v0, "other":Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;
    invoke-direct {p0}, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->getOuterType()Lcom/liquable/nemo/status/view/ChatStatusView;

    move-result-object v3

    invoke-direct {v0}, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->getOuterType()Lcom/liquable/nemo/status/view/ChatStatusView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 107
    goto :goto_0

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->senderUid:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 110
    iget-object v3, v0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->senderUid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 111
    goto :goto_0

    .line 113
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->senderUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->senderUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 114
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 121
    const/16 v0, 0x1f

    .line 122
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 123
    .local v1, "result":I
    invoke-direct {p0}, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->getOuterType()Lcom/liquable/nemo/status/view/ChatStatusView;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 124
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->senderUid:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 125
    return v1

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->senderUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->senderScaledDownIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 131
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 132
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 131
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 134
    .local v1, "canvasBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02052e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 137
    .local v3, "mask":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 138
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 141
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 142
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    .line 144
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 145
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    invoke-virtual {v0, v2, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 147
    invoke-static {v2}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    .line 149
    return-object v1
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 2
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    iget v1, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->WIDTH_IN_PIXEL:I

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/status/view/ChatStatusView;->setMinimumWidth(I)V

    .line 155
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    iget v1, p0, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;->WIDTH_IN_PIXEL:I

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/status/view/ChatStatusView;->setMinimumHeight(I)V

    .line 156
    return-void
.end method
