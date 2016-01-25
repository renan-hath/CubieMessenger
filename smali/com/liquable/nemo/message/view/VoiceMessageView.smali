.class public Lcom/liquable/nemo/message/view/VoiceMessageView;
.super Landroid/widget/RelativeLayout;
.source "VoiceMessageView.java"


# static fields
.field private static final timeFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final preparingProgressBar:Landroid/widget/ProgressBar;

.field private final thumbnailImageView:Landroid/widget/ImageView;

.field private final transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

.field private final voiceTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/nemo/message/view/VoiceMessageView;->timeFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030105

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    const v0, 0x7f08029d

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/VoiceMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/VoiceMessageView;->voiceTitle:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f080258

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/VoiceMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/VoiceMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/VoiceMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/TransferProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/VoiceMessageView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    .line 40
    const v0, 0x7f08029c

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/VoiceMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/message/view/VoiceMessageView;->preparingProgressBar:Landroid/widget/ProgressBar;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/message/view/VoiceMessageView;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/message/view/VoiceMessageView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/VoiceMessageView;->playIntent(Landroid/content/Context;)V

    return-void
.end method

.method private playIntent(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.liquable.nemo.chat.model.VOICE_MESSAGE_EVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v3, Lcom/liquable/nemo/chat/model/VoiceMessageEvent;->PLAY:Lcom/liquable/nemo/chat/model/VoiceMessageEvent;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 66
    iget-object v2, p0, Lcom/liquable/nemo/message/view/VoiceMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/VoiceMessage;

    .line 67
    .local v1, "message":Lcom/liquable/nemo/message/model/VoiceMessage;
    const-string/jumbo v2, "com.liquable.nemo.chat.model.KEY_MESSAGE_ID"

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/VoiceMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onThumbnailClicked(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaFile"    # Ljava/io/File;

    .prologue
    .line 46
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isShowVoiceMessageSettingTips()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/liquable/nemo/util/NemoUIs;->isChattingActivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowVoiceMessageSettingTips(Z)V

    .line 48
    invoke-static {p1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    new-instance v2, Lcom/liquable/nemo/message/view/VoiceMessageView$1;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/message/view/VoiceMessageView$1;-><init>(Lcom/liquable/nemo/message/view/VoiceMessageView;Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0518

    .line 56
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/VoiceMessageView;->playIntent(Landroid/content/Context;)V

    goto :goto_0
.end method

.method update(Lcom/liquable/nemo/message/model/VoiceMessage;)V
    .locals 6
    .param p1, "voiceMessage"    # Lcom/liquable/nemo/message/model/VoiceMessage;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/liquable/nemo/message/view/VoiceMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VoiceMessage;->isPreparing()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 73
    iget-object v2, p0, Lcom/liquable/nemo/message/view/VoiceMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VoiceMessage;->isPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 74
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VoiceMessage;->isPreparing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/liquable/nemo/message/view/VoiceMessageView;->preparingProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    :goto_0
    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/VoiceMessage;->getDuration()J

    move-result-wide v0

    .line 81
    .local v0, "seconds":J
    iget-object v2, p0, Lcom/liquable/nemo/message/view/VoiceMessageView;->voiceTitle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/message/view/VoiceMessageView;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p0, Lcom/liquable/nemo/message/view/VoiceMessageView;->transferProgressBar:Lcom/liquable/nemo/widget/TransferProgressBar;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/widget/TransferProgressBar;->update(Lcom/liquable/nemo/message/model/AbstractMediaMessage;)V

    .line 83
    iget-object v2, p0, Lcom/liquable/nemo/message/view/VoiceMessageView;->thumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/VoiceMessageView;->invalidate()V

    .line 86
    return-void

    .line 77
    .end local v0    # "seconds":J
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/VoiceMessageView;->preparingProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
