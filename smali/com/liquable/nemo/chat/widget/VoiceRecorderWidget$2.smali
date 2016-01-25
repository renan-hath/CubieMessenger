.class Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;
.super Ljava/lang/Object;
.source "VoiceRecorderWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$voiceMeter:Lcom/liquable/nemo/chat/widget/VoiceMeterView;

.field final synthetic val$voiceRecorderTimeText:Landroid/widget/TextView;

.field final synthetic val$voicerRecorderTips:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;Landroid/content/Context;Landroid/widget/TextView;Lcom/liquable/nemo/chat/widget/VoiceMeterView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    iput-object p2, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->val$voiceRecorderTimeText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->val$voiceMeter:Lcom/liquable/nemo/chat/widget/VoiceMeterView;

    iput-object p5, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->val$voicerRecorderTips:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v5, 0x7f0d0513

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 93
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorderError:Z
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$100(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$200(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$200(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$200(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 98
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # setter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorderError:Z
    invoke-static {v1, v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$102(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;Z)Z

    :cond_1
    move v0, v7

    .line 210
    :cond_2
    :goto_0
    return v0

    .line 103
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    .line 104
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$200(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, p1, v2, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 106
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtnText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$300(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$400(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setPressed(Z)V

    .line 109
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$500(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$500(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stopRecord()V

    goto :goto_0

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->startRecordTime:J
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$602(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;J)J

    .line 116
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$500(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    .line 117
    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v2}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$700(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2$1;-><init>(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;)V

    const/16 v4, 0xa

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 116
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->startRecord(Landroid/content/Context;Ljava/io/File;Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;ILandroid/os/Handler;)V

    move v0, v7

    .line 168
    goto :goto_0

    .line 169
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_a

    .line 171
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$400(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$400(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 176
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtnText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$300(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0511

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$200(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$200(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 179
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$200(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 182
    :cond_6
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 183
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_7

    .line 184
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$500(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->terminate()V

    move v0, v7

    .line 185
    goto/16 :goto_0

    .line 189
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->startRecordTime:J
    invoke-static {v3}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$600(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x15f90

    cmp-long v1, v1, v3

    if-lez v1, :cond_8

    move v0, v7

    .line 190
    goto/16 :goto_0

    .line 193
    :cond_8
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$500(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->isRecording()Z

    move-result v1

    if-nez v1, :cond_9

    .line 194
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # setter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->msgTooShort:Z
    invoke-static {v1, v7}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$802(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;Z)Z

    .line 195
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtn:Landroid/view/View;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$400(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    move v0, v7

    .line 199
    goto/16 :goto_0

    .line 197
    :cond_9
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    invoke-static {v0}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$500(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stopRecord()V

    goto :goto_1

    .line 200
    .end local v6    # "rect":Landroid/graphics/Rect;
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 201
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 202
    .restart local v6    # "rect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 203
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtnText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$300(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 204
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->val$voicerRecorderTips:Landroid/widget/TextView;

    const v2, 0x7f0d050f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 206
    :cond_b
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->this$0:Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;

    # getter for: Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->voiceRecordBtnText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;->access$300(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d050e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$2;->val$voicerRecorderTips:Landroid/widget/TextView;

    const v2, 0x7f0d0510

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method
