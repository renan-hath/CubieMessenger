.class Lcom/liquable/nemo/chat/WidgetManager$1;
.super Ljava/lang/Object;
.source "WidgetManager.java"

# interfaces
.implements Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/WidgetManager;
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
    .line 62
    iput-object p1, p0, Lcom/liquable/nemo/chat/WidgetManager$1;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWidgetClose(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 0
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 66
    return-void
.end method

.method public onWidgetOpen(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 0
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 71
    return-void
.end method
