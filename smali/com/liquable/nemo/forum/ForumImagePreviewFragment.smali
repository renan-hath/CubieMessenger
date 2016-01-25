.class public Lcom/liquable/nemo/forum/ForumImagePreviewFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "ForumImagePreviewFragment.java"


# static fields
.field public static final ARTICLE_REPLY_RESULT:Ljava/lang/String; = "ARTICLE_REPLY"

.field private static final EDIT_CODE:I

.field public static debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private image:Landroid/graphics/Bitmap;

.field private imageUri:Landroid/net/Uri;

.field private inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

.field private previewImageView:Landroid/widget/ImageView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private tempFileName:Ljava/lang/String;

.field private widgetManager:Lcom/liquable/nemo/chat/WidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/liquable/nemo/forum/ForumImagePreviewActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->send()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->openImageEditor()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->copyContentToFile(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->updateImage(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)Lcom/liquable/nemo/chat/WidgetManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->removeDialog(I)V

    return-void
.end method

.method private clearImage()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setSendEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setPaintEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->clear()V

    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->image:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    .line 98
    iput-object v2, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->image:Landroid/graphics/Bitmap;

    .line 99
    iput-object v2, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->imageUri:Landroid/net/Uri;

    .line 100
    return-void
.end method

.method private copyContentToFile(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "file"

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    .end local p1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p1

    .line 109
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 110
    .local v1, "inputStream":Ljava/io/InputStream;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    iget-object v4, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->tempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 111
    .local v2, "tempFile":Ljava/io/File;
    invoke-static {v1, v2}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 112
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private handleResultEdit(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->loadPreview(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private initEmojiWidget()V
    .locals 6

    .prologue
    .line 173
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v1, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$1;-><init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->EMOJI:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    aput-object v5, v3, v4

    .line 182
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 173
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/WidgetManager;->initEmojiWidget(Landroid/view/View$OnClickListener;Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;Ljava/util/List;)V

    .line 183
    return-void
.end method

.method private initInputMessageWidget()Lcom/liquable/nemo/chat/widget/InputMessageWidget;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    const/4 v1, 0x1

    new-instance v2, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$2;-><init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V

    new-instance v5, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$3;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$3;-><init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/chat/WidgetManager;->initInputMessageWidget(ZLcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;Ljava/lang/Runnable;Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    return-object v0
.end method

.method private initPaintWidget()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v1, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$4;-><init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V

    invoke-virtual {v0, v2, v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->initPaintWidget(Landroid/view/View$OnClickListener;Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method private loadPreview(Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "finalData"    # Landroid/net/Uri;
    .param p2, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 274
    :goto_0
    return-void

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->imageUri:Landroid/net/Uri;

    .line 238
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setSendEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setPaintEnabled(Z)V

    .line 240
    new-instance v0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;-><init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Landroid/net/Uri;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 273
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private openImageEditor()V
    .locals 5

    .prologue
    .line 391
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->tempFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 393
    .local v1, "tempFileUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->imageUri:Landroid/net/Uri;

    invoke-static {v2, v3, v1}, Lcom/liquable/nemo/aviary/AviaryUtil;->createFeatherActivityIfSupport(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 396
    .local v0, "newIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d00a1

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private saveViewToImageForPaint(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 11
    .param p1, "paintBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "outputFile"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getImagePositionAndSize()[I

    move-result-object v5

    .line 405
    .local v5, "positionAndSize":[I
    iget-object v6, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->image:Landroid/graphics/Bitmap;

    const/4 v7, 0x2

    aget v7, v5, v7

    const/4 v8, 0x3

    aget v8, v5, v8

    invoke-static {v6, v7, v8, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 410
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 411
    move-object v3, v0

    .line 416
    .local v3, "mutableBitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 417
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1, v9, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 420
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 425
    .local v4, "out":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v3, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 427
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 428
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 413
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v3    # "mutableBitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v6, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 414
    .restart local v3    # "mutableBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, v3}, Lcom/liquable/nemo/util/ImageUtils;->recycleOldIfNotSame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 429
    .restart local v1    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private send()V
    .locals 9

    .prologue
    .line 436
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getPaintBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 437
    .local v8, "paintBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 438
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->tempFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 439
    .local v7, "outputFile":Ljava/io/File;
    invoke-direct {p0, v8, v7}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->saveViewToImageForPaint(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 440
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 445
    .end local v7    # "outputFile":Ljava/io/File;
    .local v6, "fileUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewActivity$CreateIntent;->getArticle(Landroid/content/Intent;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v4

    .line 446
    .local v4, "article":Lcom/liquable/nemo/forum/model/article/Article;
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewActivity$CreateIntent;->getForumBoardDto(Landroid/content/Intent;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v3

    .line 447
    .local v3, "forumBoardDto":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->getText()Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, "content":Ljava/lang/String;
    new-instance v0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;-><init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 484
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$8;->execute([Ljava/lang/Object;)V

    .line 485
    return-void

    .line 442
    .end local v3    # "forumBoardDto":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .end local v4    # "article":Lcom/liquable/nemo/forum/model/article/Article;
    .end local v5    # "content":Ljava/lang/String;
    .end local v6    # "fileUri":Landroid/net/Uri;
    :cond_0
    iget-object v6, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->imageUri:Landroid/net/Uri;

    .restart local v6    # "fileUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private updateImage(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 488
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->previewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 494
    if-eqz p1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;

    .line 496
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getImagePositionAndSize()[I

    move-result-object v1

    .line 495
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->setWindowPositionAndSize([I)V

    goto :goto_0
.end method


# virtual methods
.method public getImagePositionAndSize()[I
    .locals 17

    .prologue
    .line 120
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 121
    .local v10, "tv":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const/16 v15, 0x30

    invoke-static {v14, v15}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    .line 122
    .local v1, "actionBarHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const/16 v15, 0x19

    invoke-static {v14, v15}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v9

    .line 123
    .local v9, "statusBarHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const/16 v15, 0x32

    invoke-static {v14, v15}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v5

    .line 124
    .local v5, "inputWidgetHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const v15, 0x10102eb

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v10, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 125
    iget v14, v10, Landroid/util/TypedValue;->data:I

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 125
    invoke-static {v14, v15}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 128
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeight(Landroid/content/Context;)I

    move-result v14

    sub-int/2addr v14, v9

    sub-int/2addr v14, v1

    sub-int v11, v14, v5

    .line 133
    .local v11, "viewHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 134
    .local v4, "imageWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 135
    .local v3, "imageHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v12

    .line 136
    .local v12, "viewWidth":I
    int-to-float v14, v4

    int-to-float v15, v12

    div-float v13, v14, v15

    .line 137
    .local v13, "wRatio":F
    int-to-float v14, v3

    int-to-float v15, v11

    div-float v2, v14, v15

    .line 138
    .local v2, "hRatio":F
    const/4 v8, 0x0

    .line 140
    .local v8, "ratio":F
    if-lt v4, v12, :cond_1

    if-ge v3, v11, :cond_2

    :cond_1
    if-gt v4, v12, :cond_5

    if-gt v3, v11, :cond_5

    .line 142
    :cond_2
    cmpl-float v14, v13, v2

    if-lez v14, :cond_4

    .line 143
    int-to-float v14, v12

    int-to-float v15, v4

    div-float/2addr v14, v15

    invoke-static {v8, v14}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 152
    :cond_3
    :goto_0
    int-to-float v14, v4

    mul-float/2addr v14, v8

    float-to-int v4, v14

    .line 153
    int-to-float v14, v3

    mul-float/2addr v14, v8

    float-to-int v3, v14

    .line 154
    sub-int v14, v12, v4

    div-int/lit8 v6, v14, 0x2

    .line 155
    .local v6, "posX":I
    sub-int v14, v11, v3

    div-int/lit8 v7, v14, 0x2

    .line 158
    .local v7, "posY":I
    mul-int v14, v4, v3

    if-nez v14, :cond_7

    .line 159
    const/4 v14, 0x4

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    const/4 v15, 0x2

    aput v12, v14, v15

    const/4 v15, 0x3

    aput v11, v14, v15

    .line 161
    :goto_1
    return-object v14

    .line 145
    .end local v6    # "posX":I
    .end local v7    # "posY":I
    :cond_4
    int-to-float v14, v11

    int-to-float v15, v3

    div-float/2addr v14, v15

    invoke-static {v8, v14}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_0

    .line 147
    :cond_5
    if-ge v4, v12, :cond_6

    if-lt v3, v11, :cond_6

    .line 148
    int-to-float v14, v11

    int-to-float v15, v3

    div-float/2addr v14, v15

    invoke-static {v8, v14}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_0

    .line 149
    :cond_6
    if-lt v4, v12, :cond_3

    if-ge v3, v11, :cond_3

    .line 150
    int-to-float v14, v12

    int-to-float v15, v4

    div-float/2addr v14, v15

    invoke-static {v8, v14}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_0

    .line 161
    .restart local v6    # "posX":I
    .restart local v7    # "posY":I
    :cond_7
    const/4 v14, 0x4

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v6, v14, v15

    const/4 v15, 0x1

    aput v7, v14, v15

    const/4 v15, 0x2

    aput v4, v14, v15

    const/4 v15, 0x3

    aput v3, v14, v15

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 278
    packed-switch p1, :pswitch_data_0

    .line 283
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/liquable/nemo/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 284
    return-void

    .line 280
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->handleResultEdit(ILandroid/content/Intent;)V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method onBackPressed()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->toggleAnyVisibleWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->tempFileName:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 303
    const v1, 0x7f0300b4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/liquable/nemo/chat/WidgetManager;-><init>(Landroid/view/View;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    .line 305
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->initInputMessageWidget()Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->inputMessageWidget:Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    .line 306
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->initPaintWidget()V

    .line 307
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->initEmojiWidget()V

    .line 308
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v2, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$6;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$6;-><init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->setOnWidgetOpenCloseListener(Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;)V

    .line 337
    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->previewImageView:Landroid/widget/ImageView;

    .line 341
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->clearImage()V

    .line 347
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onDestroy()V

    .line 348
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 352
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onResume()V

    .line 353
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->onResume()V

    .line 355
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->loadPreview(Landroid/net/Uri;Z)V

    .line 358
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 362
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onStart()V

    .line 363
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 367
    :cond_0
    new-instance v1, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$7;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$7;-><init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V

    iput-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 376
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 387
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onStop()V

    .line 388
    return-void
.end method
