.class Lcom/liquable/nemo/cubiehead/ChattingLite$22;
.super Landroid/os/AsyncTask;
.source "ChattingLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;->markAllMessageAsRead(Lcom/liquable/nemo/group/model/ChatGroup;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

.field final synthetic val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$22;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    iput-object p2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$22;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 728
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite$22;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 731
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$22;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->markMessagesAsReaded(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 732
    const/4 v0, 0x0

    return-object v0
.end method
