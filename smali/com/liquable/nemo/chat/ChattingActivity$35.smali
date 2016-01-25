.class Lcom/liquable/nemo/chat/ChattingActivity$35;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/facebook/FacebookSession$IFacebookPublishSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->postFileToFacebook(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$from:Ljava/lang/String;

.field final synthetic val$mediaFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 2112
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$35;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$35;->val$mediaFile:Ljava/io/File;

    iput-object p3, p0, Lcom/liquable/nemo/chat/ChattingActivity$35;->val$from:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/chat/ChattingActivity$35;->val$comment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 2115
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$35;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v1, 0x7f0d01bb

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->showToast(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3500(Lcom/liquable/nemo/chat/ChattingActivity;I)V

    .line 2120
    return-void
.end method

.method public onOpened(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;)V
    .locals 4
    .param p1, "facebookRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$35;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$35;->val$mediaFile:Ljava/io/File;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$35;->val$from:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$35;->val$comment:Ljava/lang/String;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->uploadImageToFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3600(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    return-void
.end method
