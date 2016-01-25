.class Lcom/liquable/nemo/chat/ChattingActivity$32;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->playVoiceMessage(Ljava/io/File;Lcom/liquable/nemo/message/model/VoiceMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;

.field final synthetic val$message:Lcom/liquable/nemo/message/model/VoiceMessage;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/message/model/VoiceMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$32;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$32;->val$message:Lcom/liquable/nemo/message/model/VoiceMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2035
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$32;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3200(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stop()V

    .line 2036
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$32;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const-string/jumbo v1, ""

    # setter for: Lcom/liquable/nemo/chat/ChattingActivity;->playingVoiceMessageId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3302(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2037
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$32;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$32;->val$message:Lcom/liquable/nemo/message/model/VoiceMessage;

    invoke-virtual {v0, v1, v2, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    .line 2038
    return-void
.end method

.method public onFail(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2042
    return-void
.end method

.method public onProgress(J)V
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 2047
    return-void
.end method

.method public postDecode()V
    .locals 4

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$32;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$32;->val$message:Lcom/liquable/nemo/message/model/VoiceMessage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    .line 2052
    return-void
.end method
