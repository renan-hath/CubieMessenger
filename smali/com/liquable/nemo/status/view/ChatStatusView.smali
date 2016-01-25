.class public Lcom/liquable/nemo/status/view/ChatStatusView;
.super Landroid/widget/ScrollView;
.source "ChatStatusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;
    }
.end annotation


# instance fields
.field private chatStatusContainer:Landroid/widget/RelativeLayout;

.field private chatStatusIconContainer:Landroid/widget/RelativeLayout;

.field private chatStatusIconView:Landroid/widget/ImageView;

.field private delayClearStatus:Ljava/lang/Runnable;

.field private fullAnimation:Z

.field private final handler:Landroid/os/Handler;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private lastStatus:Lcom/liquable/nemo/status/model/ReceivedStatus;

.field private senderImageView:Landroid/widget/ImageView;

.field private watchImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->handler:Landroid/os/Handler;

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->handler:Landroid/os/Handler;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/status/view/ChatStatusView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/status/view/ChatStatusView;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->delayClearStatus:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/status/view/ChatStatusView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/status/view/ChatStatusView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->delayClearStatus:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/status/view/ChatStatusView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/status/view/ChatStatusView;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/liquable/nemo/status/view/ChatStatusView;->clearStatus(Z)V

    return-void
.end method

.method private clearStatus(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    .line 205
    iget-object v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->delayClearStatus:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->delayClearStatus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    iput-object v4, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->delayClearStatus:Ljava/lang/Runnable;

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 213
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_1

    .line 214
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .end local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/status/view/ChatStatusView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    :goto_0
    return-void

    .line 221
    :cond_2
    iget-boolean v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->fullAnimation:Z

    if-eqz v2, :cond_4

    .line 222
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 223
    .local v0, "disappearAnim":Landroid/view/animation/Animation;
    if-eqz p1, :cond_3

    .line 224
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 229
    :goto_1
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/status/view/ChatStatusView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    new-instance v2, Lcom/liquable/nemo/status/view/ChatStatusView$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/status/view/ChatStatusView$1;-><init>(Lcom/liquable/nemo/status/view/ChatStatusView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 226
    :cond_3
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_1

    .line 248
    .end local v0    # "disappearAnim":Landroid/view/animation/Animation;
    :cond_4
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/status/view/ChatStatusView;->setVisibility(I)V

    goto :goto_0
.end method

.method private delayToClearStatus(J)V
    .locals 2
    .param p1, "duration"    # J

    .prologue
    .line 254
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->delayClearStatus:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->delayClearStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    :cond_0
    new-instance v0, Lcom/liquable/nemo/status/view/ChatStatusView$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/status/view/ChatStatusView$2;-><init>(Lcom/liquable/nemo/status/view/ChatStatusView;)V

    iput-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->delayClearStatus:Ljava/lang/Runnable;

    .line 268
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->delayClearStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    return-void
.end method

.method private showIcon(Lcom/liquable/nemo/friend/model/Account;[II)V
    .locals 8
    .param p1, "sender"    # Lcom/liquable/nemo/friend/model/Account;
    .param p2, "imageResourceIds"    # [I
    .param p3, "displayDurationInMs"    # I

    .prologue
    const/4 v3, 0x0

    .line 358
    iget-object v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->watchImageView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusIconContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 361
    invoke-direct {p0, p1, p3}, Lcom/liquable/nemo/status/view/ChatStatusView;->showWithAnimation(Lcom/liquable/nemo/friend/model/Account;I)V

    .line 363
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 364
    .local v0, "iconDrawable":Landroid/graphics/drawable/AnimationDrawable;
    array-length v4, p2

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, p2, v2

    .line 365
    .local v1, "imageResourceId":I
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/liquable/nemo/status/view/ChatStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 366
    invoke-virtual {p0}, Lcom/liquable/nemo/status/view/ChatStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 v6, 0x1f4

    .line 365
    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "imageResourceId":I
    :cond_0
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 371
    iget-object v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object v2, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusIconView:Landroid/widget/ImageView;

    new-instance v3, Lcom/liquable/nemo/status/view/ChatStatusView$4;

    invoke-direct {v3, p0, v0}, Lcom/liquable/nemo/status/view/ChatStatusView$4;-><init>(Lcom/liquable/nemo/status/view/ChatStatusView;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 380
    return-void
.end method

.method private showPictureOrPaintOrYoutube(Lcom/liquable/nemo/friend/model/Account;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "sender"    # Lcom/liquable/nemo/friend/model/Account;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "displayDurationInMs"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 385
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v8, p2}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v2

    .line 389
    .local v2, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v8, v2, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v8, :cond_1

    move-object v4, v2

    .line 390
    check-cast v4, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 391
    .local v4, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v4, v7}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 404
    .end local v4    # "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    .local v1, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :goto_0
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, v8}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 405
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 432
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :cond_0
    :goto_1
    return v6

    .line 392
    :cond_1
    instance-of v8, v2, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v8, :cond_2

    move-object v3, v2

    .line 393
    check-cast v3, Lcom/liquable/nemo/message/model/PaintMessage;

    .line 396
    .local v3, "paintMessage":Lcom/liquable/nemo/message/model/PaintMessage;
    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 397
    .restart local v1    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    goto :goto_0

    .end local v1    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v3    # "paintMessage":Lcom/liquable/nemo/message/model/PaintMessage;
    :cond_2
    instance-of v8, v2, Lcom/liquable/nemo/message/model/YoutubeMessage;

    if-eqz v8, :cond_0

    move-object v5, v2

    .line 398
    check-cast v5, Lcom/liquable/nemo/message/model/YoutubeMessage;

    .line 399
    .local v5, "youtubeMessage":Lcom/liquable/nemo/message/model/YoutubeMessage;
    invoke-virtual {v5}, Lcom/liquable/nemo/message/model/YoutubeMessage;->getThumbnailKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 400
    .restart local v1    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    goto :goto_0

    .line 409
    .end local v5    # "youtubeMessage":Lcom/liquable/nemo/message/model/YoutubeMessage;
    .restart local v0    # "file":Ljava/io/File;
    :cond_3
    iget-object v8, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v9, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->watchImageView:Landroid/widget/ImageView;

    new-instance v10, Lcom/liquable/nemo/util/CenterCropLoadableImage;

    const/16 v11, 0x28

    invoke-direct {v10, v0, v11}, Lcom/liquable/nemo/util/CenterCropLoadableImage;-><init>(Ljava/io/File;I)V

    invoke-virtual {v8, v9, v10}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 416
    iget-object v8, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusContainer:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/liquable/nemo/status/view/ChatStatusView$5;

    invoke-direct {v9, p0, v2}, Lcom/liquable/nemo/status/view/ChatStatusView$5;-><init>(Lcom/liquable/nemo/status/view/ChatStatusView;Lcom/liquable/nemo/message/model/DomainMessage;)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v8, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->watchImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    iget-object v8, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusIconContainer:Landroid/widget/RelativeLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 426
    invoke-virtual {p0}, Lcom/liquable/nemo/status/view/ChatStatusView;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_4

    .line 427
    invoke-virtual {p0, v6}, Lcom/liquable/nemo/status/view/ChatStatusView;->setVisibility(I)V

    .line 430
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/liquable/nemo/status/view/ChatStatusView;->showWithAnimation(Lcom/liquable/nemo/friend/model/Account;I)V

    move v6, v7

    .line 432
    goto :goto_1
.end method

.method private showWithAnimation(Lcom/liquable/nemo/friend/model/Account;I)V
    .locals 12
    .param p1, "sender"    # Lcom/liquable/nemo/friend/model/Account;
    .param p2, "displayDurationInMs"    # I

    .prologue
    const-wide/16 v10, 0x14a

    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 436
    invoke-virtual {p0}, Lcom/liquable/nemo/status/view/ChatStatusView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/status/view/ChatStatusView;->setVisibility(I)V

    .line 440
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v4, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->senderImageView:Landroid/widget/ImageView;

    new-instance v5, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/liquable/nemo/status/view/ChatStatusView$CircleAvatarImage;-><init>(Lcom/liquable/nemo/status/view/ChatStatusView;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 442
    int-to-long v3, p2

    invoke-direct {p0, v3, v4}, Lcom/liquable/nemo/status/view/ChatStatusView;->delayToClearStatus(J)V

    .line 444
    iget-boolean v3, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->fullAnimation:Z

    if-eqz v3, :cond_1

    .line 445
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 446
    .local v0, "appearAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 447
    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 448
    iget-object v3, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->senderImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 450
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 451
    .local v1, "containerAppearAnim":Landroid/view/animation/Animation;
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 452
    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 453
    iget-object v3, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 455
    iget-object v3, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusContainer:Landroid/widget/RelativeLayout;

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 459
    .local v2, "down":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    const-wide/16 v3, 0xd2

    invoke-virtual {v2, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 460
    new-instance v3, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v3}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 461
    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 462
    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 466
    .end local v0    # "appearAnim":Landroid/view/animation/Animation;
    .end local v1    # "containerAppearAnim":Landroid/view/animation/Animation;
    .end local v2    # "down":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 455
    nop

    :array_0
    .array-data 4
        -0x3ee00000    # -10.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/liquable/nemo/status/view/ChatStatusView;->reset()V

    .line 273
    return-void
.end method

.method public init(Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 3
    .param p1, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p2, "fullAnimation"    # Z

    .prologue
    .line 276
    iput-object p1, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 277
    iput-boolean p2, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->fullAnimation:Z

    .line 279
    invoke-virtual {p0}, Lcom/liquable/nemo/status/view/ChatStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03012e

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f0802de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->senderImageView:Landroid/widget/ImageView;

    .line 281
    const v1, 0x7f0802e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusIconView:Landroid/widget/ImageView;

    .line 282
    const v1, 0x7f0802e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->watchImageView:Landroid/widget/ImageView;

    .line 283
    const v1, 0x7f0802df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusContainer:Landroid/widget/RelativeLayout;

    .line 284
    const v1, 0x7f0802e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusIconContainer:Landroid/widget/RelativeLayout;

    .line 286
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/status/view/ChatStatusView;->setVisibility(I)V

    .line 287
    new-instance v1, Lcom/liquable/nemo/status/view/ChatStatusView$3;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/status/view/ChatStatusView$3;-><init>(Lcom/liquable/nemo/status/view/ChatStatusView;)V

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/status/view/ChatStatusView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 294
    return-void
.end method

.method public onAddMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p2, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 297
    invoke-virtual {p1, p2}, Lcom/liquable/nemo/message/model/DomainMessage;->isSameChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->lastStatus:Lcom/liquable/nemo/status/model/ReceivedStatus;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->lastStatus:Lcom/liquable/nemo/status/model/ReceivedStatus;

    invoke-virtual {v0}, Lcom/liquable/nemo/status/model/ReceivedStatus;->getSenderUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/liquable/nemo/status/view/ChatStatusView;->clearStatus(Z)V

    goto :goto_0
.end method

.method public onReceivedStatus(Lcom/liquable/nemo/status/model/ReceivedStatus;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 8
    .param p1, "receivedStatus"    # Lcom/liquable/nemo/status/model/ReceivedStatus;
    .param p2, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/16 v7, 0x2710

    const/4 v6, 0x2

    .line 309
    invoke-virtual {p1}, Lcom/liquable/nemo/status/model/ReceivedStatus;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/status/model/ReceivedStatus;->getSenderUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/liquable/nemo/group/model/ChatGroup;->findMember(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v2

    .line 315
    .local v2, "sender":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v2, :cond_0

    .line 319
    iput-object p1, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->lastStatus:Lcom/liquable/nemo/status/model/ReceivedStatus;

    .line 320
    iget-object v4, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->chatStatusContainer:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    invoke-virtual {p1}, Lcom/liquable/nemo/status/model/ReceivedStatus;->getChatStatus()Lcom/liquable/nemo/status/model/IChatStatus;

    move-result-object v0

    .line 323
    .local v0, "chatStatus":Lcom/liquable/nemo/status/model/IChatStatus;
    instance-of v4, v0, Lcom/liquable/nemo/status/model/TypingStatus;

    if-eqz v4, :cond_2

    .line 324
    new-array v4, v6, [I

    fill-array-data v4, :array_0

    invoke-direct {p0, v2, v4, v7}, Lcom/liquable/nemo/status/view/ChatStatusView;->showIcon(Lcom/liquable/nemo/friend/model/Account;[II)V

    goto :goto_0

    .line 327
    :cond_2
    instance-of v4, v0, Lcom/liquable/nemo/status/model/PaintingStatus;

    if-eqz v4, :cond_3

    .line 328
    new-array v4, v6, [I

    fill-array-data v4, :array_1

    invoke-direct {p0, v2, v4, v7}, Lcom/liquable/nemo/status/view/ChatStatusView;->showIcon(Lcom/liquable/nemo/friend/model/Account;[II)V

    goto :goto_0

    .line 331
    :cond_3
    instance-of v4, v0, Lcom/liquable/nemo/status/model/CameraStatus;

    if-eqz v4, :cond_4

    .line 332
    new-array v4, v6, [I

    fill-array-data v4, :array_2

    invoke-direct {p0, v2, v4, v7}, Lcom/liquable/nemo/status/view/ChatStatusView;->showIcon(Lcom/liquable/nemo/friend/model/Account;[II)V

    goto :goto_0

    .line 335
    :cond_4
    instance-of v4, v0, Lcom/liquable/nemo/status/model/EnterGroupStatus;

    if-eqz v4, :cond_5

    .line 336
    new-array v4, v6, [I

    fill-array-data v4, :array_3

    const/16 v5, 0xbb8

    invoke-direct {p0, v2, v4, v5}, Lcom/liquable/nemo/status/view/ChatStatusView;->showIcon(Lcom/liquable/nemo/friend/model/Account;[II)V

    goto :goto_0

    .line 339
    :cond_5
    instance-of v4, v0, Lcom/liquable/nemo/status/model/WatchMessageStatus;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 340
    check-cast v3, Lcom/liquable/nemo/status/model/WatchMessageStatus;

    .line 341
    .local v3, "watchMessageStatus":Lcom/liquable/nemo/status/model/WatchMessageStatus;
    invoke-virtual {v3}, Lcom/liquable/nemo/status/model/WatchMessageStatus;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "messageId":Ljava/lang/String;
    const/16 v4, 0x1388

    invoke-direct {p0, v2, v1, v4}, Lcom/liquable/nemo/status/view/ChatStatusView;->showPictureOrPaintOrYoutube(Lcom/liquable/nemo/friend/model/Account;Ljava/lang/String;I)Z

    goto :goto_0

    .line 324
    nop

    :array_0
    .array-data 4
        0x7f020537
        0x7f020538
    .end array-data

    .line 328
    :array_1
    .array-data 4
        0x7f020533
        0x7f020534
    .end array-data

    .line 332
    :array_2
    .array-data 4
        0x7f02052f
        0x7f020530
    .end array-data

    .line 336
    :array_3
    .array-data 4
        0x7f020531
        0x7f020532
    .end array-data
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView;->lastStatus:Lcom/liquable/nemo/status/model/ReceivedStatus;

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/status/view/ChatStatusView;->clearStatus(Z)V

    .line 353
    return-void
.end method
