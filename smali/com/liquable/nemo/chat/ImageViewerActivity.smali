.class public Lcom/liquable/nemo/chat/ImageViewerActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ImageViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;,
        Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;
    }
.end annotation


# static fields
.field private static final FACEBOOK_AUTH_REQUEST_CODE:I = 0x0

.field private static final GALLERY_HEIGHT_DP:I = 0x3c

.field private static KEY_MESSAGE:Ljava/lang/String; = null

.field private static final PAGE_SIZE:I = 0x40


# instance fields
.field private bottomSpacing:Landroid/view/View;

.field private currentMsgId:Ljava/lang/String;

.field private facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

.field private gallery:Landroid/widget/Gallery;

.field private handler:Landroid/os/Handler;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field leftInArchive:Z

.field leftNoMore:Z

.field private leftQueryTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/IMediaMessage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/IMediaMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field leftTime:J

.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/IMediaMessage;",
            ">;"
        }
    .end annotation
.end field

.field private picText:Landroid/widget/TextView;

.field rightInArchive:Z

.field rightNoMore:Z

.field private rightQueryTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/IMediaMessage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/IMediaMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field rightTime:J

.field private shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

.field private shareItem:Lcom/actionbarsherlock/view/MenuItem;

.field private touchImageView:Lcom/liquable/nemo/widget/TouchImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const-string/jumbo v0, "KEY_MESSAGE"

    sput-object v0, Lcom/liquable/nemo/chat/ImageViewerActivity;->KEY_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->isPaintMessage(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/ImageViewerActivity;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/chat/ImageViewerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftQuery()V

    return-void
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/chat/ImageViewerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->rightQuery()V

    return-void
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/chat/ImageViewerActivity;)Lcom/liquable/nemo/message/model/IMediaMessage;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getMessage()Lcom/liquable/nemo/message/model/IMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/chat/ImageViewerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;
    .param p2, "x2"    # Lcom/liquable/nemo/message/model/IMediaMessage;
    .param p3, "x3"    # Ljava/io/File;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/chat/ImageViewerActivity;->uploadImageToFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/message/model/IMediaMessage;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->shareToFacebook(Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getTopic(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/ImageViewerActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/ImageViewerActivity;)Landroid/widget/Gallery;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/ImageViewerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->currentMsgId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/ImageViewerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->showControlPanel()V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/chat/ImageViewerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->hideControlPanel()V

    return-void
.end method

.method static synthetic access$900(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->updateMessage(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    return-void
.end method

.method private afterDeleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 249
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->finish()V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const/4 v2, 0x0

    .line 255
    .local v2, "newIndex":I
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 256
    .local v0, "deletedIndex":I
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_2

    .line 257
    move v2, v0

    .line 261
    :goto_1
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 262
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;

    new-instance v4, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;

    iget-object v5, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;

    invoke-direct {v4, p0, p0, v5}, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 263
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/message/model/IMediaMessage;

    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/message/model/IMediaMessage;

    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v3, v1}, Landroid/widget/Gallery;->setSelection(I)V

    goto :goto_0

    .line 259
    .end local v1    # "i":I
    :cond_2
    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    .line 263
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static createIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/liquable/nemo/chat/ImageViewerActivity;->KEY_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 184
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    return-object v0
.end method

.method private static existsMessage(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 189
    sget-object v0, Lcom/liquable/nemo/chat/ImageViewerActivity;->KEY_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMessage()Lcom/liquable/nemo/message/model/IMediaMessage;
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/TouchImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 273
    :cond_0
    const/4 v0, 0x0

    .line 276
    :goto_0
    return-object v0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/TouchImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/IMediaMessage;

    .line 276
    .local v0, "msg":Lcom/liquable/nemo/message/model/IMediaMessage;
    goto :goto_0
.end method

.method private static getMessageId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 193
    sget-object v0, Lcom/liquable/nemo/chat/ImageViewerActivity;->KEY_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMessageType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    sget-object v0, Lcom/liquable/nemo/chat/ImageViewerActivity;->KEY_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTopic(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    sget-object v0, Lcom/liquable/nemo/chat/ImageViewerActivity;->KEY_MESSAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideControlPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 280
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 281
    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 283
    .local v0, "fadeOut":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->startAnimation(Landroid/view/animation/Animation;)V

    .line 284
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->bottomSpacing:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 286
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->bottomSpacing:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->picText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->picText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->picText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :cond_0
    return-void
.end method

.method private static isPaintMessage(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/liquable/nemo/message/model/PaintMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private leftQuery()V
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftNoMore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftQueryTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftQueryTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    new-instance v0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ImageViewerActivity$1;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftQueryTask:Landroid/os/AsyncTask;

    .line 349
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftQueryTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private rightQuery()V
    .locals 2

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->rightNoMore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->rightQueryTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->rightQueryTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    new-instance v0, Lcom/liquable/nemo/chat/ImageViewerActivity$5;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ImageViewerActivity$5;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->rightQueryTask:Landroid/os/AsyncTask;

    .line 604
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->rightQueryTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 608
    new-instance v0, Lcom/liquable/nemo/chat/ImageViewerActivity$6;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ImageViewerActivity$6;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 624
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ImageViewerActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 625
    return-void
.end method

.method private shareToFacebook(Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Lcom/liquable/nemo/message/model/IMediaMessage;
    .param p2, "mediaFile"    # Ljava/io/File;
    .param p3, "userComment"    # Ljava/lang/String;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    const/4 v1, 0x0

    new-instance v2, Lcom/liquable/nemo/chat/ImageViewerActivity$7;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/liquable/nemo/chat/ImageViewerActivity$7;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/facebook/FacebookSession;->asyncOpenForPublish(ILcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;)V

    .line 645
    return-void
.end method

.method private showControlPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 648
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 649
    const/high16 v1, 0x10a0000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 651
    .local v0, "fadeIn":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->startAnimation(Landroid/view/animation/Animation;)V

    .line 652
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 653
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->bottomSpacing:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 654
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->bottomSpacing:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->picText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->picText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 657
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->picText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    :cond_0
    return-void
.end method

.method private showShareToFacebookDialog(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 7
    .param p1, "msg"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    .line 662
    if-nez p1, :cond_0

    .line 694
    :goto_0
    return-void

    .line 666
    :cond_0
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 667
    .local v1, "mediaFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 668
    const v4, 0x7f0d0357

    invoke-direct {p0, v4}, Lcom/liquable/nemo/chat/ImageViewerActivity;->showToast(I)V

    goto :goto_0

    .line 672
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300a3

    const/4 v6, 0x0

    .line 673
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 674
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0801c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 675
    .local v0, "imageView":Landroid/widget/ImageView;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    const v4, 0x7f0801c1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 679
    .local v2, "shareEditText":Landroid/widget/EditText;
    invoke-static {p0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 680
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d03ec

    .line 681
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d00c5

    new-instance v6, Lcom/liquable/nemo/chat/ImageViewerActivity$9;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/ImageViewerActivity$9;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;)V

    .line 682
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d03b3

    new-instance v6, Lcom/liquable/nemo/chat/ImageViewerActivity$8;

    invoke-direct {v6, p0, p1, v1, v2}, Lcom/liquable/nemo/chat/ImageViewerActivity$8;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Landroid/widget/EditText;)V

    .line 686
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 693
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "msgResId"    # I

    .prologue
    .line 697
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/chat/ImageViewerActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity$10;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 703
    return-void
.end method

.method private updateMessage(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->currentMsgId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 716
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->currentMsgId:Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/widget/TouchImageView;->setTag(Ljava/lang/Object;)V

    .line 712
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    new-instance v2, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;)V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 714
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->updatePictureText(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    .line 715
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->updateShareItem(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0
.end method

.method private updatePictureText(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    .line 719
    instance-of v0, p1, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/PictureMessage;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/PictureMessage;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->picText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->picText:Landroid/widget/TextView;

    check-cast p1, Lcom/liquable/nemo/message/model/PictureMessage;

    .end local p1    # "message":Lcom/liquable/nemo/message/model/IMediaMessage;
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    :goto_0
    return-void

    .line 724
    .restart local p1    # "message":Lcom/liquable/nemo/message/model/IMediaMessage;
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->picText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->picText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateShareItem(Lcom/liquable/nemo/message/model/IMediaMessage;)V
    .locals 5
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IMediaMessage;

    .prologue
    .line 730
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v3, :cond_0

    .line 747
    :goto_0
    return-void

    .line 734
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    .local v2, "shareIntent":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 736
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_1

    .line 737
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    .line 741
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 742
    .local v1, "phototUri":Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 743
    const-string/jumbo v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 745
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

    invoke-virtual {v3, v2}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 746
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method private uploadImageToFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Lcom/liquable/nemo/message/model/IMediaMessage;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "facebookPublishRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;
    .param p2, "msg"    # Lcom/liquable/nemo/message/model/IMediaMessage;
    .param p3, "mediaFile"    # Ljava/io/File;
    .param p4, "caption"    # Ljava/lang/String;

    .prologue
    .line 753
    new-instance v0, Lcom/liquable/nemo/chat/ImageViewerActivity$11;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/chat/ImageViewerActivity$11;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;Landroid/content/Context;Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;Lcom/liquable/nemo/message/model/IMediaMessage;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 776
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ImageViewerActivity$11;->execute([Ljava/lang/Object;)V

    .line 777
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 355
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->bottomSpacing:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 356
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {p0}, Lcom/liquable/nemo/util/NemoUIs;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 357
    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 358
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->bottomSpacing:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    return-void

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/TouchImageView;->destroy()V

    .line 366
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 367
    return-void
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/facebook/FacebookSession;->onActivityResult(IILandroid/content/Intent;)V

    .line 377
    :cond_0
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->existsMessage(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->finish()V

    .line 466
    :goto_0
    return-void

    .line 386
    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->handler:Landroid/os/Handler;

    .line 388
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->setTitle()V

    .line 389
    const v3, 0x7f030030

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->setContentView(I)V

    .line 390
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getMessageId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->currentMsgId:Ljava/lang/String;

    .line 392
    const v3, 0x7f0800c0

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/widget/TouchImageView;

    iput-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    .line 393
    const v3, 0x7f0800c3

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->picText:Landroid/widget/TextView;

    .line 395
    new-instance v3, Lcom/liquable/nemo/facebook/FacebookSession;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/facebook/FacebookSession;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;

    .line 397
    const/4 v3, 0x1

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;Lorg/apache/commons/lang3/math/Fraction;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 398
    const v3, 0x7f0800c2

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    iput-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;

    .line 399
    const v3, 0x7f0800c1

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->bottomSpacing:Landroid/view/View;

    .line 400
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->bottomSpacing:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 401
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {p0}, Lcom/liquable/nemo/util/NemoUIs;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 402
    :goto_1
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 403
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->bottomSpacing:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->currentMsgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->findByIdReturnTable(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 406
    .local v2, "value":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/Boolean;>;"
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/liquable/nemo/message/model/IMediaMessage;

    .line 407
    .local v1, "message":Lcom/liquable/nemo/message/model/IMediaMessage;
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftInArchive:Z

    .line 409
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->rightInArchive:Z

    .line 410
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/DomainMessage;->getReceiveTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftTime:J

    .line 411
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/DomainMessage;->getReceiveTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->rightTime:J

    .line 413
    invoke-interface {v1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 414
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v3

    .line 413
    invoke-static {v3}, Lcom/liquable/nemo/util/ImageUtils;->isBitmapExist(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 415
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->finish()V

    goto/16 :goto_0

    .line 402
    .end local v1    # "message":Lcom/liquable/nemo/message/model/IMediaMessage;
    .end local v2    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/Boolean;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto :goto_1

    .line 419
    .restart local v1    # "message":Lcom/liquable/nemo/message/model/IMediaMessage;
    .restart local v2    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/Boolean;>;"
    :cond_2
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->updatePictureText(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    .line 421
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    new-instance v5, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;

    invoke-direct {v5, p0, v1}, Lcom/liquable/nemo/chat/ImageViewerActivity$TouchLoadableImage;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;)V

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 423
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/widget/TouchImageView;->setTag(Ljava/lang/Object;)V

    .line 424
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    new-instance v4, Lcom/liquable/nemo/chat/ImageViewerActivity$2;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/chat/ImageViewerActivity$2;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;)V

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/widget/TouchImageView;->setTouchImageViewListener(Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;)V

    .line 445
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftQuery()V

    .line 446
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->rightQuery()V

    .line 447
    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;

    new-instance v4, Lcom/liquable/nemo/chat/ImageViewerActivity$3;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/chat/ImageViewerActivity$3;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_0
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 471
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v2, 0x7f0f0009

    invoke-virtual {v0, v2, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 473
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->isPaintMessage(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    const v2, 0x7f080371

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 479
    :goto_0
    const v2, 0x7f08036f

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 480
    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v2}, Lcom/actionbarsherlock/view/MenuItem;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/widget/ShareActionProvider;

    iput-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

    .line 481
    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

    const-string/jumbo v3, "cubie_share_history.xml"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 482
    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity;->shareActionProvider:Lcom/actionbarsherlock/widget/ShareActionProvider;

    new-instance v3, Lcom/liquable/nemo/chat/ImageViewerActivity$4;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/ImageViewerActivity$4;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;)V

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 495
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getMessage()Lcom/liquable/nemo/message/model/IMediaMessage;

    move-result-object v1

    .line 496
    .local v1, "message":Lcom/liquable/nemo/message/model/IMediaMessage;
    if-eqz v1, :cond_0

    .line 497
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->updateMessage(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    .line 498
    invoke-direct {p0, v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->updateShareItem(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    .line 500
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 476
    .end local v1    # "message":Lcom/liquable/nemo/message/model/IMediaMessage;
    :cond_1
    const v2, 0x7f080370

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getMessage()Lcom/liquable/nemo/message/model/IMediaMessage;

    move-result-object v2

    .line 506
    .local v2, "message":Lcom/liquable/nemo/message/model/IMediaMessage;
    if-nez v2, :cond_0

    .line 507
    const/4 v4, 0x0

    .line 544
    :goto_0
    return v4

    .line 509
    :cond_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 542
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 511
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    .local v0, "forwardIntent":Landroid/content/Intent;
    const-string/jumbo v4, "MSG_UID"

    invoke-interface {v2}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    const-string/jumbo v4, "MSG_FROM"

    const-string/jumbo v5, "image_viewer"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 544
    .end local v0    # "forwardIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 519
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    .local v3, "pasteIntent":Landroid/content/Intent;
    const-string/jumbo v4, "CHAT_GROUP_TOPIC"

    invoke-interface {v2}, Lcom/liquable/nemo/message/model/IMediaMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string/jumbo v4, "MESSAGE_ID_TO_PAINT"

    invoke-interface {v2}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/ImageViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 524
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->finish()V

    goto :goto_1

    .line 527
    .end local v3    # "pasteIntent":Landroid/content/Intent;
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->showShareToFacebookDialog(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_1

    .line 530
    :sswitch_3
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 531
    invoke-direct {p0, v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->afterDeleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    goto :goto_1

    .line 534
    :sswitch_4
    invoke-static {p0, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->createIntent(Lcom/liquable/nemo/chat/ImageViewerActivity;Lcom/liquable/nemo/message/model/IMediaMessage;)Landroid/content/Intent;

    move-result-object v1

    .line 535
    .local v1, "historyIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 538
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 539
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImageViewerActivity;->finish()V

    goto :goto_1

    .line 509
    :sswitch_data_0
    .sparse-switch
        0x7f08035c -> :sswitch_4
        0x7f080370 -> :sswitch_1
        0x7f080371 -> :sswitch_1
        0x7f080372 -> :sswitch_0
        0x7f080373 -> :sswitch_2
        0x7f080374 -> :sswitch_3
    .end sparse-switch
.end method
