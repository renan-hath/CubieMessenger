.class final Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;
.super Ljava/lang/Object;
.source "VoipClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/client/VoipClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadFrameTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/client/VoipClient;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/voip/client/VoipClient;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/voip/client/VoipClient;Lcom/liquable/nemo/voip/client/VoipClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/voip/client/VoipClient;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/client/VoipClient$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;-><init>(Lcom/liquable/nemo/voip/client/VoipClient;)V

    return-void
.end method

.method private doReading(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 107
    :goto_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->socketRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v3}, Lcom/liquable/nemo/voip/client/VoipClient;->access$000(Lcom/liquable/nemo/voip/client/VoipClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 111
    :try_start_0
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v1

    .line 112
    .local v1, "frame":Lcom/liquable/nemo/voip/frame/Voip$Frame;
    if-nez v1, :cond_1

    .line 113
    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/client/VoipClient;->access$200()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "voip socket#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->clientId:J
    invoke-static {v5}, Lcom/liquable/nemo/voip/client/VoipClient;->access$100(Lcom/liquable/nemo/voip/client/VoipClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " disconnect from server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 139
    .end local v1    # "frame":Lcom/liquable/nemo/voip/frame/Voip$Frame;
    :cond_0
    :goto_1
    return-void

    .line 116
    .restart local v1    # "frame":Lcom/liquable/nemo/voip/frame/Voip$Frame;
    :cond_1
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hasPacket()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getPacket()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    .line 120
    .local v2, "packet":[B
    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->receivedVoicePacketListener:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;
    invoke-static {v3}, Lcom/liquable/nemo/voip/client/VoipClient;->access$500(Lcom/liquable/nemo/voip/client/VoipClient;)Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;->onVoicePacket([B)V

    .line 121
    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # operator++ for: Lcom/liquable/nemo/voip/client/VoipClient;->readVoicePacketCount:I
    invoke-static {v3}, Lcom/liquable/nemo/voip/client/VoipClient;->access$608(Lcom/liquable/nemo/voip/client/VoipClient;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1    # "frame":Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .end local v2    # "packet":[B
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/client/VoipClient;->access$200()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "voip socket#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->clientId:J
    invoke-static {v5}, Lcom/liquable/nemo/voip/client/VoipClient;->access$100(Lcom/liquable/nemo/voip/client/VoipClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " read fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 134
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", force stop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "frame":Lcom/liquable/nemo/voip/frame/Voip$Frame;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hasCommand()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # invokes: Lcom/liquable/nemo/voip/client/VoipClient;->doCommand(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V
    invoke-static {v3, v1}, Lcom/liquable/nemo/voip/client/VoipClient;->access$700(Lcom/liquable/nemo/voip/client/VoipClient;Lcom/liquable/nemo/voip/frame/Voip$Frame;)V

    goto/16 :goto_0

    .line 125
    :cond_3
    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/client/VoipClient;->access$200()Lcom/liquable/nemo/util/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "voip socket#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->clientId:J
    invoke-static {v5}, Lcom/liquable/nemo/voip/client/VoipClient;->access$100(Lcom/liquable/nemo/voip/client/VoipClient;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " receive Unknown frame:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v3}, Lcom/liquable/nemo/voip/client/VoipClient;->access$400(Lcom/liquable/nemo/voip/client/VoipClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v4, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v5, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->UNEXPECTED_CLIENT_FRAME:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v4, v5}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v3, v4}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClient;->socketRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v3}, Lcom/liquable/nemo/voip/client/VoipClient;->access$000(Lcom/liquable/nemo/voip/client/VoipClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .local v2, "socket":Ljava/net/Socket;
    if-nez v2, :cond_0

    .line 158
    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # invokes: Lcom/liquable/nemo/voip/client/VoipClient;->closeSocketWithEvent()V
    invoke-static {v3}, Lcom/liquable/nemo/voip/client/VoipClient;->access$300(Lcom/liquable/nemo/voip/client/VoipClient;)V

    .line 160
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v1, 0x0

    .line 151
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 156
    :try_start_2
    invoke-direct {p0, v1}, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->doReading(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # invokes: Lcom/liquable/nemo/voip/client/VoipClient;->closeSocketWithEvent()V
    invoke-static {v3}, Lcom/liquable/nemo/voip/client/VoipClient;->access$300(Lcom/liquable/nemo/voip/client/VoipClient;)V

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # invokes: Lcom/liquable/nemo/voip/client/VoipClient;->closeSocketWithEvent()V
    invoke-static {v3}, Lcom/liquable/nemo/voip/client/VoipClient;->access$300(Lcom/liquable/nemo/voip/client/VoipClient;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClient;

    # invokes: Lcom/liquable/nemo/voip/client/VoipClient;->closeSocketWithEvent()V
    invoke-static {v4}, Lcom/liquable/nemo/voip/client/VoipClient;->access$300(Lcom/liquable/nemo/voip/client/VoipClient;)V

    throw v3
.end method
