.class synthetic Lcom/liquable/nemo/chat/widget/EmojiWidget$10;
.super Ljava/lang/Object;
.source "EmojiWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/widget/EmojiWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$liquable$nemo$chat$EmojiUtil$EmojiCategory:[I

.field static final synthetic $SwitchMap$com$liquable$nemo$chat$EmojiUtil$EmojiType:[I

.field static final synthetic $SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 282
    invoke-static {}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->values()[Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I

    :try_start_0
    sget-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$model$ExtraFileTransferEvent:[I

    sget-object v1, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    .line 250
    :goto_0
    invoke-static {}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->values()[Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$EmojiUtil$EmojiType:[I

    :try_start_1
    sget-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$EmojiUtil$EmojiType:[I

    sget-object v1, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->FACE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$EmojiUtil$EmojiType:[I

    sget-object v1, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->LINE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    :goto_2
    invoke-static {}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->values()[Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$EmojiUtil$EmojiCategory:[I

    :try_start_3
    sget-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$EmojiUtil$EmojiCategory:[I

    sget-object v1, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/liquable/nemo/chat/widget/EmojiWidget$10;->$SwitchMap$com$liquable$nemo$chat$EmojiUtil$EmojiCategory:[I

    sget-object v1, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->CUSTOM_STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 250
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    .line 282
    :catch_4
    move-exception v0

    goto :goto_0
.end method
