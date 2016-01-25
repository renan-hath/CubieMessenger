.class Lcom/liquable/nemo/chat/ChattingActivity$16$1;
.super Lcom/liquable/nemo/util/SendTextAsyncTask;
.source "ChattingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity$16;->onSendBtnClicked(Ljava/io/File;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/SendTextAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/ChattingActivity$16;

.field final synthetic val$finalDuration:J

.field final synthetic val$voiceFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity$16;Ljava/io/File;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/ChattingActivity$16;

    .prologue
    .line 959
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$16;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->val$voiceFile:Ljava/io/File;

    iput-wide p3, p0, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->val$finalDuration:J

    invoke-direct {p0}, Lcom/liquable/nemo/util/SendTextAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 962
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$16;

    iget-object v1, v1, Lcom/liquable/nemo/chat/ChattingActivity$16;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendVoiceMessage(I)V

    .line 963
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/liquable/nemo/group/model/ChatGroup;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$16;

    iget-object v3, v3, Lcom/liquable/nemo/chat/ChattingActivity$16;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->val$voiceFile:Ljava/io/File;

    iget-wide v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->val$finalDuration:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendVoiceMessages(Ljava/util/List;Ljava/io/File;J)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 959
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 972
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$16;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$16;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->removeDialog(I)V

    .line 973
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->val$voiceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 974
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 959
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$16;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$16;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->showDialog(I)V

    .line 979
    return-void
.end method
