.class public Lcom/liquable/nemo/message/view/PictureMessageBigView;
.super Lcom/liquable/nemo/message/view/MessageBigView;
.source "PictureMessageBigView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/message/view/MessageBigView",
        "<",
        "Lcom/liquable/nemo/message/model/PictureMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final likeButtonImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p4, "isSentByMe"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/message/view/MessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    .line 35
    const v0, 0x7f08028a

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageBigView;->likeButtonImageView:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/message/view/PictureMessageBigView;->likeButtonImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/liquable/nemo/message/view/PictureMessageBigView$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/message/view/PictureMessageBigView$1;-><init>(Lcom/liquable/nemo/message/view/PictureMessageBigView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f0300f6

    return v0
.end method

.method protected bridge synthetic getText(Lcom/liquable/nemo/message/model/DomainMessage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/liquable/nemo/message/model/PictureMessage;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->getText(Lcom/liquable/nemo/message/model/PictureMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText(Lcom/liquable/nemo/message/model/PictureMessage;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/PictureMessage;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getFileLength()J

    move-result-wide v2

    const-wide/32 v4, 0x11800

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sget-object v2, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    sget-object v3, Lcom/liquable/nemo/client/ServerType;->PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 55
    .local v1, "showDebug":Z
    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " DEBUG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 59
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getFileNameN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getFileNameN()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getFileLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/io/FileUtils;->byteCountToDisplaySize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "debugString":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 53
    .end local v0    # "debugString":Ljava/lang/String;
    .end local v1    # "showDebug":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    .restart local v1    # "showDebug":Z
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public playAnimation()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const-wide/16 v11, 0xfa

    const/4 v10, 0x2

    .line 66
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-ge v8, v9, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d0334

    invoke-static {v8, v9}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 89
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v5, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 72
    .local v5, "likedAnimatorSet":Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;
    const v8, 0x7f08028b

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 73
    .local v4, "heart":Landroid/view/View;
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 74
    const-wide/16 v0, 0xfa

    .line 75
    .local v0, "duration":J
    const-string/jumbo v8, "scaleX"

    new-array v9, v10, [F

    fill-array-data v9, :array_0

    invoke-static {v4, v8, v9}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v6

    .line 76
    .local v6, "scaleX":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    invoke-virtual {v6, v11, v12}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 78
    const-string/jumbo v8, "scaleY"

    new-array v9, v10, [F

    fill-array-data v9, :array_1

    invoke-static {v4, v8, v9}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v7

    .line 79
    .local v7, "scaleY":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    invoke-virtual {v7, v11, v12}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 80
    const-string/jumbo v8, "alpha"

    new-array v9, v10, [F

    fill-array-data v9, :array_2

    invoke-static {v4, v8, v9}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 81
    .local v2, "fadeIn":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    invoke-virtual {v2, v11, v12}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 83
    const-string/jumbo v8, "alpha"

    new-array v9, v10, [F

    fill-array-data v9, :array_3

    invoke-static {v4, v8, v9}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    .line 84
    .local v3, "fadeOut":Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;
    invoke-virtual {v3, v11, v12}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    .line 85
    const-wide/16 v8, 0x3e8

    invoke-virtual {v3, v8, v9}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 87
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    aput-object v6, v8, v13

    const/4 v9, 0x1

    aput-object v7, v8, v9

    aput-object v2, v8, v10

    const/4 v9, 0x3

    aput-object v3, v8, v9

    invoke-virtual {v5, v8}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    .line 88
    invoke-virtual {v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 75
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    .line 78
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
    .end array-data

    .line 80
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 83
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public bridge synthetic update(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/liquable/nemo/message/model/PictureMessage;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->update(Lcom/liquable/nemo/message/model/PictureMessage;)V

    return-void
.end method

.method public update(Lcom/liquable/nemo/message/model/PictureMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/liquable/nemo/message/model/PictureMessage;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/liquable/nemo/message/view/MessageBigView;->update(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 94
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PictureMessageBigView;->likeButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p1, v3}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PictureMessageBigView;->likeButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PictureMessageBigView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/PictureMessageBigView;->bigMessageImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/liquable/nemo/message/view/BigPictureImage;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/liquable/nemo/message/view/BigPictureImage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PictureMessageBigView;->likeButtonImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-boolean v1, p0, Lcom/liquable/nemo/message/view/PictureMessageBigView;->isSentByMe:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->isUploadComplete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    :cond_1
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 105
    invoke-virtual {p1, v3}, Lcom/liquable/nemo/message/model/PictureMessage;->getRemoteKeyPathWithS3EndPoint(Z)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v2

    .line 106
    invoke-virtual {p1, v3}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 104
    invoke-virtual {v1, p1, v2, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWithoutProgress(Lcom/liquable/nemo/message/model/IDomainMessage;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PictureMessageBigView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/PictureMessageBigView;->bigMessageImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/liquable/nemo/message/view/TransparentDrawable;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/PictureMessageBigView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v5, v5}, Lcom/liquable/nemo/message/view/TransparentDrawable;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0
.end method
