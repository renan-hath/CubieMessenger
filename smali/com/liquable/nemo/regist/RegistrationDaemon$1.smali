.class Lcom/liquable/nemo/regist/RegistrationDaemon$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "RegistrationDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/RegistrationDaemon;->createRobot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/RegistrationDaemon;

.field final synthetic val$robotGroup:Lcom/liquable/nemo/group/model/ChatGroup;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/RegistrationDaemon;Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/RegistrationDaemon;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->this$0:Lcom/liquable/nemo/regist/RegistrationDaemon;

    iput-object p3, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->val$robotGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 123
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x17f

    .line 127
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->this$0:Lcom/liquable/nemo/regist/RegistrationDaemon;

    # getter for: Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/liquable/nemo/regist/RegistrationDaemon;->access$000(Lcom/liquable/nemo/regist/RegistrationDaemon;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0450

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (titter)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/message/model/TextMessage;->createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/TextMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->val$robotGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->processRobotMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 131
    const-string/jumbo v0, "f629e9e5-03fa-45e2-8cd5-7d74df2df247_s.jpg"

    const-string/jumbo v1, "f629e9e5-03fa-45e2-8cd5-7d74df2df247.jpg"

    const-wide/32 v2, 0xacef

    const/16 v4, 0x100

    const/16 v6, 0x1f4

    const/16 v7, 0x2ee

    iget-object v8, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->this$0:Lcom/liquable/nemo/regist/RegistrationDaemon;

    .line 138
    # getter for: Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/liquable/nemo/regist/RegistrationDaemon;->access$000(Lcom/liquable/nemo/regist/RegistrationDaemon;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d0451

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "s3.amazonaws.com"

    .line 131
    invoke-static/range {v0 .. v9}, Lcom/liquable/nemo/message/model/PictureMessage;->create(Ljava/lang/String;Ljava/lang/String;JIIIILjava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/PictureMessage;

    move-result-object v11

    .line 140
    .local v11, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->val$robotGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, v11, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->processRobotMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 143
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    const-string/jumbo v1, "chichi4_cheers"

    invoke-static {v1}, Lcom/liquable/nemo/message/model/StickerMessage;->createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/StickerMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->val$robotGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->processRobotMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 147
    const-string/jumbo v0, "2131931c-f173-435f-809b-ac2b4a9db6a1_s.jpg"

    const-string/jumbo v1, "2131931c-f173-435f-809b-ac2b4a9db6a1.jpg"

    const-wide/32 v2, 0xd8ab

    const/16 v4, 0xfb

    const/16 v6, 0x210

    const/16 v7, 0x324

    iget-object v8, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->this$0:Lcom/liquable/nemo/regist/RegistrationDaemon;

    .line 154
    # getter for: Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/liquable/nemo/regist/RegistrationDaemon;->access$000(Lcom/liquable/nemo/regist/RegistrationDaemon;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d0452

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "s3.amazonaws.com"

    .line 147
    invoke-static/range {v0 .. v9}, Lcom/liquable/nemo/message/model/PictureMessage;->create(Ljava/lang/String;Ljava/lang/String;JIIIILjava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/PictureMessage;

    move-result-object v12

    .line 156
    .local v12, "pictureMessageWithEffect":Lcom/liquable/nemo/message/model/PictureMessage;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->val$robotGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, v12, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->processRobotMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 159
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    const-string/jumbo v1, "Supercats: Episode 1 \u2014 The Funniest Cat Video!"

    const-string/jumbo v2, "wf_IIbT8HGk"

    const-string/jumbo v3, "http://www.youtube.com/watch?v=wf_IIbT8HGk"

    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/message/model/YoutubeMessage;->createBySender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/YoutubeMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->val$robotGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->processRobotMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 165
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->this$0:Lcom/liquable/nemo/regist/RegistrationDaemon;

    # getter for: Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/liquable/nemo/regist/RegistrationDaemon;->access$000(Lcom/liquable/nemo/regist/RegistrationDaemon;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0453

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/message/model/TextMessage;->createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/TextMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->val$robotGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->processRobotMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 170
    :try_start_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    const-string/jumbo v1, "secret.jpg"

    const-wide/16 v2, 0x3d40

    iget-object v4, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->this$0:Lcom/liquable/nemo/regist/RegistrationDaemon;

    .line 172
    # getter for: Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/liquable/nemo/regist/RegistrationDaemon;->access$000(Lcom/liquable/nemo/regist/RegistrationDaemon;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0454

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "s3.amazonaws.com"

    .line 170
    invoke-static {v1, v2, v3, v4, v5}, Lcom/liquable/nemo/message/model/SecretPictureMessage;->createBySender(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/SecretPictureMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->val$robotGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->processRobotMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    const-string/jumbo v1, "rageface_lol"

    invoke-static {v1}, Lcom/liquable/nemo/message/model/StickerMessage;->createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/StickerMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->val$robotGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->processRobotMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 183
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->this$0:Lcom/liquable/nemo/regist/RegistrationDaemon;

    # getter for: Lcom/liquable/nemo/regist/RegistrationDaemon;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/liquable/nemo/regist/RegistrationDaemon;->access$000(Lcom/liquable/nemo/regist/RegistrationDaemon;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0455

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (hi1)(friends1)(friend1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/message/model/TextMessage;->createBySender(Ljava/lang/String;)Lcom/liquable/nemo/message/model/TextMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->val$robotGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->processRobotMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 175
    :catch_0
    move-exception v10

    .line 176
    .local v10, "e":Ljava/security/GeneralSecurityException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/regist/RegistrationDaemon$1;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 193
    return-void
.end method
