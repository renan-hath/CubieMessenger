.class Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;
.super Ljava/lang/Object;
.source "VoiceRecorderWidget.java"

# interfaces
.implements Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/File;J)V
    .locals 2
    .param p1, "voiceFile"    # Ljava/io/File;
    .param p2, "duration"    # J

    .prologue
    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->msgTooShort:Z
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$800(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # invokes: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->finishRecord(Ljava/io/File;J)V
    invoke-static {v0, p1, p2, p3}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$900(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;Ljava/io/File;J)V

    .line 124
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->onSendBtnClicked:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v1, v1, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->tempFile:Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$1000(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;->onSendBtnClicked(Ljava/io/File;J)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # invokes: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->reset()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$000(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)V

    .line 127
    return-void
.end method

.method public onFail(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 131
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 133
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    const/4 v1, 0x1

    # setter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorderError:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$102(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;Z)Z

    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$1100(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1$1;-><init>(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public onProgress(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 148
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->msgTooShort:Z
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$800(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->warningDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$1200(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 150
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$500(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$500(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stopRecord()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->val$voiceRecorderTimeText:Landroid/widget/TextView;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->timeFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$1300()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSignalLeveldB(F)V
    .locals 4
    .param p1, "dB"    # F

    .prologue
    const/high16 v2, 0x42920000    # 73.0f

    .line 160
    add-float v1, p1, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v2, v2, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->val$context:Landroid/content/Context;

    const/16 v3, 0x80

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 161
    .local v0, "level":F
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;->this$1:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;

    iget-object v1, v1, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->val$voiceMeter:Lcom/liquable/nemo/chat/widget/VoiceMeterView;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/widget/VoiceMeterView;->setHeight(I)V

    .line 162
    return-void
.end method

.method public preEncode()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method
