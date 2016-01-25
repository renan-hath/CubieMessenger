.class Lcom/liquable/nemo/chat/ChattingActivity$16;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/VoiceRecorderWidget$OnSendBtnClicked;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->initVoiceRecordWindow()V
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
    .line 955
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$16;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendBtnClicked(Ljava/io/File;J)V
    .locals 2
    .param p1, "voiceFile"    # Ljava/io/File;
    .param p2, "finalDuration"    # J

    .prologue
    .line 959
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$16$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/liquable/nemo/chat/ChattingActivity$16$1;-><init>(Lcom/liquable/nemo/chat/ChattingActivity$16;Ljava/io/File;J)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 983
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity$16$1;->execute([Ljava/lang/Object;)V

    .line 984
    return-void
.end method
