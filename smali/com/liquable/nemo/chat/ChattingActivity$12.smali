.class Lcom/liquable/nemo/chat/ChattingActivity$12;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/MediaWidget$OnActionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->initMediaWidget()V
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
    .line 788
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClick(Lcom/liquable/nemo/chat/widget/MediaWidget$Action;)V
    .locals 6
    .param p1, "action"    # Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .prologue
    const/4 v5, 0x0

    .line 791
    sget-object v0, Lcom/liquable/nemo/chat/ChattingActivity$47;->$SwitchMap$com$liquable$nemo$chat$widget$MediaWidget$Action:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 849
    :goto_0
    return-void

    .line 793
    :pswitch_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    goto :goto_0

    .line 796
    :pswitch_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 797
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 798
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v2

    .line 796
    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->openCamera(Landroid/app/Activity;Lcom/liquable/nemo/group/model/ChatGroup;Z)V
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1000(Landroid/app/Activity;Lcom/liquable/nemo/group/model/ChatGroup;Z)V

    .line 799
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/status/model/CameraStatus;

    invoke-direct {v2}, Lcom/liquable/nemo/status/model/CameraStatus;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendChatStatus(Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;)V

    goto :goto_0

    .line 803
    :pswitch_2
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$600(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/ImageLoader;->clearCache()V

    .line 804
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 806
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 811
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v4}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    .line 804
    invoke-static {v1, v2, v5, v3, v4}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->fromChat(Landroid/content/Context;ZZZLcom/liquable/nemo/group/model/ChatGroup;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_PHOTO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 812
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v2

    .line 804
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 815
    :pswitch_3
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_VIDEO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 816
    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v1

    .line 815
    invoke-static {v0, v1}, Lcom/liquable/nemo/util/ExternalIntents;->intentPickVideo(Landroid/app/Activity;I)V

    goto :goto_0

    .line 819
    :pswitch_4
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    new-instance v2, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 822
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    const-string/jumbo v4, "media_bar"

    invoke-direct {v2, v3, v0, v4}, Lcom/liquable/nemo/voip/DialActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/friend/model/Account;Ljava/lang/String;)V

    .line 820
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    new-instance v1, Lcom/liquable/nemo/voip/ChooseReceiverActivity$CreateIntent;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 827
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/voip/ChooseReceiverActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 825
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 831
    :pswitch_5
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_AUDIO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 832
    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v1

    .line 831
    invoke-static {v0, v1}, Lcom/liquable/nemo/util/ExternalIntents;->intentPickAudio(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 835
    :pswitch_6
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-static {v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->createIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->PICK_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 837
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v2

    .line 835
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 840
    :pswitch_7
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->toggleVoiceRecorderWidget()V

    goto/16 :goto_0

    .line 843
    :pswitch_8
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->GET_LOCATION:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 844
    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v1

    .line 843
    invoke-static {v0, v1}, Lcom/liquable/nemo/map/LocationHelper;->intentLocationPicker(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
