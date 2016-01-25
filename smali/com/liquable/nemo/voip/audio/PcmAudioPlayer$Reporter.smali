.class final Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;
.super Ljava/lang/Object;
.source "PcmAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Reporter"
.end annotation


# instance fields
.field private final audioTrack:Landroid/media/AudioTrack;

.field private lastFillSilenceInShort:I

.field private lastFrameCount:I

.field final synthetic this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;Landroid/media/AudioTrack;)V
    .locals 0
    .param p2, "audioTrack"    # Landroid/media/AudioTrack;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;->audioTrack:Landroid/media/AudioTrack;

    .line 238
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 242
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->frameCount:I
    invoke-static {v3}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$600(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    move-result v3

    iget v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;->lastFrameCount:I

    sub-int v1, v3, v4

    .line 243
    .local v1, "deltaFrame":I
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->fillSilenceInShort:I
    invoke-static {v3}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$1100(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    move-result v3

    iget v4, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;->lastFillSilenceInShort:I

    sub-int v0, v3, v4

    .line 245
    .local v0, "deltaFill":I
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "audio played frame:%d, hardware buf:%4d[s], underflow fill:%4d[s]\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    iget-object v8, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;->audioTrack:Landroid/media/AudioTrack;

    .line 248
    invoke-virtual {v7, v8}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->getRemainingHardwareBufferInShort(Landroid/media/AudioTrack;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 245
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "msg":Ljava/lang/String;
    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->frameCount:I
    invoke-static {v3}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$600(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    move-result v3

    iput v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;->lastFrameCount:I

    .line 252
    iget-object v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;->this$0:Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;

    # getter for: Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->fillSilenceInShort:I
    invoke-static {v3}, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;->access$1100(Lcom/liquable/nemo/voip/audio/PcmAudioPlayer;)I

    move-result v3

    iput v3, p0, Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$Reporter;->lastFillSilenceInShort:I

    .line 253
    return-void
.end method
