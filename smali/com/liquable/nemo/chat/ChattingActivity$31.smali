.class Lcom/liquable/nemo/chat/ChattingActivity$31;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->onMessageLongClick(Lcom/liquable/nemo/message/model/DomainMessage;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;

.field final synthetic val$actions:Ljava/util/List;

.field final synthetic val$friendName:Ljava/lang/String;

.field final synthetic val$message:Lcom/liquable/nemo/message/model/DomainMessage;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/util/List;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$actions:Ljava/util/List;

    iput-object p3, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    iput-object p4, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$friendName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sharePaintMessageToFacebook(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 1848
    move-object v1, p1

    check-cast v1, Lcom/liquable/nemo/message/model/PaintMessage;

    .line 1849
    .local v1, "paintMessage":Lcom/liquable/nemo/message/model/PaintMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/PaintMessage;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 1850
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 1851
    .local v0, "mediaFile":Ljava/io/File;
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->popupShareToFacebookDialog(Ljava/io/File;)V
    invoke-static {v2, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3100(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/io/File;)V

    .line 1852
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v9, 0x0

    .line 1745
    sget-object v7, Lcom/liquable/nemo/chat/ChattingActivity$47;->$SwitchMap$com$liquable$nemo$chat$ChattingActivity$LongPressAction:[I

    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$actions:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-virtual {v6}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 1845
    :cond_0
    :goto_0
    return-void

    .line 1747
    :pswitch_0
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    instance-of v6, v6, Lcom/liquable/nemo/message/model/IMediaMessage;

    if-eqz v6, :cond_1

    .line 1748
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    check-cast v2, Lcom/liquable/nemo/message/model/IMediaMessage;

    .line 1750
    .local v2, "mediaMessage":Lcom/liquable/nemo/message/model/IMediaMessage;
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-interface {v2}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAllLocalKeyPaths()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/storage/NemoFileService;->isAllLocalKeyPathFileExist(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1751
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v7, 0x7f0d0357

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 1753
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1757
    .end local v2    # "mediaMessage":Lcom/liquable/nemo/message/model/IMediaMessage;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const-class v7, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1759
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "MSG_UID"

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v7}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    const-string/jumbo v6, "MSG_FROM"

    const-string/jumbo v7, "message_long_click"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1761
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v6, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1764
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/chat/model/ChattingManager;->deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 1765
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v8, 0x7f0d035a

    .line 1766
    invoke-virtual {v7, v8}, Lcom/liquable/nemo/chat/ChattingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1765
    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 1767
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1770
    :pswitch_2
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    .line 1771
    invoke-virtual {v7}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$friendName:Ljava/lang/String;

    sget-object v9, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->dialog_long_click:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    .line 1770
    invoke-static {v6, v7, v8, v9}, Lcom/liquable/nemo/group/AddFriendDialog;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 1777
    :pswitch_3
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v6}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v6

    sget-object v7, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$friendName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->reply(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1780
    :pswitch_4
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    const-string/jumbo v8, "message_long_click"

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->pasteToDrawingBoard(Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/liquable/nemo/chat/ChattingActivity;->access$2900(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1783
    :pswitch_5
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->editPhoto(Lcom/liquable/nemo/message/model/DomainMessage;)V
    invoke-static {v6, v7}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3000(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto/16 :goto_0

    .line 1786
    :pswitch_6
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->saveCustomSticker(Lcom/liquable/nemo/message/model/DomainMessage;)V
    invoke-static {v6, v7}, Lcom/liquable/nemo/chat/ChattingActivity;->access$2600(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto/16 :goto_0

    .line 1789
    :pswitch_7
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    invoke-interface {v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->savePaintInChattingActivity()V

    .line 1790
    new-instance v6, Lcom/liquable/nemo/chat/ChattingActivity$31$1;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/ChattingActivity$31$1;-><init>(Lcom/liquable/nemo/chat/ChattingActivity$31;)V

    new-array v7, v9, [Ljava/lang/Void;

    .line 1811
    invoke-virtual {v6, v7}, Lcom/liquable/nemo/chat/ChattingActivity$31$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1816
    :pswitch_8
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const-string/jumbo v7, "clipboard"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/chat/ChattingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1818
    .local v0, "clipboardManager":Landroid/text/ClipboardManager;
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    instance-of v6, v6, Lcom/liquable/nemo/message/model/TextMessage;

    if-eqz v6, :cond_2

    .line 1819
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    check-cast v6, Lcom/liquable/nemo/message/model/TextMessage;

    invoke-virtual {v6}, Lcom/liquable/nemo/message/model/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1820
    :cond_2
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    instance-of v6, v6, Lcom/liquable/nemo/message/model/LocationMessage;

    if-eqz v6, :cond_0

    .line 1821
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    check-cast v6, Lcom/liquable/nemo/message/model/LocationMessage;

    invoke-virtual {v6}, Lcom/liquable/nemo/message/model/LocationMessage;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1825
    .end local v0    # "clipboardManager":Landroid/text/ClipboardManager;
    :pswitch_9
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1826
    .local v4, "shareIntent":Landroid/content/Intent;
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    check-cast v6, Lcom/liquable/nemo/message/model/PaintMessage;

    invoke-virtual {v7, v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->createSharablePaintFile(Lcom/liquable/nemo/message/model/PaintMessage;)Ljava/io/File;

    move-result-object v5

    .line 1827
    .local v5, "tempFile":Ljava/io/File;
    if-nez v5, :cond_3

    .line 1828
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v8, 0x7f0d01c6

    .line 1829
    invoke-virtual {v7, v8}, Lcom/liquable/nemo/chat/ChattingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1828
    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 1830
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1834
    :cond_3
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 1835
    .local v3, "phototUri":Landroid/net/Uri;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1836
    const-string/jumbo v6, "image/*"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1837
    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1838
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v7, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v8, 0x7f0d0486

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/chat/ChattingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Lcom/liquable/nemo/chat/ChattingRequestCode;->INTENT_SHARE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 1839
    invoke-virtual {v8}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v8

    .line 1838
    invoke-virtual {v6, v7, v8}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1842
    .end local v3    # "phototUri":Landroid/net/Uri;
    .end local v4    # "shareIntent":Landroid/content/Intent;
    .end local v5    # "tempFile":Ljava/io/File;
    :pswitch_a
    iget-object v6, p0, Lcom/liquable/nemo/chat/ChattingActivity$31;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-direct {p0, v6}, Lcom/liquable/nemo/chat/ChattingActivity$31;->sharePaintMessageToFacebook(Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto/16 :goto_0

    .line 1745
    nop

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
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
