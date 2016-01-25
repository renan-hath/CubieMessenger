.class Lcom/liquable/nemo/chat/WidgetManager$11;
.super Ljava/lang/Object;
.source "WidgetManager.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/PaintWidget$OnSwitchWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/WidgetManager;->initPaintWidget(Landroid/view/View$OnClickListener;Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;Ljava/lang/Runnable;)V
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
    .line 304
    iput-object p1, p0, Lcom/liquable/nemo/chat/WidgetManager$11;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 1
    .param p1, "widget"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager$11;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 309
    return-void
.end method
