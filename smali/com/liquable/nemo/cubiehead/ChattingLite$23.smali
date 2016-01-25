.class Lcom/liquable/nemo/cubiehead/ChattingLite$23;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;->playVoiceMessage(Ljava/io/File;Lcom/liquable/nemo/message/model/VoiceMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

.field final synthetic val$message:Lcom/liquable/nemo/message/model/VoiceMessage;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/message/model/VoiceMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$23;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    iput-object p2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$23;->val$message:Lcom/liquable/nemo/message/model/VoiceMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 804
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$23;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$2000(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stop()V

    .line 805
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$23;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    const-string/jumbo v1, ""

    # setter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->playingVoiceMessageId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$2102(Lcom/liquable/nemo/cubiehead/ChattingLite;Ljava/lang/String;)Ljava/lang/String;

    .line 806
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$23;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$23;->val$message:Lcom/liquable/nemo/message/model/VoiceMessage;

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$2200(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    .line 807
    return-void
.end method

.method public onFail(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 810
    return-void
.end method

.method public onProgress(J)V
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 815
    return-void
.end method

.method public postDecode()V
    .locals 4

    .prologue
    .line 819
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$23;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$23;->val$message:Lcom/liquable/nemo/message/model/VoiceMessage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/liquable/nemo/cubiehead/ChattingLite;->updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$2200(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V

    .line 820
    return-void
.end method
