.class synthetic Lcom/liquable/nemo/chat/WidgetManager$14;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/WidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$liquable$nemo$chat$widget$ChattingWidget$Widget:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 361
    invoke-static {}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->values()[Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/liquable/nemo/chat/WidgetManager$14;->$SwitchMap$com$liquable$nemo$chat$widget$ChattingWidget$Widget:[I

    :try_start_0
    sget-object v0, Lcom/liquable/nemo/chat/WidgetManager$14;->$SwitchMap$com$liquable$nemo$chat$widget$ChattingWidget$Widget:[I

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
