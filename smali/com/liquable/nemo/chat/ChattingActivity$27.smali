.class Lcom/liquable/nemo/chat/ChattingActivity$27;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWidgetClose(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 2
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 1467
    sget-object v0, Lcom/liquable/nemo/chat/ChattingActivity$47;->$SwitchMap$com$liquable$nemo$chat$widget$ChattingWidget$Widget:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1489
    :goto_0
    return-void

    .line 1469
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    goto :goto_0

    .line 1472
    :pswitch_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1300(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 1473
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 1474
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->youtubeHideAnimation()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$2200(Lcom/liquable/nemo/chat/ChattingActivity;)V

    goto :goto_0

    .line 1477
    :pswitch_2
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x0

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->setMsgLayoutBottomMargin(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$2300(Lcom/liquable/nemo/chat/ChattingActivity;I)V

    goto :goto_0

    .line 1484
    :pswitch_3
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onWidgetOpen(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V
    .locals 2
    .param p1, "widgetType"    # Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .prologue
    .line 1493
    sget-object v0, Lcom/liquable/nemo/chat/ChattingActivity$47;->$SwitchMap$com$liquable$nemo$chat$widget$ChattingWidget$Widget:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1515
    :goto_0
    return-void

    .line 1495
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 1496
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->showCaseCustomStickerButton()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$2400(Lcom/liquable/nemo/chat/ChattingActivity;)V

    goto :goto_0

    .line 1499
    :pswitch_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 1500
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->youtubeShowAnimation()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$2500(Lcom/liquable/nemo/chat/ChattingActivity;)V

    goto :goto_0

    .line 1503
    :pswitch_2
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/16 v1, 0x30

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->setMsgLayoutBottomMargin(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$2300(Lcom/liquable/nemo/chat/ChattingActivity;I)V

    goto :goto_0

    .line 1510
    :pswitch_3
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$27;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1493
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
