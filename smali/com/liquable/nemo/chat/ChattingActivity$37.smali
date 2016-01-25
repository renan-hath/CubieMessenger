.class Lcom/liquable/nemo/chat/ChattingActivity$37;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->scheduleSecretMessageTimer()V
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
    .line 2197
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$37;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2200
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$37;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1300(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingAdapter;->updateSecretMessages()Z

    move-result v0

    .line 2201
    .local v0, "updated":Z
    if-eqz v0, :cond_0

    .line 2202
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastSecretMessageUpdate()V

    .line 2203
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$37;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1300(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 2205
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$37;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v2, 0x0

    # setter for: Lcom/liquable/nemo/chat/ChattingActivity;->secretMessageTimerScheduled:Z
    invoke-static {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3702(Lcom/liquable/nemo/chat/ChattingActivity;Z)Z

    .line 2206
    return-void
.end method
