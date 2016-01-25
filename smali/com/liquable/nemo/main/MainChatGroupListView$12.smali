.class synthetic Lcom/liquable/nemo/main/MainChatGroupListView$12;
.super Ljava/lang/Object;
.source "MainChatGroupListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/main/MainChatGroupListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$liquable$nemo$chat$model$MessageEvent:[I

.field static final synthetic $SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lcom/liquable/nemo/chat/model/MessageEvent;->values()[Lcom/liquable/nemo/chat/model/MessageEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/liquable/nemo/main/MainChatGroupListView$12;->$SwitchMap$com$liquable$nemo$chat$model$MessageEvent:[I

    :try_start_0
    sget-object v0, Lcom/liquable/nemo/main/MainChatGroupListView$12;->$SwitchMap$com$liquable$nemo$chat$model$MessageEvent:[I

    sget-object v1, Lcom/liquable/nemo/chat/model/MessageEvent;->UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/model/MessageEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    :goto_0
    invoke-static {}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->values()[Lcom/liquable/nemo/group/model/ChatGroupEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/liquable/nemo/main/MainChatGroupListView$12;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    :try_start_1
    sget-object v0, Lcom/liquable/nemo/main/MainChatGroupListView$12;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ICON_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/liquable/nemo/main/MainChatGroupListView$12;->$SwitchMap$com$liquable$nemo$group$model$ChatGroupEvent:[I

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroupEvent;->READ_COUNT_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    .line 121
    :catch_2
    move-exception v0

    goto :goto_0
.end method
