.class public Lcom/liquable/nemo/chat/OpenSecretImageActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "OpenSecretImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;,
        Lcom/liquable/nemo/chat/OpenSecretImageActivity$CreateIntent;
    }
.end annotation


# instance fields
.field private activityStopped:Z

.field private handler:Landroid/os/Handler;

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private picMsgTextView:Landroid/widget/TextView;

.field private receiver:Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;

.field private secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;

.field private secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;

.field private touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

.field private transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 81
    const-class v0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Lcom/liquable/nemo/message/model/SecretPictureMessage;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->renderImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Lcom/liquable/nemo/widget/TransferProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->activityStopped:Z

    return v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Lcom/liquable/nemo/message/view/SecretCountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/OpenSecretImageActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteSecretAndBroadcast()V
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 101
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastSecretMessageUpdate()V

    .line 102
    return-void
.end method

.method private renderImage()V
    .locals 7

    .prologue
    .line 150
    iget-object v5, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/widget/TransferProgressBar;->setVisibility(I)V

    .line 152
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v6, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->openSecret(Lcom/liquable/nemo/message/model/ISecret;)V

    .line 155
    :try_start_0
    iget-object v5, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;

    sget-object v6, Lcom/liquable/nemo/message/model/ISecret$State;->OPENED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->deleteSecretAndBroadcast()V

    .line 199
    :goto_0
    return-void

    .line 161
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;

    invoke-virtual {v5}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getDecryptedText()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "decryptedText":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 163
    iget-object v5, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->picMsgTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v5, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->picMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v1    # "decryptedText":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;

    invoke-virtual {v5}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 172
    invoke-virtual {v5, v6}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v3

    .line 173
    .local v3, "mediaFile":Ljava/io/File;
    invoke-static {v3}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 174
    const v5, 0x7f0d01c6

    invoke-static {p0, v5}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 175
    iget-object v5, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "secret picture file not found"

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    invoke-direct {p0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->deleteSecretAndBroadcast()V

    goto :goto_0

    .line 166
    .end local v3    # "mediaFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const v5, 0x7f0d01c6

    :try_start_3
    invoke-static {p0, v5}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 168
    iget-object v5, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "decrypt secret picture text failed"

    invoke-virtual {v5, v6, v2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 196
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->deleteSecretAndBroadcast()V

    throw v5

    .line 179
    .restart local v3    # "mediaFile":Ljava/io/File;
    :cond_2
    :try_start_4
    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->decryptBitmap([B)[B

    move-result-object v0

    .line 180
    .local v0, "bitmap":[B
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 181
    .local v4, "success":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    .line 182
    iget-object v5, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    invoke-virtual {v5, v4}, Lcom/liquable/nemo/widget/TouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    invoke-direct {p0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->startCountDown()V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    .end local v0    # "bitmap":[B
    .end local v4    # "success":Landroid/graphics/Bitmap;
    :goto_2
    invoke-direct {p0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->deleteSecretAndBroadcast()V

    goto :goto_0

    .line 185
    .restart local v0    # "bitmap":[B
    .restart local v4    # "success":Landroid/graphics/Bitmap;
    :cond_3
    const v5, 0x7f0d01c6

    :try_start_5
    invoke-static {p0, v5}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 186
    iget-object v5, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "decode secret picture failed"

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 188
    .end local v0    # "bitmap":[B
    .end local v4    # "success":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 189
    .restart local v2    # "e":Ljava/security/GeneralSecurityException;
    const v5, 0x7f0d01c6

    :try_start_6
    invoke-static {p0, v5}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 190
    iget-object v5, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "decrypt secret picture failed"

    invoke-virtual {v5, v6, v2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 191
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v2

    .line 192
    .local v2, "e":Ljava/io/IOException;
    const v5, 0x7f0d01c6

    invoke-static {p0, v5}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 193
    iget-object v5, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "read secret picture failed"

    invoke-virtual {v5, v6, v2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method private startCountDown()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/view/SecretCountDownView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->timeToExpireInMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/message/view/SecretCountDownView;->update(J)V

    .line 205
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;-><init>(Lcom/liquable/nemo/chat/OpenSecretImageActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    return-void
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->handler:Landroid/os/Handler;

    .line 107
    const v1, 0x7f03003c

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 110
    const v1, 0x7f0800f9

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/view/SecretCountDownView;

    iput-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretCountDownView:Lcom/liquable/nemo/message/view/SecretCountDownView;

    .line 111
    const v1, 0x7f0800f8

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->picMsgTextView:Landroid/widget/TextView;

    .line 112
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/chat/OpenSecretImageActivity$CreateIntent;->getSecretPictureMessage(Landroid/content/Intent;)Lcom/liquable/nemo/message/model/SecretPictureMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;

    .line 113
    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/widget/TouchImageView;

    iput-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->touchImageView:Lcom/liquable/nemo/widget/TouchImageView;

    .line 114
    const v1, 0x7f0800fa

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/widget/TransferProgressBar;

    iput-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    .line 115
    iget-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    iget-object v2, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/widget/TransferProgressBar;->update(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    .line 117
    iget-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 118
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 119
    .local v0, "mediaFile":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->renderImage()V

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v2, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->secretPictureMessage:Lcom/liquable/nemo/message/model/SecretPictureMessage;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0
.end method

.method protected onLoggedInStart()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->receiver:Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.chat.model.MEDIA_MESSAGE_TRANSFER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;-><init>(Lcom/liquable/nemo/chat/OpenSecretImageActivity;Lcom/liquable/nemo/chat/OpenSecretImageActivity$1;)V

    iput-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->receiver:Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;

    .line 135
    iget-object v1, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->receiver:Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->activityStopped:Z

    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->receiver:Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->receiver:Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/OpenSecretImageActivity;->receiver:Lcom/liquable/nemo/chat/OpenSecretImageActivity$EventBroadcastReceiver;

    .line 146
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onStop()V

    .line 147
    return-void
.end method
