.class public Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;
.super Lcom/liquable/nemo/chat/widget/ChattingWidget;
.source "VoiceRecorderWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;
    }
.end annotation


# static fields
.field private static final timeFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private msgTooShort:Z

.field private nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

.field onSendBtnClicked:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private startRecordTime:J

.field private tempFile:Ljava/io/File;

.field private voiceRecordBtn:Landroid/view/View;

.field private voiceRecordBtnText:Landroid/widget/TextView;

.field private voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

.field private voiceRecorderError:Z

.field private warningDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->timeFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/chat/widget/ChattingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v8, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->msgTooShort:Z

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->handler:Landroid/os/Handler;

    .line 56
    iput-boolean v8, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorderError:Z

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030175

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    new-instance v0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-direct {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 65
    .local v7, "factory":Landroid/view/LayoutInflater;
    const v0, 0x7f0300a6

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 67
    .local v6, "dialogView":Landroid/view/View;
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;

    .line 68
    invoke-virtual {v6, v8, v8}, Landroid/view/View;->measure(II)V

    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 72
    const v0, 0x7f0801c6

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/chat/widget/VoiceMeterView;

    .line 73
    .local v4, "voiceMeter":Lcom/liquable/nemo/chat/widget/VoiceMeterView;
    const v0, 0x7f0801c7

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 74
    .local v3, "voiceRecorderTimeText":Landroid/widget/TextView;
    const v0, 0x7f0801c8

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 75
    .local v5, "voicerRecorderTips":Landroid/widget/TextView;
    invoke-static {p1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0517

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    new-instance v2, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$1;-><init>(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)V

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->warningDialog:Landroid/app/AlertDialog;

    .line 87
    const v0, 0x7f080351

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtn:Landroid/view/View;

    .line 88
    const v0, 0x7f080352

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtnText:Landroid/widget/TextView;

    .line 89
    iget-object v8, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtn:Landroid/view/View;

    new-instance v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;-><init>(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;Landroid/content/Context;Landroid/widget/TextView;Lcom/liquable/nemo/chat/widget/VoiceMeterView;Landroid/widget/TextView;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorderError:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$102(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorderError:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->warningDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->timeFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtnText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->startRecordTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->startRecordTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Lcom/liquable/nemo/storage/NemoFileService;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->msgTooShort:Z

    return v0
.end method

.method static synthetic access$802(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->msgTooShort:Z

    return p1
.end method

.method static synthetic access$900(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;Ljava/io/File;J)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->finishRecord(Ljava/io/File;J)V

    return-void
.end method

.method private finishRecord(Ljava/io/File;J)V
    .locals 0
    .param p1, "tempFile"    # Ljava/io/File;
    .param p2, "duration"    # J

    .prologue
    .line 216
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->tempFile:Ljava/io/File;

    .line 217
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iput-boolean v2, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->msgTooShort:Z

    .line 245
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtn:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 247
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtnText:Landroid/widget/TextView;

    const v1, 0x7f0d0511

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method protected onClose()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->reset()V

    .line 222
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->terminate()V

    .line 223
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->setVisibility(I)V

    .line 224
    return-void
.end method

.method protected onOpen(Z)V
    .locals 2
    .param p1, "isSecret"    # Z

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget;->onOpen(Z)V

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtnText:Landroid/widget/TextView;

    const v1, 0x7f0d0511

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->open(Lcom/liquable/nemo/storage/NemoFileService;)V

    .line 232
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->reset()V

    .line 236
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->terminate()V

    .line 237
    return-void
.end method

.method public open(Lcom/liquable/nemo/storage/NemoFileService;)V
    .locals 0
    .param p1, "nemoFileService"    # Lcom/liquable/nemo/storage/NemoFileService;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 241
    return-void
.end method

.method public setOnSendBtnClicked(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;)V
    .locals 0
    .param p1, "onSendBtnClicked"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->onSendBtnClicked:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;

    .line 256
    return-void
.end method
