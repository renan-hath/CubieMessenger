.class Lcom/liquable/nemo/chat/ChattingActivity$45;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->watchYoutube(Lcom/liquable/nemo/message/model/YoutubeMessage;)V
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
    .line 2620
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$45;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$45;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1300(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 2624
    return-void
.end method
