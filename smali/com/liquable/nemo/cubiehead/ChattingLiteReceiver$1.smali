.class synthetic Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;
.super Ljava/lang/Object;
.source "ChattingLiteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$liquable$nemo$chat$model$MediaMessageTransferEvent:[I

.field static final synthetic $SwitchMap$com$liquable$nemo$chat$model$MessageEvent:[I

.field static final synthetic $SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 123
    invoke-static {}, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->values()[Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$chat$model$MediaMessageTransferEvent:[I

    :try_start_0
    sget-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$chat$model$MediaMessageTransferEvent:[I

    sget-object v1, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$chat$model$MediaMessageTransferEvent:[I

    sget-object v1, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->FAIL:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$chat$model$MediaMessageTransferEvent:[I

    sget-object v1, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->PROGRESS:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    .line 101
    :goto_2
    invoke-static {}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->values()[Lcom/liquable/nemo/group/model/ChatGroupEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    :try_start_3
    sget-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->HISTORY_CLEAR:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->DELETE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ICON_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->TITLE_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->READ_COUNT_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    .line 81
    :goto_7
    invoke-static {}, Lcom/liquable/nemo/chat/model/MessageEvent;->values()[Lcom/liquable/nemo/chat/model/MessageEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$chat$model$MessageEvent:[I

    :try_start_8
    sget-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$chat$model$MessageEvent:[I

    sget-object v1, Lcom/liquable/nemo/chat/model/MessageEvent;->ADD:Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/model/MessageEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$chat$model$MessageEvent:[I

    sget-object v1, Lcom/liquable/nemo/chat/model/MessageEvent;->UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/model/MessageEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/liquable/nemo/cubiehead/ChattingLiteReceiver$1;->$SwitchMap$com$liquable$nemo$chat$model$MessageEvent:[I

    sget-object v1, Lcom/liquable/nemo/chat/model/MessageEvent;->RESEND:Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/model/MessageEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    .line 101
    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    .line 123
    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
