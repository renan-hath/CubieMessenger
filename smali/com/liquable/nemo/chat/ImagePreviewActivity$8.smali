.class Lcom/liquable/nemo/chat/ImagePreviewActivity$8;
.super Ljava/lang/Object;
.source "ImagePreviewActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImagePreviewActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$8;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWidgetClose(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 2
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 617
    sget-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$10;->$SwitchMap$com$liquable$nemo$chat$widget$ChattingWidget$Widget:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 625
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$8;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    const/4 v1, 0x0

    # invokes: Lcom/liquable/nemo/chat/ImagePreviewActivity;->updateImage(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$300(Lcom/liquable/nemo/chat/ImagePreviewActivity;Z)V

    .line 626
    return-void

    .line 619
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$8;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 620
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$8;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    # getter for: Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$600(Lcom/liquable/nemo/chat/ImagePreviewActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$8;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    # getter for: Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$600(Lcom/liquable/nemo/chat/ImagePreviewActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->open(Z)V

    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onWidgetOpen(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 2
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 630
    sget-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$10;->$SwitchMap$com$liquable$nemo$chat$widget$ChattingWidget$Widget:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 638
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$8;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    const/4 v1, 0x0

    # invokes: Lcom/liquable/nemo/chat/ImagePreviewActivity;->updateImage(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$300(Lcom/liquable/nemo/chat/ImagePreviewActivity;Z)V

    .line 639
    return-void

    .line 632
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$8;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 633
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity$8;->this$0:Lcom/liquable/nemo/chat/ImagePreviewActivity;

    # getter for: Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->access$600(Lcom/liquable/nemo/chat/ImagePreviewActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->close()V

    goto :goto_0

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
