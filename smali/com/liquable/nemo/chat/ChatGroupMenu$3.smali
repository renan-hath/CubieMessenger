.class Lcom/liquable/nemo/chat/ChatGroupMenu$3;
.super Landroid/os/AsyncTask;
.source "ChatGroupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChatGroupMenu;->exportMessages(Lcom/liquable/nemo/group/model/ChatGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

.field final synthetic val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChatGroupMenu;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChatGroupMenu;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$3;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$3;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 118
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->messageExportManager:Lcom/liquable/nemo/message/export/MessageExportManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$3;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChatGroupMenu;->access$000(Lcom/liquable/nemo/chat/ChatGroupMenu;)Lcom/liquable/nemo/chat/ChattingActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$3;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/message/export/MessageExportManager;->exportChatGroupMessage(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupMenu$3;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 6
    .param p1, "result"    # Ljava/io/File;

    .prologue
    .line 123
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$3;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChatGroupMenu;->access$000(Lcom/liquable/nemo/chat/ChatGroupMenu;)Lcom/liquable/nemo/chat/ChattingActivity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->removeDialog(I)V

    .line 125
    invoke-static {p1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$3;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChatGroupMenu;->access$000(Lcom/liquable/nemo/chat/ChatGroupMenu;)Lcom/liquable/nemo/chat/ChattingActivity;

    move-result-object v2

    const v3, 0x7f0d01c6

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 140
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    invoke-interface {v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->exportChatGroupMessages()V

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 133
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "emailIntent":Landroid/content/Intent;
    const-string/jumbo v2, "application/zip"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v2, "android.intent.extra.SUBJECT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cubie backup - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$3;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$3;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChatGroupMenu;->access$000(Lcom/liquable/nemo/chat/ChatGroupMenu;)Lcom/liquable/nemo/chat/ChattingActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupMenu$3;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$3;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChatGroupMenu;->access$000(Lcom/liquable/nemo/chat/ChatGroupMenu;)Lcom/liquable/nemo/chat/ChattingActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->showDialog(I)V

    .line 145
    return-void
.end method
