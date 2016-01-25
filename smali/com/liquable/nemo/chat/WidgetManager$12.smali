.class Lcom/liquable/nemo/chat/WidgetManager$12;
.super Ljava/lang/Object;
.source "WidgetManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/WidgetManager;->initVoiceRecordWindow(Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/WidgetManager;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/WidgetManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/WidgetManager;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/liquable/nemo/chat/WidgetManager$12;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager$12;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->VOICE_RECORDER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 326
    return-void
.end method
