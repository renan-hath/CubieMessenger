.class Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$7;
.super Ljava/lang/Object;
.source "MediaShareBoardActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->playVoiceMessage(Ljava/io/File;Lcom/liquable/nemo/message/model/VoiceMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$7;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$7;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    # getter for: Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->voiceRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    invoke-static {v0}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->access$600(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stop()V

    .line 381
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity$7;->this$0:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    const-string/jumbo v1, ""

    # setter for: Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->playingVoiceMessageId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->access$702(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    return-void
.end method

.method public onFail(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 386
    return-void
.end method

.method public onProgress(J)V
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 390
    return-void
.end method

.method public postDecode()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method
